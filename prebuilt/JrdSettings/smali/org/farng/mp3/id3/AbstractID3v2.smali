.class public abstract Lorg/farng/mp3/id3/AbstractID3v2;
.super Lorg/farng/mp3/id3/AbstractID3;
.source "AbstractID3v2.java"


# static fields
.field private static paddingCounter:I


# instance fields
.field private duplicateBytes:I

.field private duplicateFrameId:Ljava/lang/String;

.field private emptyFrameBytes:I

.field private fileReadSize:I

.field private frameMap:Ljava/util/Map;

.field private invalidFrameBytes:I

.field private majorVersion:B

.field private padding:I

.field private revision:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lorg/farng/mp3/id3/AbstractID3v2;->paddingCounter:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3;-><init>()V

    .line 29
    iput-object v1, p0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    .line 30
    iput-object v1, p0, Lorg/farng/mp3/id3/AbstractID3v2;->duplicateFrameId:Ljava/lang/String;

    .line 31
    iput-byte v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->majorVersion:B

    .line 32
    iput-byte v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->revision:B

    .line 33
    iput v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->duplicateBytes:I

    .line 34
    iput v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->emptyFrameBytes:I

    .line 35
    iput v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->fileReadSize:I

    .line 36
    iput v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->invalidFrameBytes:I

    .line 37
    iput v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->padding:I

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    .line 45
    return-void
.end method

.method protected constructor <init>(Lorg/farng/mp3/id3/AbstractID3v2;)V
    .locals 5
    .parameter "copyObject"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 51
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3;-><init>(Lorg/farng/mp3/id3/AbstractID3;)V

    .line 29
    iput-object v4, p0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    .line 30
    iput-object v4, p0, Lorg/farng/mp3/id3/AbstractID3v2;->duplicateFrameId:Ljava/lang/String;

    .line 31
    iput-byte v3, p0, Lorg/farng/mp3/id3/AbstractID3v2;->majorVersion:B

    .line 32
    iput-byte v3, p0, Lorg/farng/mp3/id3/AbstractID3v2;->revision:B

    .line 33
    iput v3, p0, Lorg/farng/mp3/id3/AbstractID3v2;->duplicateBytes:I

    .line 34
    iput v3, p0, Lorg/farng/mp3/id3/AbstractID3v2;->emptyFrameBytes:I

    .line 35
    iput v3, p0, Lorg/farng/mp3/id3/AbstractID3v2;->fileReadSize:I

    .line 36
    iput v3, p0, Lorg/farng/mp3/id3/AbstractID3v2;->invalidFrameBytes:I

    .line 37
    iput v3, p0, Lorg/farng/mp3/id3/AbstractID3v2;->padding:I

    .line 52
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    .line 53
    iget-object v3, p1, Lorg/farng/mp3/id3/AbstractID3v2;->duplicateFrameId:Ljava/lang/String;

    iput-object v3, p0, Lorg/farng/mp3/id3/AbstractID3v2;->duplicateFrameId:Ljava/lang/String;

    .line 54
    iget-byte v3, p1, Lorg/farng/mp3/id3/AbstractID3v2;->majorVersion:B

    iput-byte v3, p0, Lorg/farng/mp3/id3/AbstractID3v2;->majorVersion:B

    .line 55
    iget-byte v3, p1, Lorg/farng/mp3/id3/AbstractID3v2;->revision:B

    iput-byte v3, p0, Lorg/farng/mp3/id3/AbstractID3v2;->revision:B

    .line 56
    iget v3, p1, Lorg/farng/mp3/id3/AbstractID3v2;->duplicateBytes:I

    iput v3, p0, Lorg/farng/mp3/id3/AbstractID3v2;->duplicateBytes:I

    .line 57
    iget v3, p1, Lorg/farng/mp3/id3/AbstractID3v2;->emptyFrameBytes:I

    iput v3, p0, Lorg/farng/mp3/id3/AbstractID3v2;->emptyFrameBytes:I

    .line 58
    iget v3, p1, Lorg/farng/mp3/id3/AbstractID3v2;->fileReadSize:I

    iput v3, p0, Lorg/farng/mp3/id3/AbstractID3v2;->fileReadSize:I

    .line 59
    iget v3, p1, Lorg/farng/mp3/id3/AbstractID3v2;->invalidFrameBytes:I

    iput v3, p0, Lorg/farng/mp3/id3/AbstractID3v2;->invalidFrameBytes:I

    .line 60
    iget v3, p1, Lorg/farng/mp3/id3/AbstractID3v2;->padding:I

    iput v3, p0, Lorg/farng/mp3/id3/AbstractID3v2;->padding:I

    .line 61
    iget-object v3, p1, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 64
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    .local v0, identifier:Ljava/lang/String;
    iget-object v3, p1, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/farng/mp3/TagUtility;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/id3/AbstractID3v2Frame;

    .line 67
    .local v2, newFrame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    iget-object v3, p0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/farng/mp3/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    .end local v0           #identifier:Ljava/lang/String;
    .end local v2           #newFrame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    :cond_0
    return-void
.end method

.method protected static byteArrayToSize([B)I
    .locals 2
    .parameter "buffer"

    .prologue
    .line 276
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x15

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0xe

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected static decrementPaddingCounter()V
    .locals 1

    .prologue
    .line 297
    sget v0, Lorg/farng/mp3/id3/AbstractID3v2;->paddingCounter:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/farng/mp3/id3/AbstractID3v2;->paddingCounter:I

    .line 298
    return-void
.end method

.method protected static getPaddingCounter()I
    .locals 1

    .prologue
    .line 301
    sget v0, Lorg/farng/mp3/id3/AbstractID3v2;->paddingCounter:I

    return v0
.end method

.method protected static incrementPaddingCounter()V
    .locals 1

    .prologue
    .line 293
    sget v0, Lorg/farng/mp3/id3/AbstractID3v2;->paddingCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/farng/mp3/id3/AbstractID3v2;->paddingCounter:I

    .line 294
    return-void
.end method

.method protected static resetPaddingCounter()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    sput v0, Lorg/farng/mp3/id3/AbstractID3v2;->paddingCounter:I

    .line 290
    return-void
.end method

.method protected static sizeToByteArray(I)[B
    .locals 3
    .parameter "size"

    .prologue
    .line 280
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 281
    .local v0, buffer:[B
    const/4 v1, 0x0

    const/high16 v2, 0xfe0

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x15

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 282
    const/4 v1, 0x1

    const v2, 0x1fc000

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0xe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 283
    const/4 v1, 0x2

    and-int/lit16 v2, p0, 0x3f80

    shr-int/lit8 v2, v2, 0x7

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 284
    const/4 v1, 0x3

    and-int/lit8 v2, p0, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 285
    return-object v0
.end method


# virtual methods
.method public append(Ljava/io/RandomAccessFile;)V
    .locals 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    .line 170
    :try_start_0
    new-instance v3, Lorg/farng/mp3/id3/ID3v2_4;

    invoke-direct {v3, p1}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Ljava/io/RandomAccessFile;)V

    .line 171
    .local v3, oldTag:Lorg/farng/mp3/id3/AbstractID3v2;
    invoke-virtual {v3, p0}, Lorg/farng/mp3/id3/ID3v2_4;->append(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 172
    invoke-virtual {v3, p1}, Lorg/farng/mp3/id3/ID3v2_4;->write(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Lorg/farng/mp3/TagNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v3           #oldTag:Lorg/farng/mp3/id3/AbstractID3v2;
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 175
    .local v0, ex:Lorg/farng/mp3/TagNotFoundException;
    :try_start_1
    new-instance v3, Lorg/farng/mp3/id3/ID3v2_3;

    invoke-direct {v3, p1}, Lorg/farng/mp3/id3/ID3v2_3;-><init>(Ljava/io/RandomAccessFile;)V

    .line 176
    .restart local v3       #oldTag:Lorg/farng/mp3/id3/AbstractID3v2;
    invoke-virtual {v3, p0}, Lorg/farng/mp3/id3/ID3v2_3;->append(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 177
    invoke-virtual {v3, p1}, Lorg/farng/mp3/id3/ID3v2_3;->write(Ljava/io/RandomAccessFile;)V
    :try_end_1
    .catch Lorg/farng/mp3/TagNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 178
    .end local v3           #oldTag:Lorg/farng/mp3/id3/AbstractID3v2;
    :catch_1
    move-exception v1

    .line 180
    .local v1, ex2:Lorg/farng/mp3/TagNotFoundException;
    :try_start_2
    new-instance v3, Lorg/farng/mp3/id3/ID3v2_2;

    invoke-direct {v3, p1}, Lorg/farng/mp3/id3/ID3v2_2;-><init>(Ljava/io/RandomAccessFile;)V

    .line 181
    .restart local v3       #oldTag:Lorg/farng/mp3/id3/AbstractID3v2;
    invoke-virtual {v3, p0}, Lorg/farng/mp3/id3/ID3v2_2;->append(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 182
    invoke-virtual {v3, p1}, Lorg/farng/mp3/id3/ID3v2_2;->write(Ljava/io/RandomAccessFile;)V
    :try_end_2
    .catch Lorg/farng/mp3/TagNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 183
    .end local v3           #oldTag:Lorg/farng/mp3/id3/AbstractID3v2;
    :catch_2
    move-exception v2

    .line 184
    .local v2, ex3:Lorg/farng/mp3/TagNotFoundException;
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3FileItem;->write(Ljava/io/RandomAccessFile;)V

    goto :goto_0
.end method

.method public append(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 5
    .parameter "abstractMP3Tag"

    .prologue
    .line 148
    move-object v3, p0

    .line 150
    .local v3, oldTag:Lorg/farng/mp3/id3/AbstractID3v2;
    if-eqz p1, :cond_2

    .line 151
    instance-of v4, p1, Lorg/farng/mp3/id3/AbstractID3v2;

    if-eqz v4, :cond_1

    move-object v2, p1

    .line 152
    check-cast v2, Lorg/farng/mp3/id3/AbstractID3v2;

    .line 156
    .local v2, newTag:Lorg/farng/mp3/id3/AbstractID3v2;
    :goto_0
    invoke-virtual {v2}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrameIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 158
    .local v1, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/AbstractID3v2Frame;

    .line 160
    .local v0, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/farng/mp3/id3/AbstractID3v2;->hasFrame(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 161
    invoke-virtual {v3, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    goto :goto_1

    .line 154
    .end local v0           #frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #newTag:Lorg/farng/mp3/id3/AbstractID3v2;
    :cond_1
    new-instance v2, Lorg/farng/mp3/id3/ID3v2_4;

    invoke-direct {v2, p1}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .restart local v2       #newTag:Lorg/farng/mp3/id3/AbstractID3v2;
    goto :goto_0

    .line 165
    .end local v2           #newTag:Lorg/farng/mp3/id3/AbstractID3v2;
    :cond_2
    return-void
.end method

.method protected appendDuplicateFrameId(Ljava/lang/String;)V
    .locals 2
    .parameter "duplicateFrameId"

    .prologue
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/farng/mp3/id3/AbstractID3v2;->duplicateFrameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->duplicateFrameId:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public clearFrameMap()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 91
    return-void
.end method

.method public delete(Ljava/io/RandomAccessFile;)V
    .locals 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 194
    .local v0, buffer:[B
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3Tag;->seek(Ljava/io/RandomAccessFile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 196
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 198
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 201
    instance-of v2, p1, Lorg/farng/mp3/id3/AbstractID3v2;

    if-nez v2, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 204
    check-cast v0, Lorg/farng/mp3/id3/AbstractID3v2;

    .line 205
    .local v0, abstractID3v2:Lorg/farng/mp3/id3/AbstractID3v2;
    iget-object v2, p0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    iget-object v3, v0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    invoke-super {p0, p1}, Lorg/farng/mp3/AbstractMP3Tag;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDuplicateBytes()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->duplicateBytes:I

    return v0
.end method

.method public getDuplicateFrameId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->duplicateFrameId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmptyFrameBytes()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->emptyFrameBytes:I

    return v0
.end method

.method public getFileReadBytes()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->fileReadSize:I

    return v0
.end method

.method public getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;
    .locals 1
    .parameter "identifier"

    .prologue
    .line 78
    iget-object v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/AbstractID3v2Frame;

    return-object v0
.end method

.method public getFrameCount()I
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, size:I
    iget-object v1, p0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    .line 86
    :cond_0
    return v0
.end method

.method public getFrameIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getFrameOfType(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4
    .parameter "identifier"

    .prologue
    .line 98
    iget-object v3, p0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 99
    .local v1, iterator:Ljava/util/Iterator;
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 101
    .local v2, result:Ljava/util/Set;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    .local v0, hashSetKey:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    .end local v0           #hashSetKey:Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    return-object v3
.end method

.method public getInvalidFrameBytes()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->invalidFrameBytes:I

    return v0
.end method

.method public getMajorVersion()B
    .locals 1

    .prologue
    .line 305
    iget-byte v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->majorVersion:B

    return v0
.end method

.method public getPaddingSize()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->padding:I

    return v0
.end method

.method public getRevision()B
    .locals 1

    .prologue
    .line 313
    iget-byte v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->revision:B

    return v0
.end method

.method public hasFrame(Ljava/lang/String;)Z
    .locals 1
    .parameter "identifier"

    .prologue
    .line 111
    iget-object v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasFrameOfType(Ljava/lang/String;)Z
    .locals 4
    .parameter "identifier"

    .prologue
    .line 115
    iget-object v3, p0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 117
    .local v2, iterator:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 118
    .local v0, found:Z
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 119
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 120
    .local v1, hashMapKey:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    const/4 v0, 0x1

    goto :goto_0

    .line 124
    .end local v1           #hashMapKey:Ljava/lang/String;
    :cond_1
    return v0
.end method

.method protected incrementDuplicateBytes(I)V
    .locals 1
    .parameter "duplicateBytes"

    .prologue
    .line 345
    iget v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->duplicateBytes:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->duplicateBytes:I

    .line 346
    return-void
.end method

.method protected incrementEmptyFrameBytes(I)V
    .locals 1
    .parameter "emptyFrameBytes"

    .prologue
    .line 349
    iget v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->emptyFrameBytes:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->emptyFrameBytes:I

    .line 350
    return-void
.end method

.method protected incrementInvalidFrameBytes()V
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->invalidFrameBytes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->invalidFrameBytes:I

    .line 354
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public overwrite(Ljava/io/RandomAccessFile;)V
    .locals 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    .line 232
    :try_start_0
    new-instance v3, Lorg/farng/mp3/id3/ID3v2_4;

    invoke-direct {v3, p1}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Ljava/io/RandomAccessFile;)V

    .line 233
    .local v3, oldTag:Lorg/farng/mp3/id3/AbstractID3v2;
    invoke-virtual {v3, p0}, Lorg/farng/mp3/id3/ID3v2_4;->overwrite(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 234
    invoke-virtual {v3, p1}, Lorg/farng/mp3/id3/ID3v2_4;->write(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Lorg/farng/mp3/TagNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v3           #oldTag:Lorg/farng/mp3/id3/AbstractID3v2;
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 237
    .local v0, ex:Lorg/farng/mp3/TagNotFoundException;
    :try_start_1
    new-instance v3, Lorg/farng/mp3/id3/ID3v2_3;

    invoke-direct {v3, p1}, Lorg/farng/mp3/id3/ID3v2_3;-><init>(Ljava/io/RandomAccessFile;)V

    .line 238
    .restart local v3       #oldTag:Lorg/farng/mp3/id3/AbstractID3v2;
    invoke-virtual {v3, p0}, Lorg/farng/mp3/id3/ID3v2_3;->overwrite(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 239
    invoke-virtual {v3, p1}, Lorg/farng/mp3/id3/ID3v2_3;->write(Ljava/io/RandomAccessFile;)V
    :try_end_1
    .catch Lorg/farng/mp3/TagNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 240
    .end local v3           #oldTag:Lorg/farng/mp3/id3/AbstractID3v2;
    :catch_1
    move-exception v1

    .line 242
    .local v1, ex2:Lorg/farng/mp3/TagNotFoundException;
    :try_start_2
    new-instance v3, Lorg/farng/mp3/id3/ID3v2_2;

    invoke-direct {v3, p1}, Lorg/farng/mp3/id3/ID3v2_2;-><init>(Ljava/io/RandomAccessFile;)V

    .line 243
    .restart local v3       #oldTag:Lorg/farng/mp3/id3/AbstractID3v2;
    invoke-virtual {v3, p0}, Lorg/farng/mp3/id3/ID3v2_2;->overwrite(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 244
    invoke-virtual {v3, p1}, Lorg/farng/mp3/id3/ID3v2_2;->write(Ljava/io/RandomAccessFile;)V
    :try_end_2
    .catch Lorg/farng/mp3/TagNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 245
    .end local v3           #oldTag:Lorg/farng/mp3/id3/AbstractID3v2;
    :catch_2
    move-exception v2

    .line 246
    .local v2, ex3:Lorg/farng/mp3/TagNotFoundException;
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3FileItem;->write(Ljava/io/RandomAccessFile;)V

    goto :goto_0
.end method

.method public overwrite(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 5
    .parameter "abstractMP3Tag"

    .prologue
    .line 212
    move-object v3, p0

    .line 214
    .local v3, oldTag:Lorg/farng/mp3/id3/AbstractID3v2;
    if-eqz p1, :cond_1

    .line 215
    instance-of v4, p1, Lorg/farng/mp3/id3/AbstractID3v2;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 216
    check-cast v2, Lorg/farng/mp3/id3/AbstractID3v2;

    .line 220
    .local v2, newTag:Lorg/farng/mp3/id3/AbstractID3v2;
    :goto_0
    invoke-virtual {v2}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrameIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 222
    .local v1, iterator:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 223
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/AbstractID3v2Frame;

    .line 224
    .local v0, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {v3, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    goto :goto_1

    .line 218
    .end local v0           #frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #newTag:Lorg/farng/mp3/id3/AbstractID3v2;
    :cond_0
    new-instance v2, Lorg/farng/mp3/id3/ID3v2_4;

    invoke-direct {v2, p1}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .restart local v2       #newTag:Lorg/farng/mp3/id3/AbstractID3v2;
    goto :goto_0

    .line 227
    .end local v2           #newTag:Lorg/farng/mp3/id3/AbstractID3v2;
    :cond_1
    return-void
.end method

.method public removeFrame(Ljava/lang/String;)V
    .locals 1
    .parameter "identifier"

    .prologue
    .line 132
    iget-object v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public removeFrameOfType(Ljava/lang/String;)V
    .locals 4
    .parameter "identifier"

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrameOfType(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    .line 137
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/AbstractID3v2Frame;

    .line 139
    .local v0, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    iget-object v2, p0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 141
    .end local v0           #frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    :cond_0
    return-void
.end method

.method protected setFileReadBytes(I)V
    .locals 0
    .parameter "fileReadSize"

    .prologue
    .line 337
    iput p1, p0, Lorg/farng/mp3/id3/AbstractID3v2;->fileReadSize:I

    .line 338
    return-void
.end method

.method public setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V
    .locals 2
    .parameter "frame"

    .prologue
    .line 72
    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/farng/mp3/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    return-void
.end method

.method protected setMajorVersion(B)V
    .locals 0
    .parameter "majorVersion"

    .prologue
    .line 309
    iput-byte p1, p0, Lorg/farng/mp3/id3/AbstractID3v2;->majorVersion:B

    .line 310
    return-void
.end method

.method protected setPaddingSize(I)V
    .locals 0
    .parameter "paddingSize"

    .prologue
    .line 341
    iput p1, p0, Lorg/farng/mp3/id3/AbstractID3v2;->padding:I

    .line 342
    return-void
.end method

.method protected setRevision(B)V
    .locals 0
    .parameter "revision"

    .prologue
    .line 317
    iput-byte p1, p0, Lorg/farng/mp3/id3/AbstractID3v2;->revision:B

    .line 318
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 5
    .parameter "abstractMP3Tag"

    .prologue
    .line 253
    move-object v3, p0

    .line 255
    .local v3, oldTag:Lorg/farng/mp3/id3/AbstractID3v2;
    if-eqz p1, :cond_1

    .line 256
    instance-of v4, p1, Lorg/farng/mp3/id3/AbstractID3v2;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 257
    check-cast v2, Lorg/farng/mp3/id3/AbstractID3v2;

    .line 261
    .local v2, newTag:Lorg/farng/mp3/id3/AbstractID3v2;
    :goto_0
    invoke-virtual {v2}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrameIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 262
    .local v1, iterator:Ljava/util/Iterator;
    iget-object v4, v3, Lorg/farng/mp3/id3/AbstractID3v2;->frameMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 264
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/AbstractID3v2Frame;

    .line 266
    .local v0, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {v3, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    goto :goto_1

    .line 259
    .end local v0           #frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #newTag:Lorg/farng/mp3/id3/AbstractID3v2;
    :cond_0
    new-instance v2, Lorg/farng/mp3/id3/ID3v2_4;

    invoke-direct {v2, p1}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .restart local v2       #newTag:Lorg/farng/mp3/id3/AbstractID3v2;
    goto :goto_0

    .line 269
    .end local v2           #newTag:Lorg/farng/mp3/id3/AbstractID3v2;
    :cond_1
    return-void
.end method
