.class public Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythDatabase;
.super Lorg/cybergarage/sql/mysql/MySQL;
.source "MythDatabase.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "mythconverg"

.field private static final DB_PASSWD:Ljava/lang/String; = "mythtv"

.field private static final DB_USER:Ljava/lang/String; = "mythtv"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/cybergarage/sql/mysql/MySQL;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public getRecordFilePrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    const-string v0, "select * from settings where value = \'RecordFilePrefix\'"

    .line 62
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/cybergarage/sql/Database;->query(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    const-string v1, ""

    .line 68
    :goto_0
    return-object v1

    .line 65
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/sql/Database;->fetch()Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    const-string v1, ""

    goto :goto_0

    .line 68
    :cond_1
    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/cybergarage/sql/Database;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRecordedInfos()[Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;
    .locals 9

    .prologue
    .line 77
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 79
    .local v5, recVec:Ljava/util/Vector;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythDatabase;->getRecordFilePrefix()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, recFilePrefix:Ljava/lang/String;
    const-string v6, "select * from recorded"

    .line 83
    .local v6, sql:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lorg/cybergarage/sql/Database;->query(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 84
    const/4 v7, 0x0

    new-array v1, v7, [Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;

    .line 106
    :cond_0
    return-object v1

    .line 86
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/cybergarage/sql/Database;->fetch()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 87
    new-instance v4, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;

    invoke-direct {v4}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;-><init>()V

    .line 88
    .local v4, recInfo:Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;
    invoke-virtual {v4, v3}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->setRecordFilePrefix(Ljava/lang/String;)V

    .line 89
    const-string v7, "chanid"

    invoke-virtual {p0, v7}, Lorg/cybergarage/sql/Database;->getInteger(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->setChanID(I)V

    .line 90
    const-string v7, "recordid"

    invoke-virtual {p0, v7}, Lorg/cybergarage/sql/Database;->getInteger(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->setRecordID(I)V

    .line 91
    const-string v7, "starttime"

    invoke-virtual {p0, v7}, Lorg/cybergarage/sql/Database;->getTimestamp(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->setStartTime(J)V

    .line 92
    const-string v7, "endtime"

    invoke-virtual {p0, v7}, Lorg/cybergarage/sql/Database;->getTimestamp(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->setEndTime(J)V

    .line 93
    const-string v7, "title"

    invoke-virtual {p0, v7}, Lorg/cybergarage/sql/Database;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->setTitle(Ljava/lang/String;)V

    .line 94
    const-string v7, "subtitle"

    invoke-virtual {p0, v7}, Lorg/cybergarage/sql/Database;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->setSubTitle(Ljava/lang/String;)V

    .line 95
    const-string v7, "description"

    invoke-virtual {p0, v7}, Lorg/cybergarage/sql/Database;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->setDescription(Ljava/lang/String;)V

    .line 96
    const-string v7, "category"

    invoke-virtual {p0, v7}, Lorg/cybergarage/sql/Database;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->setCategory(Ljava/lang/String;)V

    .line 97
    const-string v7, "basename"

    invoke-virtual {p0, v7}, Lorg/cybergarage/sql/Database;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->setFileName(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v4}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->setFileSize(J)V

    .line 99
    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    .end local v4           #recInfo:Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;
    :cond_2
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    .line 103
    .local v2, recCnt:I
    new-array v1, v2, [Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;

    .line 104
    .local v1, recArray:[Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;
    const/4 v0, 0x0

    .local v0, n:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 105
    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;

    aput-object v7, v1, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public open()Z
    .locals 1

    .prologue
    .line 51
    const-string v0, "localhost"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythDatabase;->open(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;)Z
    .locals 3
    .parameter "host"

    .prologue
    .line 45
    const-string v0, "mythconverg"

    const-string v1, "mythtv"

    const-string v2, "mythtv"

    invoke-super {p0, p1, v0, v1, v2}, Lorg/cybergarage/sql/mysql/MySQL;->open(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
