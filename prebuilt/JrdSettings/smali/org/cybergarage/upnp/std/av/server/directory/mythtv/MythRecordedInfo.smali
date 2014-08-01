.class public Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;
.super Ljava/lang/Object;
.source "MythRecordedInfo.java"


# static fields
.field private static final NUV_FILE_DATE_FORMAT:Ljava/lang/String; = "yyyyMMddHHmmss"

.field private static final NUV_FILE_EXT:Ljava/lang/String; = "nuv"


# instance fields
.field private category:Ljava/lang/String;

.field private chanID:I

.field private description:Ljava/lang/String;

.field private endTime:J

.field private fname:Ljava/lang/String;

.field private fsize:J

.field private recGroup:Ljava/lang/String;

.field private recordFilePrefix:Ljava/lang/String;

.field private recordID:I

.field private startTime:J

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getChanID()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->chanID:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->endTime:J

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .locals 4

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->getRecordFilePrefix()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, filePrefix:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, fname:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->fname:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->fsize:J

    return-wide v0
.end method

.method public getRecGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->recGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordFilePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->recordFilePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordID()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->recordID:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->startTime:J

    return-wide v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public print()V
    .locals 2

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subTitle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 55
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->category:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setChanID(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 69
    iput p1, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->chanID:I

    .line 70
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 83
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->description:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .parameter "l"

    .prologue
    .line 97
    iput-wide p1, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->endTime:J

    .line 98
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 210
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->fname:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .parameter "s"

    .prologue
    .line 201
    iput-wide p1, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->fsize:J

    .line 202
    return-void
.end method

.method public setRecGroup(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 111
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->recGroup:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setRecordFilePrefix(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 40
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->recordFilePrefix:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setRecordID(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 125
    iput p1, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->recordID:I

    .line 126
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .parameter "l"

    .prologue
    .line 139
    iput-wide p1, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->startTime:J

    .line 140
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 167
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->subTitle:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 153
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/directory/mythtv/MythRecordedInfo;->title:Ljava/lang/String;

    .line 154
    return-void
.end method
