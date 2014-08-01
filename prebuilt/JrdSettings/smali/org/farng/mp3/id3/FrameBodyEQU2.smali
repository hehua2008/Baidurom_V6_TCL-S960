.class public Lorg/farng/mp3/id3/FrameBodyEQU2;
.super Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
.source "FrameBodyEQU2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;SS)V
    .locals 2
    .parameter "interpolationMethod"
    .parameter "owner"
    .parameter "frequency"
    .parameter "volumeAdjustment"

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 84
    const-string v0, "Interpolation Method"

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p0, v0, v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v0, "Owner"

    invoke-virtual {p0, v0, p2}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p0, p3, p4}, Lorg/farng/mp3/id3/FrameBodyEQU2;->addGroup(SS)V

    .line 87
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
    .line 92
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 93
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->read(Ljava/io/RandomAccessFile;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyEQU2;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 75
    return-void
.end method


# virtual methods
.method public addGroup(SS)V
    .locals 5
    .parameter "frequency"
    .parameter "volumeAdjustment"

    .prologue
    const/4 v4, 0x2

    .line 109
    const-string v3, "Data"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/AbstractMP3FragmentBody;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/object/ObjectGroupRepeated;

    .line 110
    .local v1, group:Lorg/farng/mp3/object/ObjectGroupRepeated;
    new-instance v0, Lorg/farng/mp3/object/ObjectNumberFixedLength;

    const-string v3, "Frequency"

    invoke-direct {v0, v3, v4}, Lorg/farng/mp3/object/ObjectNumberFixedLength;-><init>(Ljava/lang/String;I)V

    .line 111
    .local v0, freq:Lorg/farng/mp3/object/AbstractMP3Object;
    new-instance v2, Lorg/farng/mp3/object/ObjectNumberFixedLength;

    const-string v3, "Volume Adjustment"

    invoke-direct {v2, v3, v4}, Lorg/farng/mp3/object/ObjectNumberFixedLength;-><init>(Ljava/lang/String;I)V

    .line 112
    .local v2, volume:Lorg/farng/mp3/object/AbstractMP3Object;
    invoke-virtual {v1, v0}, Lorg/farng/mp3/object/ObjectGroupRepeated;->addObject(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 113
    invoke-virtual {v1, v2}, Lorg/farng/mp3/object/ObjectGroupRepeated;->addObject(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 114
    const-string v3, "Data"

    invoke-virtual {p0, v3, v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EQU2\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/farng/mp3/id3/FrameBodyEQU2;->getOwner()Ljava/lang/String;

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
    .line 101
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
    .line 105
    const-string v0, "Owner"

    invoke-virtual {p0, v0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method protected setupObjectList()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 118
    new-instance v1, Lorg/farng/mp3/object/ObjectNumberHashMap;

    const-string v2, "Interpolation Method"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/object/ObjectNumberHashMap;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 119
    new-instance v1, Lorg/farng/mp3/object/ObjectStringNullTerminated;

    const-string v2, "Owner"

    invoke-direct {v1, v2}, Lorg/farng/mp3/object/ObjectStringNullTerminated;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 120
    new-instance v0, Lorg/farng/mp3/object/ObjectGroupRepeated;

    const-string v1, "Data"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectGroupRepeated;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, group:Lorg/farng/mp3/object/ObjectGroupRepeated;
    new-instance v1, Lorg/farng/mp3/object/ObjectNumberFixedLength;

    const-string v2, "Frequency"

    invoke-direct {v1, v2, v4}, Lorg/farng/mp3/object/ObjectNumberFixedLength;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/farng/mp3/object/ObjectGroupRepeated;->addProperty(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 122
    new-instance v1, Lorg/farng/mp3/object/ObjectNumberFixedLength;

    const-string v2, "Volume Adjustment"

    invoke-direct {v1, v2, v4}, Lorg/farng/mp3/object/ObjectNumberFixedLength;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/farng/mp3/object/ObjectGroupRepeated;->addProperty(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 123
    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 124
    return-void
.end method
