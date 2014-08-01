.class public Lorg/farng/mp3/lyrics3/FieldBodyLYR;
.super Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
.source "FieldBodyLYR.java"


# instance fields
.field private lines:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/InvalidTagException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {p0, p1}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->read(Ljava/io/RandomAccessFile;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "line"

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    .line 54
    invoke-direct {p0, p1}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->readString(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodySYLT;)V
    .locals 1
    .parameter "sync"

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p0, p1}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->addLyric(Lorg/farng/mp3/id3/FrameBodySYLT;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyUSLT;)V
    .locals 1
    .parameter "unsync"

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p0, p1}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->addLyric(Lorg/farng/mp3/id3/FrameBodyUSLT;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/lyrics3/FieldBodyLYR;)V
    .locals 4
    .parameter "copyObject"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;-><init>(Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;)V

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    .line 42
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p1, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 43
    iget-object v3, p1, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/object/ObjectLyrics3Line;

    .line 44
    .local v2, oldObject:Lorg/farng/mp3/object/ObjectLyrics3Line;
    new-instance v1, Lorg/farng/mp3/object/ObjectLyrics3Line;

    invoke-direct {v1, v2}, Lorg/farng/mp3/object/ObjectLyrics3Line;-><init>(Lorg/farng/mp3/object/ObjectLyrics3Line;)V

    .line 45
    .local v1, newObject:Lorg/farng/mp3/object/AbstractMP3Object;
    iget-object v3, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v1           #newObject:Lorg/farng/mp3/object/AbstractMP3Object;
    .end local v2           #oldObject:Lorg/farng/mp3/object/ObjectLyrics3Line;
    :cond_0
    return-void
.end method

.method private readString(Ljava/lang/String;)V
    .locals 5
    .parameter "lineString"

    .prologue
    .line 236
    const/4 v2, 0x0

    .line 237
    .local v2, offset:I
    sget-object v4, Lorg/farng/mp3/TagConstant;->SEPERATOR_LINE:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 238
    .local v0, delim:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    .line 240
    :goto_0
    if-ltz v0, :cond_0

    .line 241
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, token:Ljava/lang/String;
    new-instance v1, Lorg/farng/mp3/object/ObjectLyrics3Line;

    const-string v4, "Lyric Line"

    invoke-direct {v1, v4}, Lorg/farng/mp3/object/ObjectLyrics3Line;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, line:Lorg/farng/mp3/object/ObjectLyrics3Line;
    invoke-virtual {v1, v3}, Lorg/farng/mp3/object/ObjectLyrics3Line;->setLyric(Ljava/lang/String;)V

    .line 244
    iget-object v4, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {p0, v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 246
    sget-object v4, Lorg/farng/mp3/TagConstant;->SEPERATOR_LINE:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v2, v0, v4

    .line 247
    sget-object v4, Lorg/farng/mp3/TagConstant;->SEPERATOR_LINE:Ljava/lang/String;

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 249
    .end local v1           #line:Lorg/farng/mp3/object/ObjectLyrics3Line;
    .end local v3           #token:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 250
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 251
    .restart local v3       #token:Ljava/lang/String;
    new-instance v1, Lorg/farng/mp3/object/ObjectLyrics3Line;

    const-string v4, "Lyric Line"

    invoke-direct {v1, v4}, Lorg/farng/mp3/object/ObjectLyrics3Line;-><init>(Ljava/lang/String;)V

    .line 252
    .restart local v1       #line:Lorg/farng/mp3/object/ObjectLyrics3Line;
    invoke-virtual {v1, v3}, Lorg/farng/mp3/object/ObjectLyrics3Line;->setLyric(Ljava/lang/String;)V

    .line 253
    iget-object v4, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {p0, v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 256
    .end local v1           #line:Lorg/farng/mp3/object/ObjectLyrics3Line;
    .end local v3           #token:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private writeString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 260
    const-string v2, ""

    .line 261
    .local v2, str:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 262
    iget-object v3, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/object/ObjectLyrics3Line;

    .line 263
    .local v1, line:Lorg/farng/mp3/object/ObjectLyrics3Line;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/farng/mp3/object/ObjectLyrics3Line;->writeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/farng/mp3/TagConstant;->SEPERATOR_LINE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .end local v1           #line:Lorg/farng/mp3/object/ObjectLyrics3Line;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public addLyric(Lorg/farng/mp3/id3/FrameBodySYLT;)V
    .locals 9
    .parameter "sync"

    .prologue
    .line 115
    invoke-virtual {p1}, Lorg/farng/mp3/id3/FrameBodySYLT;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 119
    .local v2, iterator:Ljava/util/Iterator;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v3, lineMap:Ljava/util/HashMap;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 121
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;

    .line 124
    .local v0, currentLine:Lorg/farng/mp3/object/ObjectID3v2LyricLine;
    new-instance v1, Lorg/farng/mp3/object/ObjectID3v2LyricLine;

    invoke-direct {v1, v0}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;-><init>(Lorg/farng/mp3/object/ObjectID3v2LyricLine;)V

    .line 125
    .end local v0           #currentLine:Lorg/farng/mp3/object/ObjectID3v2LyricLine;
    .local v1, currentLine:Lorg/farng/mp3/object/ObjectID3v2LyricLine;
    new-instance v5, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    const-string v6, "Time Stamp"

    invoke-direct {v5, v6}, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;-><init>(Ljava/lang/String;)V

    .line 126
    .local v5, timeStamp:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;
    invoke-virtual {v1}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->getTimeStamp()J

    move-result-wide v6

    invoke-virtual {p1}, Lorg/farng/mp3/id3/FrameBodySYLT;->getTimeStampFormat()B

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->setTimeStamp(JB)V

    .line 127
    invoke-virtual {v1}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 128
    invoke-virtual {v1}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/farng/mp3/object/ObjectLyrics3Line;

    .line 129
    .local v4, newLine:Lorg/farng/mp3/object/ObjectLyrics3Line;
    invoke-virtual {v4, v5}, Lorg/farng/mp3/object/ObjectLyrics3Line;->addTimeStamp(Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;)V

    goto :goto_0

    .line 131
    .end local v4           #newLine:Lorg/farng/mp3/object/ObjectLyrics3Line;
    :cond_0
    new-instance v4, Lorg/farng/mp3/object/ObjectLyrics3Line;

    const-string v6, "Lyric Line"

    invoke-direct {v4, v6}, Lorg/farng/mp3/object/ObjectLyrics3Line;-><init>(Ljava/lang/String;)V

    .line 132
    .restart local v4       #newLine:Lorg/farng/mp3/object/ObjectLyrics3Line;
    invoke-virtual {v4, v1}, Lorg/farng/mp3/object/ObjectLyrics3Line;->setLyric(Lorg/farng/mp3/object/ObjectID3v2LyricLine;)V

    .line 133
    invoke-virtual {v4, v5}, Lorg/farng/mp3/object/ObjectLyrics3Line;->setTimeStamp(Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;)V

    .line 134
    invoke-virtual {v1}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v6, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    .end local v1           #currentLine:Lorg/farng/mp3/object/ObjectID3v2LyricLine;
    .end local v4           #newLine:Lorg/farng/mp3/object/ObjectLyrics3Line;
    .end local v5           #timeStamp:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;
    :cond_1
    return-void
.end method

.method public addLyric(Lorg/farng/mp3/id3/FrameBodyUSLT;)V
    .locals 3
    .parameter "unsync"

    .prologue
    .line 143
    new-instance v0, Lorg/farng/mp3/object/ObjectLyrics3Line;

    const-string v1, "Lyric Line"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectLyrics3Line;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, line:Lorg/farng/mp3/object/ObjectLyrics3Line;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/farng/mp3/id3/FrameBodyUSLT;->getLyric()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/farng/mp3/object/ObjectLyrics3Line;->setLyric(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 147
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 150
    instance-of v2, p1, Lorg/farng/mp3/lyrics3/FieldBodyLYR;

    if-nez v2, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 153
    check-cast v0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;

    .line 154
    .local v0, fieldBodyLYR:Lorg/farng/mp3/lyrics3/FieldBodyLYR;
    iget-object v2, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-super {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "LYR"

    return-object v0
.end method

.method public getLyric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->writeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 91
    const/4 v2, 0x0

    .line 93
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 94
    iget-object v3, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/object/ObjectLyrics3Line;

    .line 95
    .local v1, line:Lorg/farng/mp3/object/ObjectLyrics3Line;
    invoke-virtual {v1}, Lorg/farng/mp3/object/ObjectLyrics3Line;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v1           #line:Lorg/farng/mp3/object/ObjectLyrics3Line;
    :cond_0
    return v2
.end method

.method public hasTimeStamp()Z
    .locals 3

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, present:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 166
    iget-object v2, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/object/ObjectLyrics3Line;

    invoke-virtual {v2}, Lorg/farng/mp3/object/ObjectLyrics3Line;->hasTimeStamp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const/4 v1, 0x1

    .line 165
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    return v1
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v3, 0x0

    .line 101
    instance-of v2, p1, Lorg/farng/mp3/lyrics3/FieldBodyLYR;

    if-nez v2, :cond_0

    move v2, v3

    .line 110
    :goto_0
    return v2

    :cond_0
    move-object v2, p1

    .line 104
    check-cast v2, Lorg/farng/mp3/lyrics3/FieldBodyLYR;

    iget-object v1, v2, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    .line 105
    .local v1, superset:Ljava/util/ArrayList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 106
    iget-object v2, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 107
    goto :goto_0

    .line 105
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    :cond_2
    invoke-super {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->isSubsetOf(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 6
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/InvalidTagException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 183
    new-array v0, v4, [B

    .line 186
    .local v0, buffer:[B
    invoke-virtual {p1, v0, v5, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 187
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v5, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 188
    .local v2, size:I
    if-nez v2, :cond_0

    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v3

    invoke-virtual {v3}, Lorg/farng/mp3/TagOptionSingleton;->isLyrics3KeepEmptyFieldIfRead()Z

    move-result v3

    if-nez v3, :cond_0

    .line 189
    new-instance v3, Lorg/farng/mp3/InvalidTagException;

    const-string v4, "Lyircs3v2 Field has size of zero."

    invoke-direct {v3, v4}, Lorg/farng/mp3/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 191
    :cond_0
    new-array v0, v2, [B

    .line 194
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 195
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 196
    .local v1, lineString:Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->readString(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setLyric(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->readString(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method protected setupObjectList()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, str:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return-object v1
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 8
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    .line 209
    const/4 v2, 0x0

    .line 210
    .local v2, offset:I
    new-array v0, v7, [B

    .line 212
    .local v0, buffer:[B
    invoke-virtual {p0}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->getSize()I

    move-result v3

    .line 213
    .local v3, size:I
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, str:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x5

    if-ge v1, v5, :cond_0

    .line 215
    const/16 v5, 0x30

    aput-byte v5, v0, v1

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x5

    add-int/2addr v2, v5

    .line 218
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 219
    add-int v5, v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 221
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    .line 222
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 223
    if-lez v3, :cond_3

    .line 224
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->writeString()Ljava/lang/String;

    move-result-object v4

    .line 225
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    new-array v0, v5, [B

    .line 226
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 227
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 229
    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 231
    :cond_3
    return-void
.end method
