.class public Lorg/farng/mp3/object/ObjectLyrics3Line;
.super Lorg/farng/mp3/object/AbstractMP3Object;
.source "ObjectLyrics3Line.java"


# instance fields
.field private lyric:Ljava/lang/String;

.field private timeStamp:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "identifier"

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->timeStamp:Ljava/util/LinkedList;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->lyric:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->identifier:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/object/ObjectLyrics3Line;)V
    .locals 4
    .parameter "copyObject"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 15
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->timeStamp:Ljava/util/LinkedList;

    .line 16
    const-string v2, ""

    iput-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->lyric:Ljava/lang/String;

    .line 30
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lorg/farng/mp3/object/ObjectLyrics3Line;->lyric:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->lyric:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p1, Lorg/farng/mp3/object/ObjectLyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 33
    new-instance v1, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    iget-object v2, p1, Lorg/farng/mp3/object/ObjectLyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    invoke-direct {v1, v2}, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;-><init>(Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;)V

    .line 34
    .local v1, newTimeStamp:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    .end local v1           #newTimeStamp:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;
    :cond_0
    return-void
.end method


# virtual methods
.method public addLyric(Ljava/lang/String;)V
    .locals 2
    .parameter "newLyric"

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->lyric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->lyric:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public addLyric(Lorg/farng/mp3/object/ObjectID3v2LyricLine;)V
    .locals 2
    .parameter "line"

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->lyric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->lyric:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public addTimeStamp(Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 76
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 80
    instance-of v2, p1, Lorg/farng/mp3/object/ObjectLyrics3Line;

    if-nez v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 83
    check-cast v0, Lorg/farng/mp3/object/ObjectLyrics3Line;

    .line 84
    .local v0, objectLyrics3Line:Lorg/farng/mp3/object/ObjectLyrics3Line;
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->lyric:Ljava/lang/String;

    iget-object v3, v0, Lorg/farng/mp3/object/ObjectLyrics3Line;->lyric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->timeStamp:Ljava/util/LinkedList;

    iget-object v3, v0, Lorg/farng/mp3/object/ObjectLyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-super {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getLyric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->lyric:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 3

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 53
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    invoke-virtual {v2}, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->lyric:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method public getTimeStamp()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public hasTimeStamp()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readString(Ljava/lang/String;I)V
    .locals 5
    .parameter "lineString"
    .parameter "offset"

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Image is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p2, v2, :cond_2

    .line 105
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Offset to line is out of bounds: offset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", line.length()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_2
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->timeStamp:Ljava/util/LinkedList;

    .line 113
    const-string v2, "["

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 114
    .local v0, delim:I
    :goto_0
    if-ltz v0, :cond_3

    .line 115
    const-string v2, "]"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 p2, v2, 0x1

    .line 116
    new-instance v1, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    const-string v2, "Time Stamp"

    invoke-direct {v1, v2}, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/farng/mp3/object/AbstractMP3Object;->readString(Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v2, "["

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 121
    .end local v1           #time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->lyric:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setLyric(Ljava/lang/String;)V
    .locals 0
    .parameter "lyric"

    .prologue
    .line 39
    iput-object p1, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->lyric:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setLyric(Lorg/farng/mp3/object/ObjectID3v2LyricLine;)V
    .locals 1
    .parameter "line"

    .prologue
    .line 43
    invoke-virtual {p1}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->lyric:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setTimeStamp(Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 59
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 60
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    const-string v1, ""

    .line 126
    .local v1, str:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeStamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lyric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->lyric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 133
    const-string v1, ""

    .line 135
    .local v1, str:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 136
    iget-object v3, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    .line 137
    .local v2, time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->writeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v2           #time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/farng/mp3/object/ObjectLyrics3Line;->lyric:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
