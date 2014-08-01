.class public Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;
.super Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;
.source "MythRecordedItemNode.java"


# static fields
.field private static final MIME_TYPE:Ljava/lang/String; = "video/mpeg"


# instance fields
.field private recInfo:Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;-><init>()V

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;->setRecordedInfo(Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;)V

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;)Z
    .locals 4
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;->getRecordedInfo()Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;

    move-result-object v0

    .line 96
    .local v0, recInfo:Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 98
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->getChanID()I

    move-result v2

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->getChanID()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 99
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getContent()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;->getRecordedInfo()Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->getFile()Ljava/io/File;

    move-result-object v1

    .line 110
    .local v1, recFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    new-array v0, v3, [B

    .line 117
    :goto_0
    return-object v0

    .line 112
    :cond_0
    new-array v0, v3, [B

    .line 114
    .local v0, fileByte:[B
    :try_start_0
    invoke-static {v1}, Lorg/cybergarage/util/FileUtil;->load(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getContentInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 129
    :try_start_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;->getRecordedInfo()Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->getFile()Ljava/io/File;

    move-result-object v1

    .line 130
    .local v1, recFile:Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v1           #recFile:Ljava/io/File;
    :goto_0
    return-object v2

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 135
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getContentLength()J
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;->getRecordedInfo()Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->getFile()Ljava/io/File;

    move-result-object v0

    .line 123
    .local v0, recFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    return-wide v1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string v0, "video/mpeg"

    return-object v0
.end method

.method public getRecordedInfo()Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;->recInfo:Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;

    return-object v0
.end method

.method public setRecordedInfo(Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;)V
    .locals 8
    .parameter "info"

    .prologue
    .line 60
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;->recInfo:Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;

    .line 62
    if-nez p1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setTitle(Ljava/lang/String;)V

    .line 69
    const-string v5, ""

    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setCreator(Ljava/lang/String;)V

    .line 72
    const-string v5, "object.item.videoItem.movie"

    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setUPnPClass(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->getStartTime()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setDate(J)V

    .line 77
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->getFileSize()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setStorageUsed(J)V

    .line 80
    const-string v3, "http-get:*:video/mpeg:*"

    .line 81
    .local v3, protocol:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, id:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getContentExportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, url:Ljava/lang/String;
    new-instance v1, Lorg/cybergarage/xml/AttributeList;

    invoke-direct {v1}, Lorg/cybergarage/xml/AttributeList;-><init>()V

    .line 84
    .local v1, attrList:Lorg/cybergarage/xml/AttributeList;
    new-instance v0, Lorg/cybergarage/xml/Attribute;

    const-string v5, "size"

    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->getFileSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/cybergarage/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .local v0, attr:Lorg/cybergarage/xml/Attribute;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {p0, v4, v3, v1}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setResource(Ljava/lang/String;Ljava/lang/String;Lorg/cybergarage/xml/AttributeList;)V

    goto :goto_0
.end method
