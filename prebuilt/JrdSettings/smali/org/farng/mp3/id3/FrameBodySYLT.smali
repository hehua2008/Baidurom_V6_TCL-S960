.class public Lorg/farng/mp3/id3/FrameBodySYLT;
.super Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
.source "FrameBodySYLT.java"


# instance fields
.field contentType:B

.field description:Ljava/lang/String;

.field language:Ljava/lang/String;

.field lines:Ljava/util/LinkedList;

.field textEncoding:B

.field timeStampFormat:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 105
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->description:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->language:Ljava/lang/String;

    .line 108
    iput-byte v1, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->contentType:B

    .line 109
    iput-byte v1, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->textEncoding:B

    .line 110
    iput-byte v1, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->timeStampFormat:B

    .line 117
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;BBLjava/lang/String;)V
    .locals 2
    .parameter "textEncoding"
    .parameter "language"
    .parameter "timeStampFormat"
    .parameter "contentType"
    .parameter "description"

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 105
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->description:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->language:Ljava/lang/String;

    .line 108
    iput-byte v1, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->contentType:B

    .line 109
    iput-byte v1, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->textEncoding:B

    .line 110
    iput-byte v1, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->timeStampFormat:B

    .line 144
    iput-byte p1, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->textEncoding:B

    .line 145
    iput-object p2, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->language:Ljava/lang/String;

    .line 146
    iput-byte p3, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->timeStampFormat:B

    .line 147
    iput-byte p4, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->contentType:B

    .line 148
    iput-object p5, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->description:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 2
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/InvalidTagException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 105
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->description:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->language:Ljava/lang/String;

    .line 108
    iput-byte v1, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->contentType:B

    .line 109
    iput-byte v1, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->textEncoding:B

    .line 110
    iput-byte v1, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->timeStampFormat:B

    .line 155
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/FrameBodySYLT;->read(Ljava/io/RandomAccessFile;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodySYLT;)V
    .locals 4
    .parameter "copyObject"

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 105
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    .line 106
    const-string v2, ""

    iput-object v2, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->description:Ljava/lang/String;

    .line 107
    const-string v2, ""

    iput-object v2, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->language:Ljava/lang/String;

    .line 108
    iput-byte v3, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->contentType:B

    .line 109
    iput-byte v3, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->textEncoding:B

    .line 110
    iput-byte v3, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->timeStampFormat:B

    .line 124
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lorg/farng/mp3/id3/FrameBodySYLT;->description:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->description:Ljava/lang/String;

    .line 125
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lorg/farng/mp3/id3/FrameBodySYLT;->language:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->language:Ljava/lang/String;

    .line 126
    iget-byte v2, p1, Lorg/farng/mp3/id3/FrameBodySYLT;->contentType:B

    iput-byte v2, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->contentType:B

    .line 127
    iget-byte v2, p1, Lorg/farng/mp3/id3/FrameBodySYLT;->textEncoding:B

    iput-byte v2, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->textEncoding:B

    .line 128
    iget-byte v2, p1, Lorg/farng/mp3/id3/FrameBodySYLT;->timeStampFormat:B

    iput-byte v2, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->timeStampFormat:B

    .line 130
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p1, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 131
    new-instance v1, Lorg/farng/mp3/object/ObjectID3v2LyricLine;

    iget-object v2, p1, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/object/ObjectID3v2LyricLine;

    invoke-direct {v1, v2}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;-><init>(Lorg/farng/mp3/object/ObjectID3v2LyricLine;)V

    .line 132
    .local v1, newLine:Lorg/farng/mp3/object/ObjectID3v2LyricLine;
    iget-object v2, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v1           #newLine:Lorg/farng/mp3/object/ObjectID3v2LyricLine;
    :cond_0
    return-void
.end method


# virtual methods
.method public addLyric(ILjava/lang/String;)V
    .locals 3
    .parameter "timeStamp"
    .parameter "text"

    .prologue
    .line 200
    new-instance v0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;

    const-string v1, "Lyric Line"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, line:Lorg/farng/mp3/object/ObjectID3v2LyricLine;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->setTimeStamp(J)V

    .line 202
    invoke-virtual {v0, p2}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->setText(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public addLyric(Lorg/farng/mp3/object/ObjectLyrics3Line;)V
    .locals 10
    .parameter "line"

    .prologue
    .line 207
    invoke-virtual {p1}, Lorg/farng/mp3/object/ObjectLyrics3Line;->getTimeStamp()Ljava/util/Iterator;

    move-result-object v1

    .line 209
    .local v1, iterator:Ljava/util/Iterator;
    invoke-virtual {p1}, Lorg/farng/mp3/object/ObjectLyrics3Line;->getLyric()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, lyric:Ljava/lang/String;
    new-instance v0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;

    const-string v6, "Lyric Line"

    invoke-direct {v0, v6}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, id3Line:Lorg/farng/mp3/object/ObjectID3v2LyricLine;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 215
    const-wide/16 v3, 0x0

    .line 216
    .local v3, time:J
    invoke-virtual {v0, v3, v4}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->setTimeStamp(J)V

    .line 217
    invoke-virtual {v0, v2}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->setText(Ljava/lang/String;)V

    .line 218
    iget-object v6, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v3           #time:J
    :cond_0
    return-void

    .line 220
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 221
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    .line 222
    .local v5, timeStamp:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;
    invoke-virtual {v5}, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->getMinute()J

    move-result-wide v6

    const-wide/16 v8, 0x3c

    mul-long/2addr v6, v8

    invoke-virtual {v5}, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->getSecond()J

    move-result-wide v8

    add-long v3, v6, v8

    .line 223
    .restart local v3       #time:J
    const-wide/16 v6, 0x3e8

    mul-long/2addr v3, v6

    .line 224
    invoke-virtual {v0, v3, v4}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->setTimeStamp(J)V

    .line 225
    invoke-virtual {v0, v2}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->setText(Ljava/lang/String;)V

    .line 226
    iget-object v6, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public equals()V
    .locals 2

    .prologue
    .line 239
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method equals() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentType()B
    .locals 1

    .prologue
    .line 159
    iget-byte v0, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->contentType:B

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string v0, "SYLT"

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLyric()Ljava/lang/String;
    .locals 4

    .prologue
    .line 175
    const-string v1, ""

    .line 176
    .local v1, lyrics:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_0
    return-object v1
.end method

.method public getSize()I
    .locals 3

    .prologue
    .line 184
    iget-object v2, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, 0x6

    .line 185
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 186
    iget-object v2, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/object/ObjectID3v2LyricLine;

    invoke-virtual {v2}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    return v1
.end method

.method public getTextEncoding()B
    .locals 1

    .prologue
    .line 192
    iget-byte v0, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->textEncoding:B

    return v0
.end method

.method public getTimeStampFormat()B
    .locals 1

    .prologue
    .line 196
    iget-byte v0, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->timeStampFormat:B

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 9
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/InvalidTagException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 253
    const/4 v3, 0x0

    .line 256
    .local v3, offset:I
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;->readHeader(Ljava/io/RandomAccessFile;)I

    move-result v5

    .line 257
    .local v5, size:I
    new-array v0, v5, [B

    .line 258
    .local v0, buffer:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 259
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 260
    .local v6, str:Ljava/lang/String;
    add-int/lit8 v4, v3, 0x1

    .end local v3           #offset:I
    .local v4, offset:I
    aget-byte v7, v0, v3

    iput-byte v7, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->textEncoding:B

    .line 261
    const/4 v7, 0x4

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->language:Ljava/lang/String;

    .line 262
    add-int/lit8 v3, v4, 0x3

    .line 263
    .end local v4           #offset:I
    .restart local v3       #offset:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #offset:I
    .restart local v4       #offset:I
    aget-byte v7, v0, v3

    iput-byte v7, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->timeStampFormat:B

    .line 264
    add-int/lit8 v3, v4, 0x1

    .end local v4           #offset:I
    .restart local v3       #offset:I
    aget-byte v7, v0, v4

    iput-byte v7, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->contentType:B

    .line 265
    invoke-virtual {v6, v8, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 266
    .local v2, delim:I
    invoke-virtual {v6, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->description:Ljava/lang/String;

    .line 267
    add-int/lit8 v3, v2, 0x1

    .line 268
    sub-int v7, v5, v3

    new-array v1, v7, [B

    .line 269
    .local v1, data:[B
    sub-int v7, v5, v3

    invoke-static {v0, v3, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/FrameBodySYLT;->readByteArray([B)V

    .line 271
    return-void
.end method

.method public readByteArray([B)V
    .locals 7
    .parameter "arr"

    .prologue
    .line 274
    const/4 v3, 0x0

    .line 277
    .local v3, offset:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 278
    aget-byte v4, p1, v1

    if-nez v4, :cond_0

    .line 279
    move v0, v1

    .line 280
    .local v0, delim:I
    sub-int v4, v3, v0

    add-int/lit8 v4, v4, 0x4

    new-array v2, v4, [B

    .line 281
    .local v2, line:[B
    const/4 v4, 0x0

    sub-int v5, v3, v0

    add-int/lit8 v5, v5, 0x4

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    iget-object v4, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    new-instance v5, Lorg/farng/mp3/object/ObjectID3v2LyricLine;

    const-string v6, "Lyric Line"

    invoke-direct {v5, v6}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 283
    add-int/lit8 v1, v1, 0x4

    .line 284
    add-int/lit8 v3, v3, 0x4

    .line 277
    .end local v0           #delim:I
    .end local v2           #line:[B
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    :cond_1
    return-void
.end method

.method protected setupObjectList()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/farng/mp3/id3/FrameBodySYLT;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->textEncoding:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->language:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->timeStampFormat:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->contentType:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, str:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_0
    return-object v1
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 7
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 305
    const/4 v2, 0x0

    .line 306
    .local v2, offset:I
    invoke-virtual {p0}, Lorg/farng/mp3/id3/FrameBodySYLT;->getSize()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;->writeHeader(Ljava/io/RandomAccessFile;I)V

    .line 307
    invoke-virtual {p0}, Lorg/farng/mp3/id3/FrameBodySYLT;->getSize()I

    move-result v4

    new-array v0, v4, [B

    .line 308
    .local v0, buffer:[B
    add-int/lit8 v3, v2, 0x1

    .end local v2           #offset:I
    .local v3, offset:I
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->textEncoding:B

    aput-byte v4, v0, v2

    .line 309
    iget-object v4, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->language:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->language:Ljava/lang/String;

    .line 310
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->language:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 311
    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->language:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    :cond_0
    iget-object v4, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->language:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 314
    .end local v3           #offset:I
    .restart local v2       #offset:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #offset:I
    .restart local v3       #offset:I
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->timeStampFormat:B

    aput-byte v4, v0, v2

    .line 315
    add-int/lit8 v2, v3, 0x1

    .end local v3           #offset:I
    .restart local v2       #offset:I
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->contentType:B

    aput-byte v4, v0, v3

    .line 316
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->description:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 317
    add-int v4, v1, v2

    iget-object v5, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->description:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 319
    :cond_1
    iget-object v4, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->description:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    .line 320
    add-int/lit8 v3, v2, 0x1

    .end local v2           #offset:I
    .restart local v3       #offset:I
    aput-byte v6, v0, v2

    .line 321
    invoke-virtual {p0}, Lorg/farng/mp3/id3/FrameBodySYLT;->writeByteArray()[B

    move-result-object v4

    array-length v5, v0

    sub-int/2addr v5, v3

    invoke-static {v4, v6, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 323
    return-void
.end method

.method public writeByteArray()[B
    .locals 8

    .prologue
    .line 327
    const/4 v2, 0x0

    .line 328
    .local v2, line:Lorg/farng/mp3/object/ObjectID3v2LyricLine;
    const/4 v3, 0x0

    .line 329
    .local v3, offset:I
    const/4 v4, 0x0

    .line 330
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 331
    iget-object v5, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #line:Lorg/farng/mp3/object/ObjectID3v2LyricLine;
    check-cast v2, Lorg/farng/mp3/object/ObjectID3v2LyricLine;

    .line 332
    .restart local v2       #line:Lorg/farng/mp3/object/ObjectID3v2LyricLine;
    invoke-virtual {v2}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->getSize()I

    move-result v5

    add-int/2addr v4, v5

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    :cond_0
    new-array v0, v4, [B

    .line 335
    .local v0, arr:[B
    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 336
    iget-object v5, p0, Lorg/farng/mp3/id3/FrameBodySYLT;->lines:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #line:Lorg/farng/mp3/object/ObjectID3v2LyricLine;
    check-cast v2, Lorg/farng/mp3/object/ObjectID3v2LyricLine;

    .line 335
    .restart local v2       #line:Lorg/farng/mp3/object/ObjectID3v2LyricLine;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 338
    :cond_1
    if-eqz v2, :cond_2

    .line 339
    invoke-virtual {v2}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->writeByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->getSize()I

    move-result v7

    invoke-static {v5, v6, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    invoke-virtual {v2}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->getSize()I

    move-result v5

    add-int/2addr v3, v5

    .line 342
    :cond_2
    return-object v0
.end method
