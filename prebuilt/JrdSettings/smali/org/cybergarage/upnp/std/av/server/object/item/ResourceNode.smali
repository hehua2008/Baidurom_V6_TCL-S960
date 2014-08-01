.class public Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
.super Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
.source "ResourceNode.java"


# static fields
.field public static final COLOR_DEPTH:Ljava/lang/String; = "colorDepth"

.field public static final IMPORT_URI:Ljava/lang/String; = "importUri"

.field public static final NAME:Ljava/lang/String; = "res"

.field public static final PROTOCOL_INFO:Ljava/lang/String; = "protocolInfo"

.field public static final RESOLUTION:Ljava/lang/String; = "resolution"

.field public static final SIZE:Ljava/lang/String; = "size"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;-><init>()V

    .line 47
    const-string v0, "res"

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static final isResourceNode(Lorg/cybergarage/xml/Node;)Z
    .locals 2
    .parameter "node"

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 58
    const/4 v1, 0x0

    .line 59
    :goto_0
    return v1

    :cond_0
    const-string v1, "res"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getAdditionalInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getProtocolInfoAtIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalInfoForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "aKey"

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    const-string v5, ""

    .line 149
    :goto_0
    return-object v5

    .line 134
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, fullAddInfo:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 136
    const-string v5, ""

    goto :goto_0

    .line 137
    :cond_1
    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, addInfos:[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v5, v1

    if-gtz v5, :cond_3

    .line 139
    :cond_2
    const-string v5, ""

    goto :goto_0

    .line 140
    :cond_3
    const/4 v3, 0x0

    .local v3, n:I
    :goto_1
    array-length v5, v1

    if-ge v3, v5, :cond_7

    .line 141
    aget-object v0, v1, v3

    .line 142
    .local v0, addInfo:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 144
    :cond_4
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, tokens:[Ljava/lang/String;
    if-eqz v4, :cond_5

    array-length v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_6

    .line 146
    :cond_5
    const-string v5, ""

    goto :goto_0

    .line 147
    :cond_6
    const/4 v5, 0x1

    aget-object v5, v4, v5

    goto :goto_0

    .line 149
    .end local v0           #addInfo:Ljava/lang/String;
    .end local v4           #tokens:[Ljava/lang/String;
    :cond_7
    const-string v5, ""

    goto :goto_0
.end method

.method public getContentFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getProtocolInfoAtIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDlnaOrgFlags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "DLNA.ORG_FLAGS"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getAdditionalInfoForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDlnaOrgOp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "DLNA.ORG_OP"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getAdditionalInfoForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDlnaOrgPn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "DLNA.ORG_PN"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getAdditionalInfoForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getProtocolInfoAtIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getProtocolInfoAtIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "protocolInfo"

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolInfoAtIndex(I)Ljava/lang/String;
    .locals 3
    .parameter "anIndex"

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getProtocolInfo()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, protocolInfo:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 103
    const-string v2, ""

    .line 107
    :goto_0
    return-object v2

    .line 104
    :cond_0
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, protocols:[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-gt v2, p1, :cond_2

    .line 106
    :cond_1
    const-string v2, ""

    goto :goto_0

    .line 107
    :cond_2
    aget-object v2, v1, p1

    goto :goto_0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAudio()Z
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getContentFormat()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, mimeType:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 238
    const/4 v1, 0x0

    .line 239
    :goto_0
    return v1

    :cond_0
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isImage()Z
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getContentFormat()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, mimeType:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 215
    const/4 v1, 0x0

    .line 216
    :goto_0
    return v1

    :cond_0
    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isLargeImage()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getDlnaOrgPn()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, dlnaOrgPn:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v1

    .line 206
    :cond_1
    const-string v2, "_LRG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isMediumImage()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getDlnaOrgPn()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, dlnaOrgPn:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v1

    .line 196
    :cond_1
    const-string v2, "_MED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isMovie()Z
    .locals 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getContentFormat()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, mimeType:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 223
    const/4 v1, 0x0

    .line 226
    :goto_0
    return v1

    .line 224
    :cond_0
    const-string v1, "movie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    const/4 v1, 0x1

    goto :goto_0

    .line 226
    :cond_1
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isSmallImage()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getDlnaOrgPn()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, dlnaOrgPn:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v1

    .line 186
    :cond_1
    const-string v2, "_SM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isThumbnail()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getDlnaOrgPn()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, dlnaOrgPn:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v1

    .line 176
    :cond_1
    const-string v2, "_TN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->isMovie()Z

    move-result v0

    return v0
.end method

.method public outputResources(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "ps"

    .prologue
    .line 79
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ">>>>>>>>>>>>>>>>no res<<<<<<<<<<<<<<<<"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public set(Lorg/cybergarage/xml/Node;)V
    .locals 5
    .parameter "node"

    .prologue
    .line 68
    invoke-virtual {p1}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lorg/cybergarage/xml/Node;->getNAttributes()I

    move-result v2

    .line 72
    .local v2, nAttr:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 73
    invoke-virtual {p1, v1}, Lorg/cybergarage/xml/Node;->getAttribute(I)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 74
    .local v0, attr:Lorg/cybergarage/xml/Attribute;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v0           #attr:Lorg/cybergarage/xml/Attribute;
    :cond_0
    return-void
.end method
