.class public Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;
.super Lorg/cybergarage/upnp/std/av/server/Directory;
.source "FileDirectory.java"


# instance fields
.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "path"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/Directory;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p2}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->setPath(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method private addItemNode(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;)V
    .locals 0
    .parameter "itemNode"

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 208
    return-void
.end method

.method private createCompareItemNode(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    .locals 3
    .parameter "file"

    .prologue
    .line 144
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getFormat(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/Format;

    move-result-object v0

    .line 145
    .local v0, format:Lorg/cybergarage/upnp/std/av/server/object/Format;
    if-nez v0, :cond_0

    .line 146
    const/4 v1, 0x0

    .line 149
    :goto_0
    return-object v1

    .line 147
    :cond_0
    new-instance v1, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    invoke-direct {v1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;-><init>()V

    .line 148
    .local v1, itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setFile(Ljava/io/File;)V

    goto :goto_0
.end method

.method private getCurrentDirectoryItemNodeList()Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;
    .locals 3

    .prologue
    .line 180
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;-><init>()V

    .line 181
    .local v0, itemNodeList:Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v2, pathFile:Ljava/io/File;
    invoke-direct {p0, v2, v0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getDirectoryItemNodeList(Ljava/io/File;Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;)I

    .line 184
    return-object v0
.end method

.method private getDirectoryItemNodeList(Ljava/io/File;Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;)I
    .locals 7
    .parameter "dirFile"
    .parameter "itemNodeList"

    .prologue
    const/4 v6, 0x1

    .line 158
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 159
    .local v0, childFile:[Ljava/io/File;
    const/4 v2, 0x0

    .line 160
    .local v2, fileCnt:I
    if-eqz v0, :cond_0

    .line 161
    array-length v2, v0

    .line 162
    :cond_0
    const/4 v4, 0x0

    .local v4, n:I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 163
    aget-object v1, v0, v4

    .line 164
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-ne v5, v6, :cond_2

    .line 165
    invoke-direct {p0, v1, p2}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getDirectoryItemNodeList(Ljava/io/File;Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;)I

    .line 162
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-ne v5, v6, :cond_1

    .line 169
    invoke-direct {p0, v1}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->createCompareItemNode(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    move-result-object v3

    .line 170
    .local v3, itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    if-eqz v3, :cond_1

    .line 172
    invoke-virtual {p2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    .end local v1           #file:Ljava/io/File;
    .end local v3           #itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    :cond_3
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v5

    return v5
.end method

.method private getDlnaProtocolOpFlag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mime"

    .prologue
    .line 61
    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, ":*"

    .line 68
    :goto_0
    return-object v0

    .line 65
    :cond_0
    const-string v0, ":DLNA.ORG_OP=01"

    goto :goto_0

    .line 68
    :cond_1
    const-string v0, ":*"

    goto :goto_0
.end method

.method private getItemNode(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    .locals 6
    .parameter "file"

    .prologue
    .line 193
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNContentNodes()I

    move-result v3

    .line 194
    .local v3, nContents:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 195
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    .line 196
    .local v0, cnode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    instance-of v4, v0, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    if-nez v4, :cond_1

    .line 194
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 198
    check-cast v1, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    .line 199
    .local v1, itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->equals(Ljava/io/File;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 202
    .end local v0           #cnode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .end local v1           #itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getMd5Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "input"

    .prologue
    .line 211
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 212
    .local v1, md:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 213
    .local v3, messageDigest:[B
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 214
    .local v4, number:Ljava/math/BigInteger;
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, md5:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-ge v5, v6, :cond_0

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 218
    .end local v1           #md:Ljava/security/MessageDigest;
    .end local v2           #md5:Ljava/lang/String;
    .end local v3           #messageDigest:[B
    .end local v4           #number:Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const/4 v2, 0x0

    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_0
    return-object v2
.end method

.method private updateItemNode(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;Ljava/io/File;)Z
    .locals 23
    .parameter "itemNode"
    .parameter "file"

    .prologue
    .line 77
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getFormat(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/Format;

    move-result-object v8

    .line 78
    .local v8, format:Lorg/cybergarage/upnp/std/av/server/object/Format;
    if-nez v8, :cond_0

    .line 79
    const/16 v21, 0x0

    .line 139
    :goto_0
    return v21

    .line 80
    :cond_0
    move-object/from16 v0, p2

    invoke-interface {v8, v0}, Lorg/cybergarage/upnp/std/av/server/object/Format;->createObject(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/FormatObject;

    move-result-object v9

    .line 83
    .local v9, formatObj:Lorg/cybergarage/upnp/std/av/server/object/FormatObject;
    invoke-virtual/range {p1 .. p2}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setFile(Ljava/io/File;)V

    .line 86
    invoke-interface {v9}, Lorg/cybergarage/upnp/std/av/server/object/FormatObject;->getTitle()Ljava/lang/String;

    move-result-object v19

    .line 87
    .local v19, title:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_6

    .line 88
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setTitle(Ljava/lang/String;)V

    .line 92
    :goto_1
    invoke-interface {v9}, Lorg/cybergarage/upnp/std/av/server/object/FormatObject;->getCreator()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, creator:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_1

    .line 94
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setCreator(Ljava/lang/String;)V

    .line 97
    :cond_1
    invoke-interface {v8}, Lorg/cybergarage/upnp/std/av/server/object/Format;->getMediaClass()Ljava/lang/String;

    move-result-object v15

    .line 98
    .local v15, mediaClass:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_2

    .line 99
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setUPnPClass(Ljava/lang/String;)V

    .line 102
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    .line 103
    .local v12, lastModTime:J
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setDate(J)V

    .line 106
    const-wide/16 v6, 0x0

    .line 108
    .local v6, fileSize:J
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 109
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setStorageUsed(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_2
    invoke-interface {v8}, Lorg/cybergarage/upnp/std/av/server/object/Format;->getMimeType()Ljava/lang/String;

    move-result-object v16

    .line 117
    .local v16, mimeType:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "http-get:*:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getDlnaProtocolOpFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 118
    .local v17, protocol:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v11

    .line 121
    .local v11, id:Ljava/lang/String;
    new-instance v18, Lorg/cybergarage/xml/Node;

    invoke-direct/range {v18 .. v18}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 122
    .local v18, rn:Lorg/cybergarage/xml/Node;
    const-string v21, "res"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 123
    const-string v21, "size"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v21, "protocolInfo"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/cybergarage/upnp/Device;->getHTTPBindAddress()[Ljava/net/InetAddress;

    move-result-object v3

    .line 127
    .local v3, addrs:[Ljava/net/InetAddress;
    const/4 v14, 0x1

    .line 128
    .local v14, loops:I
    if-eqz v3, :cond_3

    array-length v0, v3

    move/from16 v21, v0

    if-lez v21, :cond_3

    array-length v14, v3

    .line 129
    :cond_3
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    if-ge v10, v14, :cond_9

    .line 130
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v22

    if-eqz v3, :cond_4

    array-length v0, v3

    move/from16 v21, v0

    if-nez v21, :cond_7

    :cond_4
    const-string v21, "127.0.0.1"

    :goto_4
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getContentExportURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 131
    .local v20, url:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v22

    if-eqz v3, :cond_5

    array-length v0, v3

    move/from16 v21, v0

    if-nez v21, :cond_8

    :cond_5
    const-string v21, "127.0.0.1"

    :goto_5
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getContentImportURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 133
    const-string v21, "importUri"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 129
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 90
    .end local v3           #addrs:[Ljava/net/InetAddress;
    .end local v4           #creator:Ljava/lang/String;
    .end local v6           #fileSize:J
    .end local v10           #i:I
    .end local v11           #id:Ljava/lang/String;
    .end local v12           #lastModTime:J
    .end local v14           #loops:I
    .end local v15           #mediaClass:Ljava/lang/String;
    .end local v16           #mimeType:Ljava/lang/String;
    .end local v17           #protocol:Ljava/lang/String;
    .end local v18           #rn:Lorg/cybergarage/xml/Node;
    .end local v20           #url:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 111
    .restart local v4       #creator:Ljava/lang/String;
    .restart local v6       #fileSize:J
    .restart local v12       #lastModTime:J
    .restart local v15       #mediaClass:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 112
    .local v5, e:Ljava/lang/Exception;
    invoke-static {v5}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto/16 :goto_2

    .line 130
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v3       #addrs:[Ljava/net/InetAddress;
    .restart local v10       #i:I
    .restart local v11       #id:Ljava/lang/String;
    .restart local v14       #loops:I
    .restart local v16       #mimeType:Ljava/lang/String;
    .restart local v17       #protocol:Ljava/lang/String;
    .restart local v18       #rn:Lorg/cybergarage/xml/Node;
    :cond_7
    aget-object v21, v3, v10

    invoke-virtual/range {v21 .. v21}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v21

    goto :goto_4

    .line 132
    .restart local v20       #url:Ljava/lang/String;
    :cond_8
    aget-object v21, v3, v10

    invoke-virtual/range {v21 .. v21}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v21

    goto :goto_5

    .line 137
    .end local v20           #url:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->updateSystemUpdateID()V

    .line 139
    const/16 v21, 0x1

    goto/16 :goto_0
.end method

.method private updateItemNodeList()Z
    .locals 10

    .prologue
    .line 247
    const/4 v7, 0x0

    .line 250
    .local v7, updateFlag:Z
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNContentNodes()I

    move-result v6

    .line 251
    .local v6, nContents:I
    new-array v0, v6, [Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    .line 252
    .local v0, cnode:[Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    const/4 v5, 0x0

    .local v5, n:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 253
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v8

    aput-object v8, v0, v5

    .line 252
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 254
    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_3

    .line 255
    aget-object v8, v0, v5

    instance-of v8, v8, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    if-nez v8, :cond_2

    .line 254
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 257
    :cond_2
    aget-object v2, v0, v5

    check-cast v2, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    .line 258
    .local v2, itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->getFile()Ljava/io/File;

    move-result-object v1

    .line 259
    .local v1, itemFile:Ljava/io/File;
    if-eqz v1, :cond_1

    .line 261
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 262
    aget-object v8, v0, v5

    invoke-virtual {p0, v8}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->removeContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)Z

    .line 263
    const/4 v7, 0x1

    goto :goto_2

    .line 268
    .end local v1           #itemFile:Ljava/io/File;
    .end local v2           #itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    :cond_3
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getCurrentDirectoryItemNodeList()Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;

    move-result-object v4

    .line 269
    .local v4, itemNodeList:Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    .line 270
    .local v3, itemNodeCnt:I
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_5

    .line 271
    invoke-virtual {v4, v5}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;->getFileItemNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    move-result-object v2

    .line 272
    .restart local v2       #itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    invoke-direct {p0, v2}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->updateItemNodeList(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 273
    const/4 v7, 0x1

    .line 270
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 276
    .end local v2           #itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    :cond_5
    return v7
.end method

.method private updateItemNodeList(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;)Z
    .locals 9
    .parameter "newItemNode"

    .prologue
    const/4 v7, 0x1

    .line 225
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->getFile()Ljava/io/File;

    move-result-object v4

    .line 226
    .local v4, newItemNodeFile:Ljava/io/File;
    invoke-direct {p0, v4}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getItemNode(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    move-result-object v0

    .line 227
    .local v0, currItemNode:Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v8

    invoke-virtual {v8}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNextItemID()I

    move-result v3

    .line 229
    .local v3, newItemID:I
    invoke-virtual {p1, v3}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setID(I)V

    .line 230
    invoke-direct {p0, p1, v4}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->updateItemNode(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;Ljava/io/File;)Z

    .line 231
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->addItemNode(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;)V

    .line 242
    .end local v3           #newItemID:I
    :goto_0
    return v7

    .line 235
    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->getFileTimeStamp()J

    move-result-wide v1

    .line 236
    .local v1, currTimeStamp:J
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->getFileTimeStamp()J

    move-result-wide v5

    .line 237
    .local v5, newTimeStamp:J
    cmp-long v8, v1, v5

    if-nez v8, :cond_1

    .line 238
    const/4 v7, 0x0

    goto :goto_0

    .line 240
    :cond_1
    invoke-direct {p0, v0, v4}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->updateItemNode(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;Ljava/io/File;)Z

    goto :goto_0
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 52
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->path:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public update()Z
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->updateItemNodeList()Z

    move-result v0

    return v0
.end method
