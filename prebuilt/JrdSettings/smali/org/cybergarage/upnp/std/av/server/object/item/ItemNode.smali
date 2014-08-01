.class public Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;
.super Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
.source "ItemNode.java"


# static fields
.field public static final BITRATE:Ljava/lang/String; = "bitrate"

.field public static final COLOR_DEPTH:Ljava/lang/String; = "colorDepth"

.field public static final CONTENT_URI:Ljava/lang/String; = "contentUri"

.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final DURATION:Ljava/lang/String; = "duation"

.field public static final IMPORT_URI:Ljava/lang/String; = "importUri"

.field public static final NAME:Ljava/lang/String; = "item"

.field public static final PROTOCOL_INFO:Ljava/lang/String; = "protocolInfo"

.field public static final RES:Ljava/lang/String; = "res"

.field public static final RESOLUTION:Ljava/lang/String; = "resolution"

.field public static final SIZE:Ljava/lang/String; = "size"


# instance fields
.field private resourceNodeList:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;-><init>()V

    .line 295
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->resourceNodeList:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;

    .line 58
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setID(I)V

    .line 59
    const-string v0, "item"

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 60
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setStorageMedium(Ljava/lang/String;)V

    .line 61
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setWriteStatus(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setRestricted(I)V

    .line 63
    return-void
.end method

.method public static final isItemNode(Lorg/cybergarage/xml/Node;)Z
    .locals 2
    .parameter "node"

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 73
    const/4 v1, 0x0

    .line 74
    :goto_0
    return v1

    :cond_0
    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 120
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setParentID(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setContentDirectory(Lorg/cybergarage/upnp/std/av/server/ContentDirectory;)V

    .line 122
    return-void
.end method

.method public addResourceNode(Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;)V
    .locals 1
    .parameter "resNode"

    .prologue
    .line 299
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->resourceNodeList:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 300
    return-void
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    const-string v0, "upnp:album"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumArtURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    const-string v0, "upnp:albumArtURI"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    const-string v0, "upnp:genre"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 390
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string v0, "dc:creator"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string v0, "dc:date"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateTime()J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 162
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getDate()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, dateStr:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-ge v6, v7, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-wide v4

    .line 165
    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, df:Ljava/text/DateFormat;
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 168
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    .line 170
    .end local v0           #date:Ljava/util/Date;
    :catch_0
    move-exception v3

    .line 171
    .local v3, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getFirstResource()Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    .locals 4

    .prologue
    .line 319
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getNResourceNodeLists()I

    move-result v1

    .line 320
    .local v1, nProperties:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 321
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getResourceNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;

    move-result-object v2

    .line 322
    .local v2, resNode:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->isThumbnail()Z

    move-result v3

    if-nez v3, :cond_0

    .line 325
    .end local v2           #resNode:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    :goto_1
    return-object v2

    .line 320
    .restart local v2       #resNode:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    .end local v2           #resNode:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    const-string v0, "upnp:genre"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 400
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getFirstResource()Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;

    move-result-object v0

    .line 401
    .local v0, resNode:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getContentFormat()Ljava/lang/String;

    move-result-object v1

    .line 410
    :goto_0
    return-object v1

    .line 404
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getUPnPClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    const-string v1, "image/*"

    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getUPnPClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    const-string v1, "audio/*"

    goto :goto_0

    .line 408
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getUPnPClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 409
    const-string v1, "video/*"

    goto :goto_0

    .line 410
    :cond_3
    const-string v1, "*/*"

    goto :goto_0
.end method

.method public getNResourceNodeLists()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->resourceNodeList:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getProtocolInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    const-string v0, "res"

    const-string v1, "protocolInfo"

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getPropertyAttribureValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    const-string v0, "res"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    .locals 1
    .parameter "n"

    .prologue
    .line 314
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->resourceNodeList:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;->getResourceNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;

    move-result-object v0

    return-object v0
.end method

.method public getResourceNodeList()Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->resourceNodeList:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;

    return-object v0
.end method

.method public getSmallImageResource()Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    .locals 4

    .prologue
    .line 341
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getNResourceNodeLists()I

    move-result v1

    .line 342
    .local v1, nProperties:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 343
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getResourceNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;

    move-result-object v2

    .line 344
    .local v2, resNode:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->isSmallImage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    .end local v2           #resNode:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    :goto_1
    return-object v2

    .line 342
    .restart local v2       #resNode:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    .end local v2           #resNode:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getStorageMedium()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    const-string v0, "upnp:storageMedium"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStorageUsed()J
    .locals 2

    .prologue
    .line 214
    const-string v0, "upnp:storageUsed"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getPropertyLongValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getThumbnailResource()Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    .locals 4

    .prologue
    .line 330
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getNResourceNodeLists()I

    move-result v1

    .line 331
    .local v1, nProperties:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 332
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getResourceNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;

    move-result-object v2

    .line 333
    .local v2, resNode:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->isThumbnail()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    .end local v2           #resNode:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    :goto_1
    return-object v2

    .line 331
    .restart local v2       #resNode:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    .end local v2           #resNode:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isAudioClass()Z
    .locals 1

    .prologue
    .line 279
    const-string v0, "object.item.audio"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isUPnPClassStartWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "object.item.music"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isUPnPClassStartWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImageClass()Z
    .locals 1

    .prologue
    .line 286
    const-string v0, "object.item.image"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isUPnPClassStartWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "object.item.photo"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isUPnPClassStartWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    :cond_0
    const/4 v0, 0x1

    .line 288
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMovieClass()Z
    .locals 1

    .prologue
    .line 267
    const-string v0, "object.item.movie"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isUPnPClassStartWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "object.item.video"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isUPnPClassStartWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    :cond_0
    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoClass()Z
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->isMovieClass()Z

    move-result v0

    return v0
.end method

.method public outputResources(Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "ps"

    .prologue
    .line 108
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->resourceNodeList:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 109
    iget-object v2, p0, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->resourceNodeList:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;->getResourceNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;

    move-result-object v1

    .line 110
    .local v1, rn:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->output(Ljava/io/PrintWriter;Z)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v1           #rn:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    :cond_0
    return-void
.end method

.method public removeContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->removeNode(Lorg/cybergarage/xml/Node;)Z

    move-result v0

    return v0
.end method

.method public set(Lorg/cybergarage/xml/Node;)V
    .locals 9
    .parameter "node"

    .prologue
    const/4 v8, 0x1

    .line 84
    invoke-virtual {p1}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v4

    .line 85
    .local v4, nNode:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 86
    invoke-virtual {p1, v2}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 87
    .local v1, cnode:Lorg/cybergarage/xml/Node;
    invoke-static {v1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->isContainerNode(Lorg/cybergarage/xml/Node;)Z

    move-result v6

    if-ne v6, v8, :cond_1

    .line 85
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {v1}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->isItemNode(Lorg/cybergarage/xml/Node;)Z

    move-result v6

    if-eq v6, v8, :cond_0

    .line 91
    invoke-static {v1}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->isResourceNode(Lorg/cybergarage/xml/Node;)Z

    move-result v6

    if-ne v6, v8, :cond_2

    .line 92
    new-instance v5, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;

    invoke-direct {v5}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;-><init>()V

    .line 93
    .local v5, resNode:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    invoke-virtual {v5, v1}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->set(Lorg/cybergarage/xml/Node;)V

    .line 94
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->addResourceNode(Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;)V

    goto :goto_1

    .line 97
    .end local v5           #resNode:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    :cond_2
    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 101
    .end local v1           #cnode:Lorg/cybergarage/xml/Node;
    :cond_3
    invoke-virtual {p1}, Lorg/cybergarage/xml/Node;->getNAttributes()I

    move-result v3

    .line 102
    .local v3, nAttr:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_4

    .line 103
    invoke-virtual {p1, v2}, Lorg/cybergarage/xml/Node;->getAttribute(I)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 104
    .local v0, attr:Lorg/cybergarage/xml/Attribute;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 106
    .end local v0           #attr:Lorg/cybergarage/xml/Attribute;
    :cond_4
    return-void
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 233
    const-string v0, "upnp:album"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public setAlbumArtURI(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 223
    const-string v0, "upnp:albumArtURI"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 252
    const-string v0, "upnp:genre"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public setCreator(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 181
    const-string v0, "dc:creator"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public setDate(J)V
    .locals 5
    .parameter "dateTime"

    .prologue
    .line 148
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 151
    .local v0, date:Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, df:Ljava/text/DateFormat;
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, dateStr:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #dateStr:Ljava/lang/String;
    .end local v2           #df:Ljava/text/DateFormat;
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v3

    .line 156
    .local v3, e:Ljava/lang/Exception;
    invoke-static {v3}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 137
    const-string v0, "dc:date"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 243
    const-string v0, "upnp:genre"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public setResource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "protocolInfo"

    .prologue
    .line 370
    new-instance v0, Lorg/cybergarage/xml/AttributeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/AttributeList;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setResource(Ljava/lang/String;Ljava/lang/String;Lorg/cybergarage/xml/AttributeList;)V

    .line 371
    return-void
.end method

.method public setResource(Ljava/lang/String;Ljava/lang/String;Lorg/cybergarage/xml/AttributeList;)V
    .locals 7
    .parameter "url"
    .parameter "protocolInfo"
    .parameter "attrList"

    .prologue
    .line 356
    const-string v5, "res"

    invoke-virtual {p0, v5, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v5, "res"

    const-string v6, "protocolInfo"

    invoke-virtual {p0, v5, v6, p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setPropertyAttribure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 360
    .local v1, attrCnt:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 361
    invoke-virtual {p3, v2}, Lorg/cybergarage/xml/AttributeList;->getAttribute(I)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 362
    .local v0, attr:Lorg/cybergarage/xml/Attribute;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    .line 363
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, value:Ljava/lang/String;
    const-string v5, "res"

    invoke-virtual {p0, v5, v3, v4}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setPropertyAttribure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    .end local v0           #attr:Lorg/cybergarage/xml/Attribute;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setStorageMedium(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 195
    const-string v0, "upnp:storageMedium"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public setStorageUsed(J)V
    .locals 1
    .parameter "value"

    .prologue
    .line 209
    const-string v0, "upnp:storageUsed"

    invoke-virtual {p0, v0, p1, p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;J)V

    .line 210
    return-void
.end method
