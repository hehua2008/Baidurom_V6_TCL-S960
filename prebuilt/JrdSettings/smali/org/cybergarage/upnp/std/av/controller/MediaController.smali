.class public Lorg/cybergarage/upnp/std/av/controller/MediaController;
.super Lorg/cybergarage/upnp/ControlPoint;
.source "MediaController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;-><init>()V

    .line 39
    return-void
.end method

.method private browse(Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;Lorg/cybergarage/upnp/Device;Ljava/lang/String;Z)I
    .locals 20
    .parameter "parentNode"
    .parameter "dev"
    .parameter "objectID"
    .parameter "hasBrowseChildNodes"

    .prologue
    .line 249
    if-nez p3, :cond_0

    .line 250
    const/16 v16, 0x0

    .line 289
    :goto_0
    return v16

    .line 252
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transMsg+++++++time++start+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 253
    const-string v6, "*"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v3 .. v9}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->browseDirectChildren(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v18

    .line 254
    .local v18, resultNode:Lorg/cybergarage/xml/Node;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transMsg+++++++time++end+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 255
    if-nez v18, :cond_1

    .line 256
    const/16 v16, 0x0

    goto :goto_0

    .line 258
    :cond_1
    new-instance v10, Lorg/cybergarage/upnp/std/av/player/action/BrowseResult;

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Lorg/cybergarage/upnp/std/av/player/action/BrowseResult;-><init>(Lorg/cybergarage/xml/Node;)V

    .line 259
    .local v10, browseResult:Lorg/cybergarage/upnp/std/av/player/action/BrowseResult;
    const/16 v16, 0x0

    .line 260
    .local v16, nResultNode:I
    invoke-virtual {v10}, Lorg/cybergarage/upnp/std/av/player/action/BrowseResult;->getNContentNodes()I

    move-result v15

    .line 261
    .local v15, nContents:I
    const/4 v14, 0x0

    .local v14, n:I
    :goto_1
    if-ge v14, v15, :cond_6

    .line 262
    invoke-virtual {v10, v14}, Lorg/cybergarage/upnp/std/av/player/action/BrowseResult;->getContentNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v19

    .line 263
    .local v19, xmlNode:Lorg/cybergarage/xml/Node;
    const/4 v13, 0x0

    .line 264
    .local v13, contentNode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-static/range {v19 .. v19}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->isContainerNode(Lorg/cybergarage/xml/Node;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 265
    new-instance v13, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    .end local v13           #contentNode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-direct {v13}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;-><init>()V

    .line 269
    .restart local v13       #contentNode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    :cond_2
    :goto_2
    if-nez v13, :cond_5

    .line 261
    :cond_3
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 267
    :cond_4
    invoke-static/range {v19 .. v19}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->isItemNode(Lorg/cybergarage/xml/Node;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 268
    new-instance v13, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;

    .end local v13           #contentNode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-direct {v13}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;-><init>()V

    .restart local v13       #contentNode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    goto :goto_2

    .line 271
    :cond_5
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->set(Lorg/cybergarage/xml/Node;)V

    .line 272
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 273
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setParentID(Ljava/lang/String;)V

    .line 274
    add-int/lit8 v16, v16, 0x1

    .line 276
    if-eqz p4, :cond_3

    .line 277
    invoke-virtual {v13}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isContainerNode()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move-object v12, v13

    .line 278
    check-cast v12, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    .line 279
    .local v12, containerNode:Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    invoke-virtual {v12}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getChildCount()I

    move-result v11

    .line 280
    .local v11, childCnt:I
    if-lez v11, :cond_3

    .line 281
    invoke-virtual {v12}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v17

    .line 282
    .local v17, objid:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-direct {v0, v12, v1, v2, v3}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->browse(Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;Lorg/cybergarage/upnp/Device;Ljava/lang/String;Z)I

    goto :goto_3

    .line 287
    .end local v11           #childCnt:I
    .end local v12           #containerNode:Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    .end local v13           #contentNode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .end local v17           #objid:Ljava/lang/String;
    .end local v19           #xmlNode:Lorg/cybergarage/xml/Node;
    :cond_6
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ParseMsg+++++++time++end+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getDeviceList(Ljava/lang/String;)Lorg/cybergarage/upnp/DeviceList;
    .locals 6
    .parameter "deviceType"

    .prologue
    .line 47
    new-instance v3, Lorg/cybergarage/upnp/DeviceList;

    invoke-direct {v3}, Lorg/cybergarage/upnp/DeviceList;-><init>()V

    .line 49
    .local v3, devList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v1

    .line 50
    .local v1, allDevList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 51
    .local v0, allDevCnt:I
    const/4 v4, 0x0

    .local v4, n:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 52
    invoke-virtual {v1, v4}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v2

    .line 53
    .local v2, dev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/Device;->isDeviceType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 51
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 57
    .end local v2           #dev:Lorg/cybergarage/upnp/Device;
    :cond_1
    return-object v3
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 591
    new-instance v0, Lorg/cybergarage/upnp/std/av/controller/MediaController;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/controller/MediaController;-><init>()V

    .line 593
    .local v0, mplayer:Lorg/cybergarage/upnp/std/av/controller/MediaController;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/ControlPoint;->start()Z

    .line 596
    :goto_0
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->printMediaServers()V

    .line 598
    const-wide/16 v1, 0x4e20

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 600
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public browse(Lorg/cybergarage/upnp/Device;)Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    .locals 1
    .parameter "dev"

    .prologue
    .line 219
    const-string v0, "0"

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->browse(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    move-result-object v0

    return-object v0
.end method

.method public browse(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    .locals 1
    .parameter "dev"
    .parameter "objectId"

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->browse(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Z)Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    move-result-object v0

    return-object v0
.end method

.method public browse(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Z)Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    .locals 1
    .parameter "dev"
    .parameter "objectId"
    .parameter "hasBrowseChildNodes"

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->browse(Lorg/cybergarage/upnp/Device;Ljava/lang/String;ZZ)Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    move-result-object v0

    return-object v0
.end method

.method public browse(Lorg/cybergarage/upnp/Device;Ljava/lang/String;ZZ)Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    .locals 9
    .parameter "dev"
    .parameter "objectId"
    .parameter "hasBrowseChildNodes"
    .parameter "hasRootNodeMetadata"

    .prologue
    const/4 v4, 0x0

    .line 229
    new-instance v7, Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;

    invoke-direct {v7}, Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;-><init>()V

    .line 231
    .local v7, contentRootNode:Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    if-eqz p4, :cond_0

    .line 232
    const-string v3, "*"

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->browseMetaData(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v8

    .line 233
    .local v8, rootNode:Lorg/cybergarage/xml/Node;
    if-eqz v8, :cond_0

    .line 234
    invoke-virtual {v7, v8}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->set(Lorg/cybergarage/xml/Node;)V

    .line 237
    .end local v8           #rootNode:Lorg/cybergarage/xml/Node;
    :cond_0
    invoke-direct {p0, v7, p1, p2, p4}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->browse(Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;Lorg/cybergarage/upnp/Device;Ljava/lang/String;Z)I

    .line 239
    return-object v7
.end method

.method public browse(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 14
    .parameter "dev"
    .parameter "objectID"
    .parameter "browseFlag"
    .parameter "filter"
    .parameter "startIndex"
    .parameter "requestedCount"
    .parameter "sortCaiteria"

    .prologue
    .line 103
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "browse "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    if-nez p1, :cond_0

    .line 106
    const/4 v4, 0x0

    .line 170
    :goto_0
    return-object v4

    .line 108
    :cond_0
    const-string v11, "urn:schemas-upnp-org:service:ContentDirectory:1"

    invoke-virtual {p1, v11}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v3

    .line 109
    .local v3, conDir:Lorg/cybergarage/upnp/Service;
    if-nez v3, :cond_1

    .line 110
    const/4 v4, 0x0

    goto :goto_0

    .line 111
    :cond_1
    const-string v11, "Browse"

    invoke-virtual {v3, v11}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v1

    .line 112
    .local v1, action:Lorg/cybergarage/upnp/Action;
    if-nez v1, :cond_2

    .line 113
    const/4 v4, 0x0

    goto :goto_0

    .line 115
    :cond_2
    new-instance v2, Lorg/cybergarage/upnp/std/av/player/action/BrowseAction;

    invoke-direct {v2, v1}, Lorg/cybergarage/upnp/std/av/player/action/BrowseAction;-><init>(Lorg/cybergarage/upnp/Action;)V

    .line 116
    .local v2, browseAction:Lorg/cybergarage/upnp/std/av/player/action/BrowseAction;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/std/av/player/action/BrowseAction;->setObjectID(Ljava/lang/String;)V

    .line 117
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/std/av/player/action/BrowseAction;->setBrowseFlag(Ljava/lang/String;)V

    .line 118
    move/from16 v0, p5

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/std/av/player/action/BrowseAction;->setStartingIndex(I)V

    .line 119
    move/from16 v0, p6

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/std/av/player/action/BrowseAction;->setRequestedCount(I)V

    .line 120
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/std/av/player/action/BrowseAction;->setFilter(Ljava/lang/String;)V

    .line 121
    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/std/av/player/action/BrowseAction;->setSortCriteria(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/player/action/BrowseAction;->postControlAction()Z

    move-result v11

    if-nez v11, :cond_3

    .line 123
    const/4 v4, 0x0

    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/player/action/BrowseAction;->getTotalMatches()I

    move-result v9

    .line 134
    .local v9, totalMatches:I
    if-nez p6, :cond_5

    .line 135
    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/player/action/BrowseAction;->getNumberReturned()I

    move-result v5

    .line 136
    .local v5, numberReturned:I
    if-nez v5, :cond_5

    .line 137
    if-lez v9, :cond_4

    .line 138
    invoke-virtual {v2, v9}, Lorg/cybergarage/upnp/std/av/player/action/BrowseAction;->setRequestedCount(I)V

    .line 139
    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/player/action/BrowseAction;->postControlAction()Z

    move-result v11

    if-nez v11, :cond_5

    .line 140
    const/4 v4, 0x0

    goto :goto_0

    .line 143
    :cond_4
    const/16 v11, 0x270f

    invoke-virtual {v2, v11}, Lorg/cybergarage/upnp/std/av/player/action/BrowseAction;->setRequestedCount(I)V

    .line 144
    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/player/action/BrowseAction;->postControlAction()Z

    move-result v11

    if-nez v11, :cond_5

    .line 145
    const/4 v4, 0x0

    goto :goto_0

    .line 150
    .end local v5           #numberReturned:I
    :cond_5
    const-string v11, "Result"

    invoke-virtual {v2, v11}, Lorg/cybergarage/upnp/std/av/player/action/BrowseAction;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v7

    .line 151
    .local v7, resultArg:Lorg/cybergarage/upnp/Argument;
    if-nez v7, :cond_6

    .line 152
    const/4 v4, 0x0

    goto :goto_0

    .line 154
    :cond_6
    invoke-virtual {v7}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 155
    .local v8, resultStr:Ljava/lang/String;
    if-nez v8, :cond_7

    .line 156
    const/4 v4, 0x0

    goto :goto_0

    .line 158
    :cond_7
    const/4 v4, 0x0

    .line 160
    .local v4, node:Lorg/cybergarage/xml/Node;
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v10

    .line 163
    .local v10, xmlParser:Lorg/cybergarage/xml/Parser;
    :try_start_0
    invoke-virtual {v10, v8}, Lorg/cybergarage/xml/Parser;->parse(Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 169
    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v11}, Lorg/cybergarage/xml/Node;->setUserData(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 165
    :catch_0
    move-exception v6

    .line 166
    .local v6, pe:Lorg/cybergarage/xml/ParserException;
    invoke-static {v6}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 167
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public browseDirectChildren(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 7
    .parameter "dev"
    .parameter "objectId"

    .prologue
    const/4 v4, 0x0

    .line 210
    const-string v3, "*"

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->browseDirectChildren(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public browseDirectChildren(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 8
    .parameter "dev"
    .parameter "objectID"
    .parameter "filter"
    .parameter "startIndex"
    .parameter "requestedCount"
    .parameter "sortCaiteria"

    .prologue
    .line 203
    const-string v3, "BrowseDirectChildren"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->browse(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public browseMetaData(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 7
    .parameter "dev"
    .parameter "objectId"

    .prologue
    const/4 v4, 0x0

    .line 192
    const-string v3, "*"

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->browseMetaData(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public browseMetaData(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 8
    .parameter "dev"
    .parameter "objectId"
    .parameter "filter"
    .parameter "startIndex"
    .parameter "requestedCount"
    .parameter "sortCaiteria"

    .prologue
    .line 185
    const-string v3, "BrowseMetadata"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->browse(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public browseRange(Lorg/cybergarage/upnp/Device;Ljava/lang/String;IIZ)Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    .locals 21
    .parameter "dev"
    .parameter "objectID"
    .parameter "startindex"
    .parameter "request"
    .parameter "hasBrowseChildNodes"

    .prologue
    .line 293
    new-instance v18, Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;

    invoke-direct/range {v18 .. v18}, Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;-><init>()V

    .line 294
    .local v18, parentNode:Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    if-nez p2, :cond_0

    .line 295
    const/16 v18, 0x0

    .line 330
    .end local v18           #parentNode:Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    :goto_0
    return-object v18

    .line 296
    .restart local v18       #parentNode:Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    :cond_0
    const-string v6, "*"

    const-string v9, ""

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->browseDirectChildren(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v19

    .line 297
    .local v19, resultNode:Lorg/cybergarage/xml/Node;
    if-nez v19, :cond_1

    .line 298
    const/16 v18, 0x0

    goto :goto_0

    .line 300
    :cond_1
    new-instance v10, Lorg/cybergarage/upnp/std/av/player/action/BrowseResult;

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lorg/cybergarage/upnp/std/av/player/action/BrowseResult;-><init>(Lorg/cybergarage/xml/Node;)V

    .line 301
    .local v10, browseResult:Lorg/cybergarage/upnp/std/av/player/action/BrowseResult;
    const/16 v16, 0x0

    .line 302
    .local v16, nResultNode:I
    invoke-virtual {v10}, Lorg/cybergarage/upnp/std/av/player/action/BrowseResult;->getNContentNodes()I

    move-result v15

    .line 303
    .local v15, nContents:I
    const/4 v14, 0x0

    .local v14, n:I
    :goto_1
    if-ge v14, v15, :cond_6

    .line 304
    invoke-virtual {v10, v14}, Lorg/cybergarage/upnp/std/av/player/action/BrowseResult;->getContentNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v20

    .line 305
    .local v20, xmlNode:Lorg/cybergarage/xml/Node;
    const/4 v13, 0x0

    .line 306
    .local v13, contentNode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-static/range {v20 .. v20}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->isContainerNode(Lorg/cybergarage/xml/Node;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 307
    new-instance v13, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    .end local v13           #contentNode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-direct {v13}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;-><init>()V

    .line 311
    .restart local v13       #contentNode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    :cond_2
    :goto_2
    if-nez v13, :cond_5

    .line 303
    :cond_3
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 309
    :cond_4
    invoke-static/range {v20 .. v20}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->isItemNode(Lorg/cybergarage/xml/Node;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 310
    new-instance v13, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;

    .end local v13           #contentNode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-direct {v13}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;-><init>()V

    .restart local v13       #contentNode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    goto :goto_2

    .line 313
    :cond_5
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->set(Lorg/cybergarage/xml/Node;)V

    .line 314
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 315
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setParentID(Ljava/lang/String;)V

    .line 316
    add-int/lit8 v16, v16, 0x1

    .line 318
    if-eqz p5, :cond_3

    .line 319
    invoke-virtual {v13}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isContainerNode()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move-object v12, v13

    .line 320
    check-cast v12, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    .line 321
    .local v12, containerNode:Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    invoke-virtual {v12}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getChildCount()I

    move-result v11

    .line 322
    .local v11, childCnt:I
    if-lez v11, :cond_3

    .line 323
    invoke-virtual {v12}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v17

    .line 324
    .local v17, objid:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v12, v1, v2, v3}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->browse(Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;Lorg/cybergarage/upnp/Device;Ljava/lang/String;Z)I

    goto :goto_3

    .line 329
    .end local v11           #childCnt:I
    .end local v12           #containerNode:Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    .end local v13           #contentNode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .end local v17           #objid:Ljava/lang/String;
    .end local v20           #xmlNode:Lorg/cybergarage/xml/Node;
    :cond_6
    const-string v4, "TotalMatch"

    invoke-virtual/range {v19 .. v19}, Lorg/cybergarage/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v3}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public createItem(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Z
    .locals 4
    .parameter "dev"
    .parameter "containerId"

    .prologue
    const/4 v2, 0x0

    .line 569
    const-string v3, "urn:schemas-upnp-org:service:ContentDirectory:1"

    invoke-virtual {p1, v3}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 571
    .local v1, service:Lorg/cybergarage/upnp/Service;
    if-nez v1, :cond_1

    .line 578
    :cond_0
    :goto_0
    return v2

    .line 573
    :cond_1
    const-string v3, "CreateObject"

    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 574
    .local v0, action:Lorg/cybergarage/upnp/Action;
    if-eqz v0, :cond_0

    .line 576
    const-string v2, "ContainerID"

    invoke-virtual {v0, v2, p2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v2, "Elements"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v2

    goto :goto_0
.end method

.method public createItem(Lorg/cybergarage/upnp/Device;Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;)Z
    .locals 1
    .parameter "dev"
    .parameter "parent"

    .prologue
    .line 582
    invoke-virtual {p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->createItem(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public destroyItem(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Z
    .locals 4
    .parameter "dev"
    .parameter "objectId"

    .prologue
    const/4 v2, 0x0

    .line 553
    const-string v3, "urn:schemas-upnp-org:service:ContentDirectory:1"

    invoke-virtual {p1, v3}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 555
    .local v1, service:Lorg/cybergarage/upnp/Service;
    if-nez v1, :cond_1

    .line 561
    :cond_0
    :goto_0
    return v2

    .line 557
    :cond_1
    const-string v3, "DestroyObject"

    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 558
    .local v0, action:Lorg/cybergarage/upnp/Action;
    if-eqz v0, :cond_0

    .line 560
    const-string v2, "ObjectID"

    invoke-virtual {v0, v2, p2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v2

    goto :goto_0
.end method

.method public destroyItem(Lorg/cybergarage/upnp/Device;Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)Z
    .locals 1
    .parameter "dev"
    .parameter "itemNode"

    .prologue
    .line 565
    invoke-virtual {p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->destroyItem(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getContentDirectory(Lorg/cybergarage/upnp/Device;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .locals 1
    .parameter "dev"

    .prologue
    .line 338
    const-string v0, "0"

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->getContentDirectory(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    return-object v0
.end method

.method public getContentDirectory(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .locals 1
    .parameter "dev"
    .parameter "objectId"

    .prologue
    .line 343
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->browse(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Z)Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    move-result-object v0

    return-object v0
.end method

.method public getRendererDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;
    .locals 2
    .parameter "name"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 85
    .local v0, foundDev:Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_0

    const-string v1, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Device;->isDeviceType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    .end local v0           #foundDev:Lorg/cybergarage/upnp/Device;
    :goto_0
    return-object v0

    .restart local v0       #foundDev:Lorg/cybergarage/upnp/Device;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRendererDeviceList()Lorg/cybergarage/upnp/DeviceList;
    .locals 1

    .prologue
    .line 67
    const-string v0, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->getDeviceList(Ljava/lang/String;)Lorg/cybergarage/upnp/DeviceList;

    move-result-object v0

    return-object v0
.end method

.method public getServerDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;
    .locals 2
    .parameter "name"

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 77
    .local v0, foundDev:Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_0

    const-string v1, "urn:schemas-upnp-org:device:MediaServer:1"

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Device;->isDeviceType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    .end local v0           #foundDev:Lorg/cybergarage/upnp/Device;
    :goto_0
    return-object v0

    .restart local v0       #foundDev:Lorg/cybergarage/upnp/Device;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServerDeviceList()Lorg/cybergarage/upnp/DeviceList;
    .locals 1

    .prologue
    .line 62
    const-string v0, "urn:schemas-upnp-org:device:MediaServer:1"

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->getDeviceList(Ljava/lang/String;)Lorg/cybergarage/upnp/DeviceList;

    move-result-object v0

    return-object v0
.end method

.method public play(Lorg/cybergarage/upnp/Device;)Z
    .locals 4
    .parameter "dev"

    .prologue
    const/4 v2, 0x0

    .line 491
    if-nez p1, :cond_1

    .line 505
    :cond_0
    :goto_0
    return v2

    .line 494
    :cond_1
    const-string v3, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v3}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 495
    .local v1, avTransService:Lorg/cybergarage/upnp/Service;
    if-eqz v1, :cond_0

    .line 498
    const-string v3, "Play"

    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 499
    .local v0, action:Lorg/cybergarage/upnp/Action;
    if-eqz v0, :cond_0

    .line 502
    const-string v2, "InstanceID"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v2, "Speed"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v2

    goto :goto_0
.end method

.method public play(Lorg/cybergarage/upnp/Device;Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;)Z
    .locals 1
    .parameter "dev"
    .parameter "itemNode"

    .prologue
    .line 530
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->stop(Lorg/cybergarage/upnp/Device;)Z

    .line 531
    invoke-virtual {p0, p1, p2}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->setAVTransportURI(Lorg/cybergarage/upnp/Device;Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    const/4 v0, 0x0

    .line 533
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->play(Lorg/cybergarage/upnp/Device;)Z

    move-result v0

    goto :goto_0
.end method

.method public printContentDirectory(Lorg/cybergarage/upnp/Device;)V
    .locals 2
    .parameter "dev"

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->getContentDirectory(Lorg/cybergarage/upnp/Device;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    .line 378
    .local v0, node:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    if-nez v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 381
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->printContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;I)V

    goto :goto_0
.end method

.method public printContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;I)V
    .locals 10
    .parameter "node"
    .parameter "indentLevel"

    .prologue
    .line 354
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 355
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 354
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 356
    :cond_0
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isItemNode()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    move-object v2, p1

    .line 358
    check-cast v2, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;

    .line 359
    .local v2, itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getResource()Ljava/lang/String;

    move-result-object v6

    .line 360
    .local v6, res:Ljava/lang/String;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getProtocolInfo()Ljava/lang/String;

    move-result-object v5

    .line 361
    .local v5, protocolInfo:Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 363
    .end local v2           #itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;
    .end local v5           #protocolInfo:Ljava/lang/String;
    .end local v6           #res:Ljava/lang/String;
    :cond_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isContainerNode()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v1, p1

    .line 366
    check-cast v1, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    .line 367
    .local v1, containerNode:Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNContentNodes()I

    move-result v4

    .line 368
    .local v4, nContentNodes:I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    .line 369
    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    .line 370
    .local v0, cnode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    add-int/lit8 v7, p2, 0x1

    invoke-virtual {p0, v0, v7}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->printContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;I)V

    .line 368
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 373
    .end local v0           #cnode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .end local v1           #containerNode:Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    .end local v4           #nContentNodes:I
    :cond_2
    return-void
.end method

.method public printMediaServers()V
    .locals 9

    .prologue
    .line 386
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 387
    .local v2, devList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 388
    .local v1, devCnt:I
    const/4 v3, 0x0

    .line 389
    .local v3, mediaServerCnt:I
    const/4 v4, 0x0

    .local v4, n:I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 390
    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 391
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    const-string v5, "urn:schemas-upnp-org:device:MediaServer:1"

    invoke-virtual {v0, v5}, Lorg/cybergarage/upnp/Device;->isDeviceType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 389
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 393
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getElapsedTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/controller/MediaController;->printContentDirectory(Lorg/cybergarage/upnp/Device;)V

    .line 395
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 397
    .end local v0           #dev:Lorg/cybergarage/upnp/Device;
    :cond_1
    if-nez v3, :cond_2

    .line 398
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "MediaServer is not found"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 400
    :cond_2
    return-void
.end method

.method public renameItem(Lorg/cybergarage/upnp/Device;Lorg/cybergarage/upnp/std/av/server/object/ContentNode;Ljava/lang/String;)Z
    .locals 9
    .parameter "dev"
    .parameter "itemNode"
    .parameter "newTitle"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 537
    const-string v5, "urn:schemas-upnp-org:service:ContentDirectory:1"

    invoke-virtual {p1, v5}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v3

    .line 539
    .local v3, service:Lorg/cybergarage/upnp/Service;
    if-nez v3, :cond_1

    .line 549
    :cond_0
    :goto_0
    return v4

    .line 541
    :cond_1
    const-string v5, "UpdateObject"

    invoke-virtual {v3, v5}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 542
    .local v0, action:Lorg/cybergarage/upnp/Action;
    if-eqz v0, :cond_0

    .line 544
    const-string v5, "ObjectID"

    invoke-virtual {p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v5, "<dc:title>%s</dc:title>"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, curTagValue:Ljava/lang/String;
    const-string v5, "<dc:title>%s</dc:title>"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p3, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, newTagValue:Ljava/lang/String;
    const-string v4, "CurrentTagValue"

    invoke-virtual {v0, v4, v1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v4, "NewTagValue"

    invoke-virtual {v0, v4, v2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v4

    goto :goto_0
.end method

.method public setAVTransportURI(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "dev"
    .parameter "resURL"
    .parameter "title"

    .prologue
    const/4 v4, 0x0

    .line 438
    if-nez p1, :cond_1

    .line 457
    :cond_0
    :goto_0
    return v4

    .line 440
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 442
    const-string v5, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v5}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 443
    .local v1, avTransService:Lorg/cybergarage/upnp/Service;
    if-eqz v1, :cond_0

    .line 446
    const-string v5, "SetAVTransportURI"

    invoke-virtual {v1, v5}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 447
    .local v0, action:Lorg/cybergarage/upnp/Action;
    if-eqz v0, :cond_0

    .line 449
    new-instance v3, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;

    invoke-direct {v3}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;-><init>()V

    .line 450
    .local v3, itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;
    invoke-virtual {v3, p3}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setTitle(Ljava/lang/String;)V

    .line 451
    const-string v4, "InstanceID"

    const-string v5, "0"

    invoke-virtual {v0, v4, v5}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v4, "CurrentURI"

    invoke-virtual {v0, v4, p2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    new-instance v2, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;

    invoke-direct {v2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;-><init>()V

    .line 454
    .local v2, didl:Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->setContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 455
    const-string v4, "CurrentURIMetaData"

    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v4

    goto :goto_0
.end method

.method public setAVTransportURI(Lorg/cybergarage/upnp/Device;Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;)Z
    .locals 7
    .parameter "dev"
    .parameter "itemNode"

    .prologue
    const/4 v5, 0x0

    .line 410
    if-nez p1, :cond_1

    .line 434
    :cond_0
    :goto_0
    return v5

    .line 413
    :cond_1
    invoke-virtual {p2}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getFirstResource()Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;

    move-result-object v3

    .line 414
    .local v3, resNode:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    if-eqz v3, :cond_0

    .line 416
    invoke-virtual {v3}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getURL()Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, resURL:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 420
    const-string v6, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v6}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 421
    .local v1, avTransService:Lorg/cybergarage/upnp/Service;
    if-eqz v1, :cond_0

    .line 424
    const-string v6, "SetAVTransportURI"

    invoke-virtual {v1, v6}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 425
    .local v0, action:Lorg/cybergarage/upnp/Action;
    if-eqz v0, :cond_0

    .line 428
    const-string v5, "InstanceID"

    const-string v6, "0"

    invoke-virtual {v0, v5, v6}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v5, "CurrentURI"

    invoke-virtual {v0, v5, v4}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    new-instance v2, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;

    invoke-direct {v2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;-><init>()V

    .line 431
    .local v2, didl:Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;
    invoke-virtual {v2, p2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->setContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 432
    const-string v5, "CurrentURIMetaData"

    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v5

    goto :goto_0
.end method

.method public setNextAVTransportURI(Lorg/cybergarage/upnp/Device;Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;)Z
    .locals 7
    .parameter "dev"
    .parameter "itemNode"

    .prologue
    const/4 v5, 0x0

    .line 463
    if-nez p1, :cond_1

    .line 487
    :cond_0
    :goto_0
    return v5

    .line 466
    :cond_1
    invoke-virtual {p2}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getFirstResource()Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;

    move-result-object v3

    .line 467
    .local v3, resNode:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    if-eqz v3, :cond_0

    .line 469
    invoke-virtual {v3}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getURL()Ljava/lang/String;

    move-result-object v4

    .line 470
    .local v4, resURL:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 473
    const-string v6, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v6}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 474
    .local v1, avTransService:Lorg/cybergarage/upnp/Service;
    if-eqz v1, :cond_0

    .line 477
    const-string v6, "SetNextAVTransportURI"

    invoke-virtual {v1, v6}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 478
    .local v0, action:Lorg/cybergarage/upnp/Action;
    if-eqz v0, :cond_0

    .line 481
    const-string v5, "InstanceID"

    const-string v6, "0"

    invoke-virtual {v0, v5, v6}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v5, "NextURI"

    invoke-virtual {v0, v5, v4}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    new-instance v2, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;

    invoke-direct {v2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;-><init>()V

    .line 484
    .local v2, didl:Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;
    invoke-virtual {v2, p2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->setContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 485
    const-string v5, "NextURIMetaData"

    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v5

    goto :goto_0
.end method

.method public stop(Lorg/cybergarage/upnp/Device;)Z
    .locals 4
    .parameter "dev"

    .prologue
    const/4 v2, 0x0

    .line 510
    if-nez p1, :cond_1

    .line 523
    :cond_0
    :goto_0
    return v2

    .line 513
    :cond_1
    const-string v3, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v3}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 514
    .local v1, avTransService:Lorg/cybergarage/upnp/Service;
    if-eqz v1, :cond_0

    .line 517
    const-string v3, "Stop"

    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 518
    .local v0, action:Lorg/cybergarage/upnp/Action;
    if-eqz v0, :cond_0

    .line 521
    const-string v2, "InstanceID"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v2

    goto :goto_0
.end method
