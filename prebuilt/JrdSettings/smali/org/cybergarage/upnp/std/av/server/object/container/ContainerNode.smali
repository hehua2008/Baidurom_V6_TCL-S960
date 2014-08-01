.class public Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
.super Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
.source "ContainerNode.java"


# static fields
.field public static final CHILD_COUNT:Ljava/lang/String; = "childCount"

.field public static final NAME:Ljava/lang/String; = "container"

.field public static final OBJECT_CONTAINER:Ljava/lang/String; = "object.container"

.field public static final SEARCHABLE:Ljava/lang/String; = "searchable"


# instance fields
.field private updateId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;-><init>()V

    .line 37
    iput v1, p0, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->updateId:I

    .line 44
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setID(I)V

    .line 45
    const-string v0, "container"

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->setSearchable(I)V

    .line 47
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->setChildCount(I)V

    .line 48
    const-string v0, "object.container"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setUPnPClass(Ljava/lang/String;)V

    .line 49
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setWriteStatus(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setRestricted(I)V

    .line 51
    return-void
.end method

.method public static final isContainerNode(Lorg/cybergarage/xml/Node;)Z
    .locals 2
    .parameter "node"

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 61
    const/4 v1, 0x0

    .line 62
    :goto_0
    return v1

    :cond_0
    const-string v1, "container"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 124
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setParentID(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNContentNodes()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->setChildCount(I)V

    .line 126
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setContentDirectory(Lorg/cybergarage/upnp/std/av/server/ContentDirectory;)V

    .line 127
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->updateId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->updateId:I

    .line 128
    return-void
.end method

.method public findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 149
    if-nez p1, :cond_1

    move-object p0, v5

    .line 168
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 152
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, nodeID:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 156
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNContentNodes()I

    move-result v3

    .line 157
    .local v3, nodeCnt:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 158
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    .line 159
    .local v0, cnode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object p0, v0

    .line 160
    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isContainerNode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 162
    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    .end local v0           #cnode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v1

    .line 163
    .local v1, fnode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    if-eqz v1, :cond_3

    move-object p0, v1

    .line 164
    goto :goto_0

    .line 157
    .end local v1           #fnode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move-object p0, v5

    .line 168
    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 182
    const-string v0, "childCount"

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->getAttributeIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .locals 1
    .parameter "index"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    return-object v0
.end method

.method public getContentNode(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .locals 1
    .parameter "name"

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    return-object v0
.end method

.method public getNContentNodes()I
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v0

    return v0
.end method

.method public getSearchable()I
    .locals 1

    .prologue
    .line 196
    const-string v0, "searchable"

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->getAttributeIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUpdateId()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->updateId:I

    return v0
.end method

.method public hasContentNodes()Z
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->hasNodes()Z

    move-result v0

    return v0
.end method

.method public incUpdateId()V
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->updateId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->updateId:I

    .line 142
    return-void
.end method

.method public outputResources(Ljava/io/PrintWriter;)V
    .locals 0
    .parameter "ps"

    .prologue
    .line 91
    return-void
.end method

.method public removeAllContentNodes()V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->removeAllNodes()V

    .line 119
    return-void
.end method

.method public removeContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)Z
    .locals 2
    .parameter "node"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->removeNode(Lorg/cybergarage/xml/Node;)Z

    move-result v0

    .line 133
    .local v0, ret:Z
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNContentNodes()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->setChildCount(I)V

    .line 134
    iget v1, p0, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->updateId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->updateId:I

    .line 135
    return v0
.end method

.method public set(Lorg/cybergarage/xml/Node;)V
    .locals 8
    .parameter "node"

    .prologue
    const/4 v7, 0x1

    .line 72
    invoke-virtual {p1}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v4

    .line 73
    .local v4, nNode:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 74
    invoke-virtual {p1, v2}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 75
    .local v1, cnode:Lorg/cybergarage/xml/Node;
    invoke-static {v1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->isContainerNode(Lorg/cybergarage/xml/Node;)Z

    move-result v5

    if-ne v5, v7, :cond_1

    .line 73
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_1
    invoke-static {v1}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->isItemNode(Lorg/cybergarage/xml/Node;)Z

    move-result v5

    if-eq v5, v7, :cond_0

    .line 79
    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 83
    .end local v1           #cnode:Lorg/cybergarage/xml/Node;
    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/xml/Node;->getNAttributes()I

    move-result v3

    .line 84
    .local v3, nAttr:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    .line 85
    invoke-virtual {p1, v2}, Lorg/cybergarage/xml/Node;->getAttribute(I)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 86
    .local v0, attr:Lorg/cybergarage/xml/Attribute;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 88
    .end local v0           #attr:Lorg/cybergarage/xml/Attribute;
    :cond_3
    return-void
.end method

.method public setChildCount(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 177
    const-string v0, "childCount"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;I)V

    .line 178
    return-void
.end method

.method public setSearchable(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 191
    const-string v0, "searchable"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;I)V

    .line 192
    return-void
.end method
