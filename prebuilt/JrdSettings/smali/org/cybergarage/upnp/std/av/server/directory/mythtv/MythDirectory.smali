.class public Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythDirectory;
.super Lorg/cybergarage/upnp/std/av/server/Directory;
.source "MythDirectory.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "MythTV"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "MythTV"

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythDirectory;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/Directory;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private getAddedRecordedItemNodes()[Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;
    .locals 4

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNContentNodes()I

    move-result v1

    .line 51
    .local v1, nContents:I
    new-array v2, v1, [Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;

    .line 52
    .local v2, recNode:[Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 53
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v3

    check-cast v3, Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;

    aput-object v3, v2, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-object v2
.end method

.method private getCurrentRecordedInfos()[Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythDatabase;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythDatabase;-><init>()V

    .line 60
    .local v0, mythdb:Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythDatabase;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythDatabase;->open()Z

    .line 61
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythDatabase;->getRecordedInfos()[Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;

    move-result-object v1

    .line 62
    .local v1, recInfo:[Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;
    invoke-virtual {v0}, Lorg/cybergarage/sql/Database;->close()V

    .line 63
    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 129
    invoke-static {}, Lorg/cybergarage/util/Debug;->on()V

    .line 130
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythDirectory;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythDirectory;-><init>()V

    .line 131
    .local v0, mythdir:Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythDirectory;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythDirectory;->update()Z

    .line 132
    return-void
.end method


# virtual methods
.method public update()Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 72
    const/4 v10, 0x0

    .line 74
    .local v10, updateFlag:Z
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythDirectory;->getAddedRecordedItemNodes()[Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;

    move-result-object v0

    .line 75
    .local v0, addedItemNode:[Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythDirectory;->getCurrentRecordedInfos()[Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;

    move-result-object v1

    .line 76
    .local v1, currRecInfo:[Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;
    array-length v5, v0

    .line 77
    .local v5, nAddedItems:I
    array-length v6, v1

    .line 80
    .local v6, nCurrRecInfos:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 81
    aget-object v9, v0, v3

    .line 82
    .local v9, recItem:Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;
    const/4 v2, 0x0

    .line 83
    .local v2, hasRecItem:Z
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v6, :cond_0

    .line 84
    aget-object v8, v1, v4

    .line 85
    .local v8, recInfo:Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;
    invoke-virtual {v9, v8}, Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;->equals(Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;)Z

    move-result v11

    if-ne v11, v12, :cond_1

    .line 86
    const/4 v2, 0x1

    .line 90
    .end local v8           #recInfo:Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;
    :cond_0
    if-ne v2, v12, :cond_2

    .line 80
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .restart local v8       #recInfo:Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 92
    .end local v8           #recInfo:Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;
    :cond_2
    invoke-virtual {p0, v9}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->removeContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)Z

    .line 93
    const/4 v10, 0x1

    goto :goto_2

    .line 97
    .end local v2           #hasRecItem:Z
    .end local v4           #j:I
    .end local v9           #recItem:Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;
    :cond_3
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_3
    if-ge v4, v6, :cond_7

    .line 98
    aget-object v8, v1, v4

    .line 99
    .restart local v8       #recInfo:Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;
    const/4 v2, 0x0

    .line 100
    .restart local v2       #hasRecItem:Z
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_4

    .line 101
    aget-object v9, v0, v3

    .line 102
    .restart local v9       #recItem:Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;
    invoke-virtual {v9, v8}, Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;->equals(Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;)Z

    move-result v11

    if-ne v11, v12, :cond_5

    .line 103
    const/4 v2, 0x1

    .line 107
    .end local v9           #recItem:Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;
    :cond_4
    if-ne v2, v12, :cond_6

    .line 97
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 100
    .restart local v9       #recItem:Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 111
    .end local v9           #recItem:Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;
    :cond_6
    new-instance v9, Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;

    invoke-direct {v9}, Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;-><init>()V

    .line 112
    .restart local v9       #recItem:Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v11

    invoke-virtual {v11}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNextItemID()I

    move-result v7

    .line 113
    .local v7, newItemID:I
    invoke-virtual {v9, v7}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setID(I)V

    .line 114
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setContentDirectory(Lorg/cybergarage/upnp/std/av/server/ContentDirectory;)V

    .line 115
    invoke-virtual {v9, v8}, Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;->setRecordedInfo(Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;)V

    .line 116
    invoke-virtual {p0, v9}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 117
    const/4 v10, 0x1

    goto :goto_5

    .line 120
    .end local v2           #hasRecItem:Z
    .end local v7           #newItemID:I
    .end local v8           #recInfo:Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;
    .end local v9           #recItem:Lorg/cybergarage/upnp/std/av/server/object/item/mythtv/MythRecordedItemNode;
    :cond_7
    return v10
.end method
