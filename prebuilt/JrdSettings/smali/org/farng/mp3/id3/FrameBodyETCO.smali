.class public Lorg/farng/mp3/id3/FrameBodyETCO;
.super Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
.source "FrameBodyETCO.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 90
    return-void
.end method

.method public constructor <init>(BBI)V
    .locals 4
    .parameter "timeStampFormat"
    .parameter "event"
    .parameter "timeStamp"

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 103
    const-string v0, "Time Stamp Format"

    new-instance v1, Ljava/lang/Long;

    int-to-long v2, p1

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0, v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p0, p2, p3}, Lorg/farng/mp3/id3/FrameBodyETCO;->addGroup(BI)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/InvalidTagException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 111
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->read(Ljava/io/RandomAccessFile;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyETCO;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 97
    return-void
.end method


# virtual methods
.method public addGroup(BI)V
    .locals 5
    .parameter "event"
    .parameter "timeStamp"

    .prologue
    .line 127
    const-string v3, "Data"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/AbstractMP3FragmentBody;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/object/ObjectGroupRepeated;

    .line 128
    .local v1, group:Lorg/farng/mp3/object/ObjectGroupRepeated;
    new-instance v0, Lorg/farng/mp3/object/ObjectNumberHashMap;

    const-string v3, "Type Of Event"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Lorg/farng/mp3/object/ObjectNumberHashMap;-><init>(Ljava/lang/String;I)V

    .line 129
    .local v0, ev:Lorg/farng/mp3/object/AbstractMP3Object;
    new-instance v2, Lorg/farng/mp3/object/ObjectNumberFixedLength;

    const-string v3, "Time Stamp"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lorg/farng/mp3/object/ObjectNumberFixedLength;-><init>(Ljava/lang/String;I)V

    .line 130
    .local v2, ts:Lorg/farng/mp3/object/AbstractMP3Object;
    invoke-virtual {v1, v0}, Lorg/farng/mp3/object/ObjectGroupRepeated;->addObject(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 131
    invoke-virtual {v1, v2}, Lorg/farng/mp3/object/ObjectGroupRepeated;->addObject(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 132
    const-string v3, "Data"

    invoke-virtual {p0, v3, v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ETCO\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/farng/mp3/id3/FrameBodyETCO;->getOwner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "Owner"

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOwner(Ljava/lang/String;)V
    .locals 1
    .parameter "description"

    .prologue
    .line 123
    const-string v0, "Owner"

    invoke-virtual {p0, v0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method protected setupObjectList()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 136
    new-instance v1, Lorg/farng/mp3/object/ObjectNumberHashMap;

    const-string v2, "Time Stamp Format"

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/object/ObjectNumberHashMap;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 137
    new-instance v0, Lorg/farng/mp3/object/ObjectGroupRepeated;

    const-string v1, "Data"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectGroupRepeated;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, group:Lorg/farng/mp3/object/ObjectGroupRepeated;
    new-instance v1, Lorg/farng/mp3/object/ObjectNumberHashMap;

    const-string v2, "Type Of Event"

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/object/ObjectNumberHashMap;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/farng/mp3/object/ObjectGroupRepeated;->addProperty(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 139
    new-instance v1, Lorg/farng/mp3/object/ObjectNumberFixedLength;

    const-string v2, "Time Stamp"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/object/ObjectNumberFixedLength;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/farng/mp3/object/ObjectGroupRepeated;->addProperty(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 140
    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 141
    return-void
.end method
