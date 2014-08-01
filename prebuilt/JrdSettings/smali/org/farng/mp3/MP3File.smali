.class public Lorg/farng/mp3/MP3File;
.super Ljava/lang/Object;
.source "MP3File.java"


# instance fields
.field private bitRate:I

.field private copyProtected:Z

.field private emphasis:B

.field private filenameTag:Lorg/farng/mp3/filename/FilenameTag;

.field private frequency:D

.field private home:Z

.field private id3v1tag:Lorg/farng/mp3/id3/ID3v1;

.field private id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

.field private layer:B

.field private lyrics3tag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;

.field private mode:B

.field private modeExtension:B

.field private mp3file:Ljava/io/File;

.field private mpegVersion:B

.field private padding:Z

.field private privacy:Z

.field private protection:Z

.field private variableBitRate:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    .line 234
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/farng/mp3/MP3File;-><init>(Ljava/io/File;Z)V

    .line 235
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2
    .parameter "file"
    .parameter "writeable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lorg/farng/mp3/MP3File;->mp3file:Ljava/io/File;

    .line 249
    new-instance v0, Ljava/io/RandomAccessFile;

    if-eqz p2, :cond_3

    const-string v1, "rw"

    :goto_0
    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    .local v0, newFile:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Lorg/farng/mp3/id3/ID3v1_1;

    invoke-direct {v1, v0}, Lorg/farng/mp3/id3/ID3v1_1;-><init>(Ljava/io/RandomAccessFile;)V

    iput-object v1, p0, Lorg/farng/mp3/MP3File;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;
    :try_end_0
    .catch Lorg/farng/mp3/TagNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 256
    :goto_1
    :try_start_1
    iget-object v1, p0, Lorg/farng/mp3/MP3File;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    if-nez v1, :cond_0

    .line 257
    new-instance v1, Lorg/farng/mp3/id3/ID3v1;

    invoke-direct {v1, v0}, Lorg/farng/mp3/id3/ID3v1;-><init>(Ljava/io/RandomAccessFile;)V

    iput-object v1, p0, Lorg/farng/mp3/MP3File;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;
    :try_end_1
    .catch Lorg/farng/mp3/TagNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 263
    :cond_0
    :goto_2
    :try_start_2
    new-instance v1, Lorg/farng/mp3/id3/ID3v2_4;

    invoke-direct {v1, v0}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Ljava/io/RandomAccessFile;)V

    iput-object v1, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;
    :try_end_2
    .catch Lorg/farng/mp3/TagNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 268
    :goto_3
    :try_start_3
    iget-object v1, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

    if-nez v1, :cond_1

    .line 269
    new-instance v1, Lorg/farng/mp3/id3/ID3v2_3;

    invoke-direct {v1, v0}, Lorg/farng/mp3/id3/ID3v2_3;-><init>(Ljava/io/RandomAccessFile;)V

    iput-object v1, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;
    :try_end_3
    .catch Lorg/farng/mp3/TagNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 275
    :cond_1
    :goto_4
    :try_start_4
    iget-object v1, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

    if-nez v1, :cond_2

    .line 276
    new-instance v1, Lorg/farng/mp3/id3/ID3v2_2;

    invoke-direct {v1, v0}, Lorg/farng/mp3/id3/ID3v2_2;-><init>(Ljava/io/RandomAccessFile;)V

    iput-object v1, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;
    :try_end_4
    .catch Lorg/farng/mp3/TagNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 293
    :cond_2
    :goto_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 299
    return-void

    .line 249
    .end local v0           #newFile:Ljava/io/RandomAccessFile;
    :cond_3
    const-string v1, "r"

    goto :goto_0

    .line 278
    .restart local v0       #newFile:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    goto :goto_5

    .line 271
    :catch_1
    move-exception v1

    goto :goto_4

    .line 264
    :catch_2
    move-exception v1

    goto :goto_3

    .line 259
    :catch_3
    move-exception v1

    goto :goto_2

    .line 252
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/farng/mp3/MP3File;-><init>(Ljava/io/File;)V

    .line 223
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/MP3File;)V
    .locals 2
    .parameter "copyObject"

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iget-boolean v0, p1, Lorg/farng/mp3/MP3File;->copyProtected:Z

    iput-boolean v0, p0, Lorg/farng/mp3/MP3File;->copyProtected:Z

    .line 194
    iget-boolean v0, p1, Lorg/farng/mp3/MP3File;->home:Z

    iput-boolean v0, p0, Lorg/farng/mp3/MP3File;->home:Z

    .line 195
    iget-boolean v0, p1, Lorg/farng/mp3/MP3File;->padding:Z

    iput-boolean v0, p0, Lorg/farng/mp3/MP3File;->padding:Z

    .line 196
    iget-boolean v0, p1, Lorg/farng/mp3/MP3File;->privacy:Z

    iput-boolean v0, p0, Lorg/farng/mp3/MP3File;->privacy:Z

    .line 197
    iget-boolean v0, p1, Lorg/farng/mp3/MP3File;->protection:Z

    iput-boolean v0, p0, Lorg/farng/mp3/MP3File;->protection:Z

    .line 198
    iget-boolean v0, p1, Lorg/farng/mp3/MP3File;->variableBitRate:Z

    iput-boolean v0, p0, Lorg/farng/mp3/MP3File;->variableBitRate:Z

    .line 199
    iget-byte v0, p1, Lorg/farng/mp3/MP3File;->emphasis:B

    iput-byte v0, p0, Lorg/farng/mp3/MP3File;->emphasis:B

    .line 200
    iget-byte v0, p1, Lorg/farng/mp3/MP3File;->layer:B

    iput-byte v0, p0, Lorg/farng/mp3/MP3File;->layer:B

    .line 201
    iget-byte v0, p1, Lorg/farng/mp3/MP3File;->mode:B

    iput-byte v0, p0, Lorg/farng/mp3/MP3File;->mode:B

    .line 202
    iget-byte v0, p1, Lorg/farng/mp3/MP3File;->modeExtension:B

    iput-byte v0, p0, Lorg/farng/mp3/MP3File;->modeExtension:B

    .line 203
    iget-byte v0, p1, Lorg/farng/mp3/MP3File;->mpegVersion:B

    iput-byte v0, p0, Lorg/farng/mp3/MP3File;->mpegVersion:B

    .line 204
    iget-wide v0, p1, Lorg/farng/mp3/MP3File;->frequency:D

    iput-wide v0, p0, Lorg/farng/mp3/MP3File;->frequency:D

    .line 205
    iget v0, p1, Lorg/farng/mp3/MP3File;->bitRate:I

    iput v0, p0, Lorg/farng/mp3/MP3File;->bitRate:I

    .line 206
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lorg/farng/mp3/MP3File;->mp3file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/farng/mp3/MP3File;->mp3file:Ljava/io/File;

    .line 207
    new-instance v0, Lorg/farng/mp3/filename/FilenameTag;

    iget-object v1, p1, Lorg/farng/mp3/MP3File;->filenameTag:Lorg/farng/mp3/filename/FilenameTag;

    invoke-direct {v0, v1}, Lorg/farng/mp3/filename/FilenameTag;-><init>(Lorg/farng/mp3/filename/FilenameTag;)V

    iput-object v0, p0, Lorg/farng/mp3/MP3File;->filenameTag:Lorg/farng/mp3/filename/FilenameTag;

    .line 208
    iget-object v0, p1, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

    invoke-static {v0}, Lorg/farng/mp3/TagUtility;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/AbstractID3v2;

    iput-object v0, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

    .line 209
    iget-object v0, p1, Lorg/farng/mp3/MP3File;->lyrics3tag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    invoke-static {v0}, Lorg/farng/mp3/TagUtility;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    iput-object v0, p0, Lorg/farng/mp3/MP3File;->lyrics3tag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    .line 210
    iget-object v0, p1, Lorg/farng/mp3/MP3File;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    invoke-static {v0}, Lorg/farng/mp3/TagUtility;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/ID3v1;

    iput-object v0, p0, Lorg/farng/mp3/MP3File;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    .line 211
    return-void
.end method

.method private getFrameSize()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1061
    iget-wide v2, p0, Lorg/farng/mp3/MP3File;->frequency:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 1071
    :goto_0
    return v0

    .line 1065
    :cond_0
    iget-boolean v2, p0, Lorg/farng/mp3/MP3File;->padding:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 1066
    .local v0, paddingByte:I
    :cond_1
    iget-byte v2, p0, Lorg/farng/mp3/MP3File;->layer:B

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1067
    iget v2, p0, Lorg/farng/mp3/MP3File;->bitRate:I

    mul-int/lit8 v2, v2, 0xc

    int-to-double v2, v2

    iget-wide v4, p0, Lorg/farng/mp3/MP3File;->frequency:D

    div-double/2addr v2, v4

    int-to-double v4, v0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4010

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .local v1, size:I
    :goto_1
    move v0, v1

    .line 1071
    goto :goto_0

    .line 1069
    .end local v1           #size:I
    :cond_2
    iget v2, p0, Lorg/farng/mp3/MP3File;->bitRate:I

    mul-int/lit16 v2, v2, 0x90

    int-to-double v2, v2

    iget-wide v4, p0, Lorg/farng/mp3/MP3File;->frequency:D

    div-double/2addr v2, v4

    int-to-double v4, v0

    add-double/2addr v2, v4

    double-to-int v1, v2

    .restart local v1       #size:I
    goto :goto_1
.end method

.method private readFrameHeader(Ljava/io/RandomAccessFile;)V
    .locals 13
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/TagNotFoundException;,
            Lorg/farng/mp3/InvalidTagException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1086
    const/4 v4, 0x4

    new-array v1, v4, [B

    .line 1087
    .local v1, buffer:[B
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 1090
    aget-byte v4, v1, v6

    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    aget-byte v4, v1, v5

    and-int/lit8 v4, v4, -0x20

    const/16 v7, -0x20

    if-eq v4, v7, :cond_1

    .line 1091
    :cond_0
    new-instance v4, Lorg/farng/mp3/TagNotFoundException;

    const-string v5, "MP3 Frame sync bits not found"

    invoke-direct {v4, v5}, Lorg/farng/mp3/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1093
    :cond_1
    aget-byte v4, v1, v5

    and-int/lit8 v4, v4, 0x18

    shr-int/lit8 v4, v4, 0x3

    int-to-byte v4, v4

    iput-byte v4, p0, Lorg/farng/mp3/MP3File;->mpegVersion:B

    .line 1094
    aget-byte v4, v1, v5

    and-int/lit8 v4, v4, 0x6

    shr-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    iput-byte v4, p0, Lorg/farng/mp3/MP3File;->layer:B

    .line 1095
    aget-byte v4, v1, v5

    and-int/lit8 v4, v4, 0x1

    if-eq v4, v5, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lorg/farng/mp3/MP3File;->protection:Z

    .line 1096
    aget-byte v4, v1, v12

    and-int/lit16 v4, v4, 0xf0

    aget-byte v7, v1, v5

    and-int/lit8 v7, v7, 0x8

    or-int/2addr v4, v7

    aget-byte v7, v1, v5

    and-int/lit8 v7, v7, 0x6

    or-int v0, v4, v7

    .line 1099
    .local v0, bitRateValue:I
    sget-object v4, Lorg/farng/mp3/TagConstant;->bitrate:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/Long;

    int-to-long v8, v0

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1100
    .local v3, object:Ljava/lang/Long;
    if-eqz v3, :cond_4

    .line 1101
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget v4, p0, Lorg/farng/mp3/MP3File;->bitRate:I

    int-to-long v9, v4

    cmp-long v4, v7, v9

    if-eqz v4, :cond_2

    .line 1102
    iput-boolean v5, p0, Lorg/farng/mp3/MP3File;->variableBitRate:Z

    .line 1104
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v4

    iput v4, p0, Lorg/farng/mp3/MP3File;->bitRate:I

    .line 1108
    aget-byte v4, v1, v12

    and-int/lit8 v4, v4, 0xc

    ushr-int/lit8 v2, v4, 0x2

    .line 1109
    .local v2, frequencyValue:I
    iget-byte v4, p0, Lorg/farng/mp3/MP3File;->mpegVersion:B

    if-ne v4, v11, :cond_5

    .line 1110
    packed-switch v2, :pswitch_data_0

    .line 1148
    :goto_1
    aget-byte v4, v1, v12

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_8

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lorg/farng/mp3/MP3File;->padding:Z

    .line 1149
    aget-byte v4, v1, v12

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lorg/farng/mp3/MP3File;->privacy:Z

    .line 1150
    aget-byte v4, v1, v11

    and-int/lit16 v4, v4, 0xc0

    shr-int/lit8 v4, v4, 0x6

    int-to-byte v4, v4

    iput-byte v4, p0, Lorg/farng/mp3/MP3File;->mode:B

    .line 1151
    aget-byte v4, v1, v11

    and-int/lit8 v4, v4, 0x30

    shr-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    iput-byte v4, p0, Lorg/farng/mp3/MP3File;->modeExtension:B

    .line 1152
    aget-byte v4, v1, v11

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_a

    move v4, v5

    :goto_4
    iput-boolean v4, p0, Lorg/farng/mp3/MP3File;->copyProtected:Z

    .line 1153
    aget-byte v4, v1, v11

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_b

    :goto_5
    iput-boolean v5, p0, Lorg/farng/mp3/MP3File;->home:Z

    .line 1154
    aget-byte v4, v1, v11

    and-int/lit8 v4, v4, 0x3

    int-to-byte v4, v4

    iput-byte v4, p0, Lorg/farng/mp3/MP3File;->emphasis:B

    .line 1155
    return-void

    .end local v0           #bitRateValue:I
    .end local v2           #frequencyValue:I
    .end local v3           #object:Ljava/lang/Long;
    :cond_3
    move v4, v6

    .line 1095
    goto :goto_0

    .line 1106
    .restart local v0       #bitRateValue:I
    .restart local v3       #object:Ljava/lang/Long;
    :cond_4
    new-instance v4, Lorg/farng/mp3/InvalidTagException;

    const-string v5, "Invalid bit rate"

    invoke-direct {v4, v5}, Lorg/farng/mp3/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1112
    .restart local v2       #frequencyValue:I
    :pswitch_0
    const-wide v7, 0x40460ccccccccccdL

    iput-wide v7, p0, Lorg/farng/mp3/MP3File;->frequency:D

    goto :goto_1

    .line 1115
    :pswitch_1
    const-wide/high16 v7, 0x4048

    iput-wide v7, p0, Lorg/farng/mp3/MP3File;->frequency:D

    goto :goto_1

    .line 1118
    :pswitch_2
    const-wide/high16 v7, 0x4040

    iput-wide v7, p0, Lorg/farng/mp3/MP3File;->frequency:D

    goto :goto_1

    .line 1121
    :cond_5
    iget-byte v4, p0, Lorg/farng/mp3/MP3File;->mpegVersion:B

    if-ne v4, v12, :cond_6

    .line 1122
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 1124
    :pswitch_3
    const-wide v7, 0x40360ccccccccccdL

    iput-wide v7, p0, Lorg/farng/mp3/MP3File;->frequency:D

    goto :goto_1

    .line 1127
    :pswitch_4
    const-wide/high16 v7, 0x4038

    iput-wide v7, p0, Lorg/farng/mp3/MP3File;->frequency:D

    goto :goto_1

    .line 1130
    :pswitch_5
    const-wide/high16 v7, 0x4030

    iput-wide v7, p0, Lorg/farng/mp3/MP3File;->frequency:D

    goto :goto_1

    .line 1133
    :cond_6
    iget-byte v4, p0, Lorg/farng/mp3/MP3File;->mpegVersion:B

    if-nez v4, :cond_7

    .line 1134
    packed-switch v2, :pswitch_data_2

    goto :goto_1

    .line 1136
    :pswitch_6
    const-wide v7, 0x40260ccccccccccdL

    iput-wide v7, p0, Lorg/farng/mp3/MP3File;->frequency:D

    goto/16 :goto_1

    .line 1139
    :pswitch_7
    const-wide/high16 v7, 0x4028

    iput-wide v7, p0, Lorg/farng/mp3/MP3File;->frequency:D

    goto/16 :goto_1

    .line 1142
    :pswitch_8
    const-wide/high16 v7, 0x4020

    iput-wide v7, p0, Lorg/farng/mp3/MP3File;->frequency:D

    goto/16 :goto_1

    .line 1146
    :cond_7
    new-instance v4, Lorg/farng/mp3/InvalidTagException;

    const-string v5, "Invalid MPEG version"

    invoke-direct {v4, v5}, Lorg/farng/mp3/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8
    move v4, v6

    .line 1148
    goto/16 :goto_2

    :cond_9
    move v4, v6

    .line 1149
    goto/16 :goto_3

    :cond_a
    move v4, v6

    .line 1152
    goto :goto_4

    :cond_b
    move v5, v6

    .line 1153
    goto :goto_5

    .line 1110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1122
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1134
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private seekNextMP3Frame(Ljava/io/RandomAccessFile;I)Z
    .locals 12
    .parameter "file"
    .parameter "iterations"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1174
    if-nez p2, :cond_1

    .line 1175
    const/4 v7, 0x1

    .line 1204
    :cond_0
    :goto_0
    return v7

    .line 1178
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lorg/farng/mp3/MP3File;->readFrameHeader(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Lorg/farng/mp3/TagException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1182
    invoke-direct {p0}, Lorg/farng/mp3/MP3File;->getFrameSize()I

    move-result v6

    .line 1183
    .local v6, size:I
    if-lez v6, :cond_0

    int-to-long v8, v6

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    .line 1186
    add-int/lit8 v8, v6, -0x4

    new-array v0, v8, [B

    .line 1187
    .local v0, buffer:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 1188
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 1189
    .local v2, filePointer:J
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v4

    .line 1190
    .local v4, first:B
    const/4 v8, -0x1

    if-ne v4, v8, :cond_3

    .line 1191
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v8

    and-int/lit8 v8, v8, -0x20

    int-to-byte v5, v8

    .line 1192
    .local v5, second:B
    const/16 v8, -0x20

    if-ne v5, v8, :cond_2

    .line 1193
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1196
    add-int/lit8 v8, p2, -0x1

    invoke-direct {p0, p1, v8}, Lorg/farng/mp3/MP3File;->seekNextMP3Frame(Ljava/io/RandomAccessFile;I)Z

    move-result v7

    .local v7, syncFound:Z
    goto :goto_0

    .line 1179
    .end local v0           #buffer:[B
    .end local v2           #filePointer:J
    .end local v4           #first:B
    .end local v5           #second:B
    .end local v6           #size:I
    .end local v7           #syncFound:Z
    :catch_0
    move-exception v1

    .line 1180
    .local v1, ex:Lorg/farng/mp3/TagException;
    goto :goto_0

    .line 1198
    .end local v1           #ex:Lorg/farng/mp3/TagException;
    .restart local v0       #buffer:[B
    .restart local v2       #filePointer:J
    .restart local v4       #first:B
    .restart local v5       #second:B
    .restart local v6       #size:I
    :cond_2
    const/4 v7, 0x0

    .restart local v7       #syncFound:Z
    goto :goto_0

    .line 1201
    .end local v5           #second:B
    .end local v7           #syncFound:Z
    :cond_3
    const/4 v7, 0x0

    .restart local v7       #syncFound:Z
    goto :goto_0
.end method


# virtual methods
.method public adjustID3v2Padding()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    .line 648
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/farng/mp3/TagOptionSingleton;->getId3v2PaddingSize()I

    move-result v0

    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/farng/mp3/TagOptionSingleton;->isId3v2PaddingWillShorten()Z

    move-result v1

    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->isId3v2PaddingCopyTag()Z

    move-result v2

    iget-object v3, p0, Lorg/farng/mp3/MP3File;->mp3file:Ljava/io/File;

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/farng/mp3/MP3File;->adjustID3v2Padding(IZZLjava/io/File;)Z

    move-result v0

    return v0
.end method

.method public adjustID3v2Padding(IZZ)Z
    .locals 1
    .parameter "paddingSize"
    .parameter "willShorten"
    .parameter "copyID3v2Tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    .line 671
    iget-object v0, p0, Lorg/farng/mp3/MP3File;->mp3file:Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/farng/mp3/MP3File;->adjustID3v2Padding(IZZLjava/io/File;)Z

    move-result v0

    return v0
.end method

.method public adjustID3v2Padding(IZZLjava/io/File;)Z
    .locals 20
    .parameter "paddingSize"
    .parameter "willShorten"
    .parameter "copyID3v2Tag"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    .line 694
    const/4 v6, 0x0

    .line 695
    .local v6, id3v2TagSize:I
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lorg/farng/mp3/MP3File;->getMp3StartByte(Ljava/io/File;)J

    move-result-wide v9

    .line 696
    .local v9, mp3start:J
    move/from16 v0, p1

    int-to-long v11, v0

    .line 697
    .local v11, newPaddingSize:J
    const/4 v13, 0x0

    .line 698
    .local v13, outStream:Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 699
    .local v7, inStream:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 700
    .local v3, backupFile:Ljava/io/File;
    const/4 v15, 0x0

    .line 701
    .local v15, paddedFile:Ljava/io/File;
    const-wide/16 v16, 0x0

    cmp-long v16, v11, v16

    if-gez v16, :cond_0

    .line 702
    new-instance v16, Lorg/farng/mp3/TagException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid paddingSize: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/farng/mp3/TagException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 704
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/farng/mp3/MP3File;->hasID3v2Tag()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 705
    invoke-virtual/range {p0 .. p0}, Lorg/farng/mp3/MP3File;->getID3v2Tag()Lorg/farng/mp3/id3/AbstractID3v2;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/farng/mp3/AbstractMP3FileItem;->getSize()I

    move-result v6

    .line 707
    :cond_1
    const-wide/16 v16, 0x0

    cmp-long v16, v11, v16

    if-eqz v16, :cond_2

    .line 709
    :goto_0
    int-to-long v0, v6

    move-wide/from16 v16, v0

    cmp-long v16, v11, v16

    if-gez v16, :cond_2

    .line 710
    long-to-float v0, v11

    move/from16 v16, v0

    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/farng/mp3/TagOptionSingleton;->getId3v2PaddingMultiplier()F

    move-result v17

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-long v11, v0

    goto :goto_0

    .line 713
    :cond_2
    cmp-long v16, v11, v9

    if-gez v16, :cond_3

    if-nez p2, :cond_3

    .line 714
    const/16 v16, 0x0

    .line 792
    :goto_1
    return v16

    .line 716
    :cond_3
    cmp-long v16, v11, v9

    if-nez v16, :cond_4

    .line 717
    const/16 v16, 0x0

    goto :goto_1

    .line 721
    :cond_4
    :try_start_0
    const-string v16, "temp"

    const-string v17, ".mp3"

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v15

    .line 722
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 723
    .end local v13           #outStream:Ljava/io/FileOutputStream;
    .local v14, outStream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p4

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 725
    .end local v7           #inStream:Ljava/io/FileInputStream;
    .local v8, inStream:Ljava/io/FileInputStream;
    const/16 v16, 0x1

    move/from16 v0, p3

    move/from16 v1, v16

    if-ne v0, v1, :cond_b

    .line 728
    cmp-long v16, v11, v9

    if-gez v16, :cond_6

    if-eqz p2, :cond_6

    .line 730
    long-to-int v0, v11

    move/from16 v16, v0

    :try_start_2
    move/from16 v0, v16

    new-array v5, v0, [B

    .line 731
    .local v5, buffer:[B
    const/16 v16, 0x0

    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v5, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 732
    const/16 v16, 0x0

    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v5, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 733
    sub-long v16, v9, v11

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v5, v0, [B

    .line 736
    const/16 v16, 0x0

    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v5, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 760
    :cond_5
    :goto_2
    const/16 v16, 0x400

    move/from16 v0, v16

    new-array v5, v0, [B

    .line 761
    const/16 v16, 0x0

    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v5, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    .line 762
    .local v2, b:I
    :goto_3
    const/16 v16, 0x400

    move/from16 v0, v16

    if-ne v2, v0, :cond_c

    .line 763
    const/16 v16, 0x0

    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v5, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 764
    const/16 v16, 0x0

    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v5, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    goto :goto_3

    .line 741
    .end local v2           #b:I
    .end local v5           #buffer:[B
    :cond_6
    long-to-int v0, v9

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v5, v0, [B

    .line 742
    .restart local v5       #buffer:[B
    const/16 v16, 0x0

    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v5, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 743
    const/16 v16, 0x0

    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v5, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 746
    sub-long v16, v11, v9

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_5

    .line 747
    sub-long v16, v11, v9

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v5, v0, [B

    .line 748
    const/16 v16, 0x0

    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v5, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 779
    .end local v5           #buffer:[B
    :catchall_0
    move-exception v16

    move-object v7, v8

    .end local v8           #inStream:Ljava/io/FileInputStream;
    .restart local v7       #inStream:Ljava/io/FileInputStream;
    move-object v13, v14

    .end local v14           #outStream:Ljava/io/FileOutputStream;
    .restart local v13       #outStream:Ljava/io/FileOutputStream;
    :goto_4
    if-eqz v7, :cond_7

    .line 780
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileDescriptor;->sync()V

    .line 781
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 783
    :cond_7
    if-eqz v13, :cond_8

    .line 784
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileDescriptor;->sync()V

    .line 785
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 787
    :cond_8
    if-eqz v3, :cond_9

    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/farng/mp3/TagOptionSingleton;->isOriginalSavedAfterAdjustingID3v2Padding()Z

    move-result v17

    if-nez v17, :cond_9

    .line 789
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 791
    :cond_9
    if-eqz v15, :cond_a

    .line 792
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    :cond_a
    throw v16

    .line 752
    .end local v7           #inStream:Ljava/io/FileInputStream;
    .end local v13           #outStream:Ljava/io/FileOutputStream;
    .restart local v8       #inStream:Ljava/io/FileInputStream;
    .restart local v14       #outStream:Ljava/io/FileOutputStream;
    :cond_b
    long-to-int v0, v11

    move/from16 v16, v0

    :try_start_3
    move/from16 v0, v16

    new-array v5, v0, [B

    .line 755
    .restart local v5       #buffer:[B
    invoke-virtual {v8, v9, v10}, Ljava/io/FileInputStream;->skip(J)J

    .line 758
    const/16 v16, 0x0

    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v5, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto/16 :goto_2

    .line 766
    .restart local v2       #b:I
    :cond_c
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v2, v0, :cond_d

    .line 767
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v5, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 769
    :cond_d
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, ".original"

    invoke-static/range {v17 .. v18}, Lorg/farng/mp3/TagUtility;->appendBeforeExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 770
    .end local v3           #backupFile:Ljava/io/File;
    .local v4, backupFile:Ljava/io/File;
    :try_start_4
    move-object/from16 v0, p4

    invoke-static {v0, v4}, Lorg/farng/mp3/TagUtility;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 771
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_12

    .line 772
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 776
    move-object/from16 v0, p4

    invoke-static {v15, v0}, Lorg/farng/mp3/TagUtility;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 777
    const/16 v16, 0x1

    .line 779
    if-eqz v8, :cond_e

    .line 780
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileDescriptor;->sync()V

    .line 781
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 783
    :cond_e
    if-eqz v14, :cond_f

    .line 784
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileDescriptor;->sync()V

    .line 785
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 787
    :cond_f
    if-eqz v4, :cond_10

    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/farng/mp3/TagOptionSingleton;->isOriginalSavedAfterAdjustingID3v2Padding()Z

    move-result v17

    if-nez v17, :cond_10

    .line 789
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 791
    :cond_10
    if-eqz v15, :cond_11

    .line 792
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    :cond_11
    move-object v3, v4

    .end local v4           #backupFile:Ljava/io/File;
    .restart local v3       #backupFile:Ljava/io/File;
    move-object v7, v8

    .end local v8           #inStream:Ljava/io/FileInputStream;
    .restart local v7       #inStream:Ljava/io/FileInputStream;
    move-object v13, v14

    .end local v14           #outStream:Ljava/io/FileOutputStream;
    .restart local v13       #outStream:Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 774
    .end local v3           #backupFile:Ljava/io/File;
    .end local v7           #inStream:Ljava/io/FileInputStream;
    .end local v13           #outStream:Ljava/io/FileOutputStream;
    .restart local v4       #backupFile:Ljava/io/File;
    .restart local v8       #inStream:Ljava/io/FileInputStream;
    .restart local v14       #outStream:Ljava/io/FileOutputStream;
    :cond_12
    const/16 v16, 0x0

    .line 779
    if-eqz v8, :cond_13

    .line 780
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileDescriptor;->sync()V

    .line 781
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 783
    :cond_13
    if-eqz v14, :cond_14

    .line 784
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileDescriptor;->sync()V

    .line 785
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 787
    :cond_14
    if-eqz v4, :cond_15

    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/farng/mp3/TagOptionSingleton;->isOriginalSavedAfterAdjustingID3v2Padding()Z

    move-result v17

    if-nez v17, :cond_15

    .line 789
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 791
    :cond_15
    if-eqz v15, :cond_16

    .line 792
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    :cond_16
    move-object v3, v4

    .end local v4           #backupFile:Ljava/io/File;
    .restart local v3       #backupFile:Ljava/io/File;
    move-object v7, v8

    .end local v8           #inStream:Ljava/io/FileInputStream;
    .restart local v7       #inStream:Ljava/io/FileInputStream;
    move-object v13, v14

    .end local v14           #outStream:Ljava/io/FileOutputStream;
    .restart local v13       #outStream:Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 779
    .end local v2           #b:I
    .end local v5           #buffer:[B
    :catchall_1
    move-exception v16

    goto/16 :goto_4

    .end local v13           #outStream:Ljava/io/FileOutputStream;
    .restart local v14       #outStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v16

    move-object v13, v14

    .end local v14           #outStream:Ljava/io/FileOutputStream;
    .restart local v13       #outStream:Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .end local v3           #backupFile:Ljava/io/File;
    .end local v7           #inStream:Ljava/io/FileInputStream;
    .end local v13           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #b:I
    .restart local v4       #backupFile:Ljava/io/File;
    .restart local v5       #buffer:[B
    .restart local v8       #inStream:Ljava/io/FileInputStream;
    .restart local v14       #outStream:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v16

    move-object v3, v4

    .end local v4           #backupFile:Ljava/io/File;
    .restart local v3       #backupFile:Ljava/io/File;
    move-object v7, v8

    .end local v8           #inStream:Ljava/io/FileInputStream;
    .restart local v7       #inStream:Ljava/io/FileInputStream;
    move-object v13, v14

    .end local v14           #outStream:Ljava/io/FileOutputStream;
    .restart local v13       #outStream:Ljava/io/FileOutputStream;
    goto/16 :goto_4
.end method

.method public delete(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 3
    .parameter "mp3tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 798
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/farng/mp3/MP3File;->mp3file:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/farng/mp3/AbstractMP3Tag;->delete(Ljava/io/RandomAccessFile;)V

    .line 799
    return-void
.end method

.method public getBitRate()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lorg/farng/mp3/MP3File;->bitRate:I

    return v0
.end method

.method public getEmphasis()B
    .locals 1

    .prologue
    .line 310
    iget-byte v0, p0, Lorg/farng/mp3/MP3File;->emphasis:B

    return v0
.end method

.method public getFilenameTag()Lorg/farng/mp3/filename/FilenameTag;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lorg/farng/mp3/MP3File;->filenameTag:Lorg/farng/mp3/filename/FilenameTag;

    return-object v0
.end method

.method public getFrameAcrossTags(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "identifier"

    .prologue
    .line 373
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 374
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0x20

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 376
    .local v2, list:Ljava/util/List;
    iget-object v4, p0, Lorg/farng/mp3/MP3File;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    if-eqz v4, :cond_0

    .line 377
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-object v4, p0, Lorg/farng/mp3/MP3File;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    invoke-direct {v0, v4}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 378
    .local v0, id3v1:Lorg/farng/mp3/id3/ID3v2_4;
    invoke-virtual {v0, p1}, Lorg/farng/mp3/id3/AbstractID3v2;->hasFrameOfType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 379
    invoke-virtual {v0, p1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrameOfType(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    .line 380
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 381
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 385
    .end local v0           #id3v1:Lorg/farng/mp3/id3/ID3v2_4;
    .end local v1           #iterator:Ljava/util/Iterator;
    :cond_0
    iget-object v4, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

    if-eqz v4, :cond_1

    .line 386
    iget-object v4, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

    invoke-virtual {v4, p1}, Lorg/farng/mp3/id3/AbstractID3v2;->hasFrameOfType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 387
    iget-object v4, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

    invoke-virtual {v4, p1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrameOfType(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    .line 388
    .restart local v1       #iterator:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 389
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 393
    .end local v1           #iterator:Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lorg/farng/mp3/MP3File;->lyrics3tag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    if-eqz v4, :cond_2

    .line 394
    new-instance v3, Lorg/farng/mp3/id3/ID3v2_4;

    iget-object v4, p0, Lorg/farng/mp3/MP3File;->lyrics3tag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    invoke-direct {v3, v4}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 395
    .local v3, lyrics3:Lorg/farng/mp3/id3/ID3v2_4;
    invoke-virtual {v3, p1}, Lorg/farng/mp3/id3/AbstractID3v2;->hasFrameOfType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 396
    invoke-virtual {v3, p1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrameOfType(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    .line 397
    .restart local v1       #iterator:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 398
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 402
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v3           #lyrics3:Lorg/farng/mp3/id3/ID3v2_4;
    :cond_2
    iget-object v4, p0, Lorg/farng/mp3/MP3File;->filenameTag:Lorg/farng/mp3/filename/FilenameTag;

    if-eqz v4, :cond_4

    .line 403
    iget-object v4, p0, Lorg/farng/mp3/MP3File;->filenameTag:Lorg/farng/mp3/filename/FilenameTag;

    invoke-virtual {v4, p1}, Lorg/farng/mp3/filename/FilenameTag;->hasFrameOfType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 404
    iget-object v4, p0, Lorg/farng/mp3/MP3File;->filenameTag:Lorg/farng/mp3/filename/FilenameTag;

    invoke-virtual {v4, p1}, Lorg/farng/mp3/filename/FilenameTag;->getFrameOfType(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    .line 405
    .restart local v1       #iterator:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 406
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 412
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #list:Ljava/util/List;
    :cond_3
    const/4 v2, 0x0

    :cond_4
    return-object v2
.end method

.method public getFrequency()D
    .locals 2

    .prologue
    .line 416
    iget-wide v0, p0, Lorg/farng/mp3/MP3File;->frequency:D

    return-wide v0
.end method

.method public getID3v1Tag()Lorg/farng/mp3/id3/ID3v1;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lorg/farng/mp3/MP3File;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    return-object v0
.end method

.method public getID3v2Tag()Lorg/farng/mp3/id3/AbstractID3v2;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

    return-object v0
.end method

.method public getLayer()B
    .locals 1

    .prologue
    .line 470
    iget-byte v0, p0, Lorg/farng/mp3/MP3File;->layer:B

    return v0
.end method

.method public getLyrics3Tag()Lorg/farng/mp3/lyrics3/AbstractLyrics3;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lorg/farng/mp3/MP3File;->lyrics3tag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    return-object v0
.end method

.method public getMode()B
    .locals 1

    .prologue
    .line 497
    iget-byte v0, p0, Lorg/farng/mp3/MP3File;->mode:B

    return v0
.end method

.method public getModeExtension()B
    .locals 1

    .prologue
    .line 501
    iget-byte v0, p0, Lorg/farng/mp3/MP3File;->modeExtension:B

    return v0
.end method

.method public getMp3StartByte()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lorg/farng/mp3/MP3File;->mp3file:Ljava/io/File;

    invoke-virtual {p0, v0}, Lorg/farng/mp3/MP3File;->getMp3StartByte(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMp3StartByte(Ljava/io/File;)J
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 531
    const/4 v0, 0x0

    .line 532
    .local v0, rfile:Ljava/io/RandomAccessFile;
    const-wide/16 v2, 0x0

    .line 534
    .local v2, startByte:J
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v1, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    .end local v0           #rfile:Ljava/io/RandomAccessFile;
    .local v1, rfile:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/farng/mp3/MP3File;->seekMP3Frame(Ljava/io/RandomAccessFile;)Z

    .line 536
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 538
    if-eqz v1, :cond_0

    .line 539
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 542
    :cond_0
    return-wide v2

    .line 538
    .end local v1           #rfile:Ljava/io/RandomAccessFile;
    .restart local v0       #rfile:Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v4

    :goto_0
    if-eqz v0, :cond_1

    .line 539
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    throw v4

    .line 538
    .end local v0           #rfile:Ljava/io/RandomAccessFile;
    .restart local v1       #rfile:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #rfile:Ljava/io/RandomAccessFile;
    .restart local v0       #rfile:Ljava/io/RandomAccessFile;
    goto :goto_0
.end method

.method public getMp3file()Ljava/io/File;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lorg/farng/mp3/MP3File;->mp3file:Ljava/io/File;

    return-object v0
.end method

.method public getMpegVersion()B
    .locals 1

    .prologue
    .line 554
    iget-byte v0, p0, Lorg/farng/mp3/MP3File;->mpegVersion:B

    return v0
.end method

.method public getUnsynchronizedFragments()Ljava/util/Set;
    .locals 10

    .prologue
    .line 588
    new-instance v8, Lorg/farng/mp3/id3/ID3v2_4;

    iget-object v9, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

    invoke-direct {v8, v9}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 589
    .local v8, total:Lorg/farng/mp3/id3/ID3v2_4;
    new-instance v7, Ljava/util/HashSet;

    const/16 v9, 0x20

    invoke-direct {v7, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 590
    .local v7, set:Ljava/util/Set;
    iget-object v9, p0, Lorg/farng/mp3/MP3File;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    invoke-virtual {v8, v9}, Lorg/farng/mp3/id3/ID3v2_4;->append(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 591
    iget-object v9, p0, Lorg/farng/mp3/MP3File;->lyrics3tag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    invoke-virtual {v8, v9}, Lorg/farng/mp3/id3/ID3v2_4;->append(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 592
    iget-object v9, p0, Lorg/farng/mp3/MP3File;->filenameTag:Lorg/farng/mp3/filename/FilenameTag;

    invoke-virtual {v8, v9}, Lorg/farng/mp3/id3/ID3v2_4;->append(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 593
    iget-object v9, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

    invoke-virtual {v8, v9}, Lorg/farng/mp3/id3/ID3v2_4;->append(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 594
    new-instance v2, Lorg/farng/mp3/id3/ID3v2_4;

    iget-object v9, p0, Lorg/farng/mp3/MP3File;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    invoke-direct {v2, v9}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 595
    .local v2, id3v1:Lorg/farng/mp3/id3/ID3v2_4;
    new-instance v6, Lorg/farng/mp3/id3/ID3v2_4;

    iget-object v9, p0, Lorg/farng/mp3/MP3File;->lyrics3tag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    invoke-direct {v6, v9}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 596
    .local v6, lyrics3:Lorg/farng/mp3/id3/ID3v2_4;
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-object v9, p0, Lorg/farng/mp3/MP3File;->filenameTag:Lorg/farng/mp3/filename/FilenameTag;

    invoke-direct {v0, v9}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 597
    .local v0, filename:Lorg/farng/mp3/id3/ID3v2_4;
    iget-object v3, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

    .line 598
    .local v3, id3v2:Lorg/farng/mp3/id3/AbstractID3v2;
    invoke-virtual {v8}, Lorg/farng/mp3/id3/AbstractID3v2;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 599
    .local v5, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 600
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/AbstractID3v2Frame;

    .line 601
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {v1}, Lorg/farng/mp3/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 602
    .local v4, identifier:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 603
    invoke-virtual {v3, v4}, Lorg/farng/mp3/id3/AbstractID3v2;->hasFrame(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 604
    invoke-virtual {v3, v4}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v9

    invoke-virtual {v9, v1}, Lorg/farng/mp3/AbstractMP3Fragment;->isSubsetOf(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 605
    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_1
    invoke-virtual {v2, v4}, Lorg/farng/mp3/id3/AbstractID3v2;->hasFrame(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 610
    invoke-virtual {v2, v4}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v9

    invoke-virtual {v9, v1}, Lorg/farng/mp3/AbstractMP3Fragment;->isSubsetOf(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 611
    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_2
    invoke-virtual {v6, v4}, Lorg/farng/mp3/id3/AbstractID3v2;->hasFrame(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 615
    invoke-virtual {v6, v4}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v9

    invoke-virtual {v9, v1}, Lorg/farng/mp3/AbstractMP3Fragment;->isSubsetOf(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 616
    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 619
    :cond_3
    invoke-virtual {v0, v4}, Lorg/farng/mp3/id3/AbstractID3v2;->hasFrame(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 620
    invoke-virtual {v0, v4}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v9

    invoke-virtual {v9, v1}, Lorg/farng/mp3/AbstractMP3Fragment;->isSubsetOf(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 621
    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 625
    .end local v1           #frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    .end local v4           #identifier:Ljava/lang/String;
    :cond_4
    return-object v7
.end method

.method public hasFilenameTag()Z
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lorg/farng/mp3/MP3File;->filenameTag:Lorg/farng/mp3/filename/FilenameTag;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasID3v1Tag()Z
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lorg/farng/mp3/MP3File;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasID3v2Tag()Z
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLyrics3Tag()Z
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lorg/farng/mp3/MP3File;->lyrics3tag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCopyProtected()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lorg/farng/mp3/MP3File;->copyProtected:Z

    return v0
.end method

.method public isHome()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lorg/farng/mp3/MP3File;->home:Z

    return v0
.end method

.method public isPadding()Z
    .locals 1

    .prologue
    .line 558
    iget-boolean v0, p0, Lorg/farng/mp3/MP3File;->padding:Z

    return v0
.end method

.method public isPrivacy()Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lorg/farng/mp3/MP3File;->privacy:Z

    return v0
.end method

.method public isProtection()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lorg/farng/mp3/MP3File;->protection:Z

    return v0
.end method

.method public isUnsynchronized()Z
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0}, Lorg/farng/mp3/MP3File;->getUnsynchronizedFragments()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVariableBitRate()Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lorg/farng/mp3/MP3File;->variableBitRate:Z

    return v0
.end method

.method public save()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    .line 845
    iget-object v0, p0, Lorg/farng/mp3/MP3File;->mp3file:Ljava/io/File;

    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/farng/mp3/TagOptionSingleton;->getDefaultSaveMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/farng/mp3/MP3File;->save(Ljava/io/File;I)V

    .line 846
    return-void
.end method

.method public save(I)V
    .locals 1
    .parameter "saveMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    .line 859
    iget-object v0, p0, Lorg/farng/mp3/MP3File;->mp3file:Ljava/io/File;

    invoke-virtual {p0, v0, p1}, Lorg/farng/mp3/MP3File;->save(Ljava/io/File;I)V

    .line 860
    return-void
.end method

.method public save(Ljava/io/File;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    .line 883
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/farng/mp3/TagOptionSingleton;->getDefaultSaveMode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/farng/mp3/MP3File;->save(Ljava/io/File;I)V

    .line 884
    return-void
.end method

.method public save(Ljava/io/File;I)V
    .locals 8
    .parameter "file"
    .parameter "saveMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 911
    if-lt p2, v6, :cond_0

    if-le p2, v7, :cond_1

    .line 912
    :cond_0
    new-instance v2, Lorg/farng/mp3/TagException;

    const-string v3, "Invalid Save Mode"

    invoke-direct {v2, v3}, Lorg/farng/mp3/TagException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 914
    :cond_1
    const/4 v0, 0x0

    .line 916
    .local v0, rfile:Ljava/io/RandomAccessFile;
    :try_start_0
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

    if-eqz v2, :cond_2

    .line 917
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->getId3v2PaddingSize()I

    move-result v2

    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v3

    invoke-virtual {v3}, Lorg/farng/mp3/TagOptionSingleton;->isId3v2PaddingWillShorten()Z

    move-result v3

    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v4

    invoke-virtual {v4}, Lorg/farng/mp3/TagOptionSingleton;->isId3v2PaddingCopyTag()Z

    move-result v4

    invoke-virtual {p0, v2, v3, v4, p1}, Lorg/farng/mp3/MP3File;->adjustID3v2Padding(IZZLjava/io/File;)Z

    .line 925
    :cond_2
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 926
    .end local v0           #rfile:Ljava/io/RandomAccessFile;
    .local v1, rfile:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->isId3v2Save()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 927
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

    if-nez v2, :cond_8

    .line 928
    if-ne p2, v5, :cond_3

    .line 929
    new-instance v2, Lorg/farng/mp3/id3/ID3v2_4;

    invoke-direct {v2}, Lorg/farng/mp3/id3/ID3v2_4;-><init>()V

    invoke-virtual {v2, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->delete(Ljava/io/RandomAccessFile;)V

    .line 941
    :cond_3
    :goto_0
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->isLyrics3Save()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 942
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->lyrics3tag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    if-nez v2, :cond_c

    .line 943
    if-ne p2, v5, :cond_4

    .line 944
    new-instance v2, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    invoke-direct {v2}, Lorg/farng/mp3/lyrics3/Lyrics3v2;-><init>()V

    invoke-virtual {v2, v1}, Lorg/farng/mp3/lyrics3/AbstractLyrics3;->delete(Ljava/io/RandomAccessFile;)V

    .line 956
    :cond_4
    :goto_1
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->isId3v1Save()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 957
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    if-nez v2, :cond_f

    .line 958
    if-ne p2, v5, :cond_5

    .line 959
    new-instance v2, Lorg/farng/mp3/id3/ID3v1;

    invoke-direct {v2}, Lorg/farng/mp3/id3/ID3v1;-><init>()V

    invoke-virtual {v2, v1}, Lorg/farng/mp3/id3/ID3v1;->delete(Ljava/io/RandomAccessFile;)V

    .line 971
    :cond_5
    :goto_2
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->isFilenameTagSave()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 972
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->filenameTag:Lorg/farng/mp3/filename/FilenameTag;

    if-eqz v2, :cond_6

    .line 973
    if-ne p2, v6, :cond_12

    .line 974
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->filenameTag:Lorg/farng/mp3/filename/FilenameTag;

    invoke-virtual {v2, v1}, Lorg/farng/mp3/filename/FilenameTag;->write(Ljava/io/RandomAccessFile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 983
    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 984
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 987
    :cond_7
    return-void

    .line 932
    :cond_8
    if-ne p2, v6, :cond_a

    .line 933
    :try_start_2
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

    invoke-virtual {v2, v1}, Lorg/farng/mp3/AbstractMP3FileItem;->write(Ljava/io/RandomAccessFile;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 983
    :catchall_0
    move-exception v2

    move-object v0, v1

    .end local v1           #rfile:Ljava/io/RandomAccessFile;
    .restart local v0       #rfile:Ljava/io/RandomAccessFile;
    :goto_4
    if-eqz v0, :cond_9

    .line 984
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_9
    throw v2

    .line 934
    .end local v0           #rfile:Ljava/io/RandomAccessFile;
    .restart local v1       #rfile:Ljava/io/RandomAccessFile;
    :cond_a
    if-ne p2, v7, :cond_b

    .line 935
    :try_start_3
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

    invoke-virtual {v2, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->append(Ljava/io/RandomAccessFile;)V

    goto :goto_0

    .line 936
    :cond_b
    if-ne p2, v5, :cond_3

    .line 937
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

    invoke-virtual {v2, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->overwrite(Ljava/io/RandomAccessFile;)V

    goto :goto_0

    .line 947
    :cond_c
    if-ne p2, v6, :cond_d

    .line 948
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->lyrics3tag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    invoke-virtual {v2, v1}, Lorg/farng/mp3/AbstractMP3FileItem;->write(Ljava/io/RandomAccessFile;)V

    goto :goto_1

    .line 949
    :cond_d
    if-ne p2, v7, :cond_e

    .line 950
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->lyrics3tag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    invoke-virtual {v2, v1}, Lorg/farng/mp3/lyrics3/AbstractLyrics3;->append(Ljava/io/RandomAccessFile;)V

    goto :goto_1

    .line 951
    :cond_e
    if-ne p2, v5, :cond_4

    .line 952
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->lyrics3tag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    invoke-virtual {v2, v1}, Lorg/farng/mp3/lyrics3/AbstractLyrics3;->overwrite(Ljava/io/RandomAccessFile;)V

    goto :goto_1

    .line 962
    :cond_f
    if-ne p2, v6, :cond_10

    .line 963
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    invoke-virtual {v2, v1}, Lorg/farng/mp3/id3/ID3v1;->write(Ljava/io/RandomAccessFile;)V

    goto :goto_2

    .line 964
    :cond_10
    if-ne p2, v7, :cond_11

    .line 965
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    invoke-virtual {v2, v1}, Lorg/farng/mp3/id3/AbstractID3v1;->append(Ljava/io/RandomAccessFile;)V

    goto :goto_2

    .line 966
    :cond_11
    if-ne p2, v5, :cond_5

    .line 967
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    invoke-virtual {v2, v1}, Lorg/farng/mp3/id3/AbstractID3v1;->overwrite(Ljava/io/RandomAccessFile;)V

    goto :goto_2

    .line 975
    :cond_12
    if-ne p2, v7, :cond_13

    .line 976
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->filenameTag:Lorg/farng/mp3/filename/FilenameTag;

    invoke-virtual {v2, v1}, Lorg/farng/mp3/filename/FilenameTag;->append(Ljava/io/RandomAccessFile;)V

    goto :goto_3

    .line 977
    :cond_13
    if-ne p2, v5, :cond_6

    .line 978
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->filenameTag:Lorg/farng/mp3/filename/FilenameTag;

    invoke-virtual {v2, v1}, Lorg/farng/mp3/filename/FilenameTag;->overwrite(Ljava/io/RandomAccessFile;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 983
    .end local v1           #rfile:Ljava/io/RandomAccessFile;
    .restart local v0       #rfile:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v2

    goto :goto_4
.end method

.method public save(Ljava/lang/String;)V
    .locals 2
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    .line 871
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/farng/mp3/TagOptionSingleton;->getDefaultSaveMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/farng/mp3/MP3File;->save(Ljava/io/File;I)V

    .line 872
    return-void
.end method

.method public save(Ljava/lang/String;I)V
    .locals 1
    .parameter "filename"
    .parameter "saveMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    .line 897
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/farng/mp3/MP3File;->save(Ljava/io/File;I)V

    .line 898
    return-void
.end method

.method public seekMP3Frame()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 998
    const/4 v1, 0x0

    .line 999
    .local v1, rfile:Ljava/io/RandomAccessFile;
    const/4 v0, 0x0

    .line 1001
    .local v0, found:Z
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/farng/mp3/MP3File;->mp3file:Ljava/io/File;

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    .end local v1           #rfile:Ljava/io/RandomAccessFile;
    .local v2, rfile:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {p0, v2}, Lorg/farng/mp3/MP3File;->seekMP3Frame(Ljava/io/RandomAccessFile;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 1004
    if-eqz v2, :cond_0

    .line 1005
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 1008
    :cond_0
    return v0

    .line 1004
    .end local v2           #rfile:Ljava/io/RandomAccessFile;
    .restart local v1       #rfile:Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v3

    :goto_0
    if-eqz v1, :cond_1

    .line 1005
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    throw v3

    .line 1004
    .end local v1           #rfile:Ljava/io/RandomAccessFile;
    .restart local v2       #rfile:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #rfile:Ljava/io/RandomAccessFile;
    .restart local v1       #rfile:Ljava/io/RandomAccessFile;
    goto :goto_0
.end method

.method public seekMP3Frame(Ljava/io/RandomAccessFile;)Z
    .locals 10
    .parameter "seekFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x1

    .line 1023
    const/4 v5, 0x0

    .line 1026
    .local v5, syncFound:Z
    const-wide/16 v1, 0x1

    .line 1027
    .local v1, filePointer:J
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/farng/mp3/MP3File;->variableBitRate:Z

    .line 1029
    const-wide/16 v6, 0x0

    :try_start_0
    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1031
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v3

    .line 1032
    .local v3, first:B
    const/4 v6, -0x1

    if-ne v3, v6, :cond_2

    .line 1033
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    .line 1034
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v6

    and-int/lit8 v6, v6, -0x20

    int-to-byte v4, v6

    .line 1035
    .local v4, second:B
    const/16 v6, -0x20

    if-ne v4, v6, :cond_1

    .line 1036
    sub-long v6, v1, v8

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1039
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v6

    invoke-virtual {v6}, Lorg/farng/mp3/TagOptionSingleton;->getNumberMP3SyncFrame()I

    move-result v6

    invoke-direct {p0, p1, v6}, Lorg/farng/mp3/MP3File;->seekNextMP3Frame(Ljava/io/RandomAccessFile;I)Z

    move-result v5

    .line 1042
    :cond_1
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1044
    .end local v4           #second:B
    :cond_2
    if-eqz v5, :cond_0

    .line 1045
    sub-long v6, v1, v8

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1051
    .end local v3           #first:B
    :goto_0
    return v5

    .line 1046
    :catch_0
    move-exception v0

    .line 1047
    .local v0, ex:Ljava/io/EOFException;
    const/4 v5, 0x0

    .line 1050
    goto :goto_0

    .line 1048
    .end local v0           #ex:Ljava/io/EOFException;
    :catch_1
    move-exception v0

    .line 1049
    .local v0, ex:Ljava/io/IOException;
    throw v0
.end method

.method public setFilenameTag(Lorg/farng/mp3/filename/FilenameTag;)V
    .locals 0
    .parameter "filenameTag"

    .prologue
    .line 321
    iput-object p1, p0, Lorg/farng/mp3/MP3File;->filenameTag:Lorg/farng/mp3/filename/FilenameTag;

    .line 322
    return-void
.end method

.method public setFrameAcrossTags(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V
    .locals 3
    .parameter "frame"

    .prologue
    .line 343
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    if-eqz v2, :cond_0

    .line 344
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-object v2, p0, Lorg/farng/mp3/MP3File;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    invoke-direct {v0, v2}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 345
    .local v0, id3v1:Lorg/farng/mp3/id3/ID3v2_4;
    invoke-virtual {v0, p1}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 346
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    invoke-virtual {v2, v0}, Lorg/farng/mp3/id3/ID3v1;->overwrite(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 348
    .end local v0           #id3v1:Lorg/farng/mp3/id3/ID3v2_4;
    :cond_0
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

    if-eqz v2, :cond_1

    .line 349
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

    invoke-virtual {v2, p1}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 351
    :cond_1
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->lyrics3tag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    if-eqz v2, :cond_2

    .line 352
    new-instance v1, Lorg/farng/mp3/id3/ID3v2_4;

    iget-object v2, p0, Lorg/farng/mp3/MP3File;->lyrics3tag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    invoke-direct {v1, v2}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 353
    .local v1, lyrics3:Lorg/farng/mp3/id3/ID3v2_4;
    invoke-virtual {v1, p1}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 354
    new-instance v2, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    invoke-direct {v2, v1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    iput-object v2, p0, Lorg/farng/mp3/MP3File;->lyrics3tag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    .line 356
    .end local v1           #lyrics3:Lorg/farng/mp3/id3/ID3v2_4;
    :cond_2
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->filenameTag:Lorg/farng/mp3/filename/FilenameTag;

    if-eqz v2, :cond_3

    .line 357
    iget-object v2, p0, Lorg/farng/mp3/MP3File;->filenameTag:Lorg/farng/mp3/filename/FilenameTag;

    invoke-virtual {v2, p1}, Lorg/farng/mp3/filename/FilenameTag;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 359
    :cond_3
    return-void
.end method

.method public setID3v1Tag(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 1
    .parameter "mp3tag"

    .prologue
    .line 430
    new-instance v0, Lorg/farng/mp3/id3/ID3v1_1;

    invoke-direct {v0, p1}, Lorg/farng/mp3/id3/ID3v1_1;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    iput-object v0, p0, Lorg/farng/mp3/MP3File;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    .line 431
    return-void
.end method

.method public setID3v1Tag(Lorg/farng/mp3/id3/ID3v1;)V
    .locals 0
    .parameter "id3v1tag"

    .prologue
    .line 434
    iput-object p1, p0, Lorg/farng/mp3/MP3File;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    .line 435
    return-void
.end method

.method public setID3v2Tag(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 1
    .parameter "mp3tag"

    .prologue
    .line 453
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_4;

    invoke-direct {v0, p1}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    iput-object v0, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

    .line 454
    return-void
.end method

.method public setID3v2Tag(Lorg/farng/mp3/id3/AbstractID3v2;)V
    .locals 0
    .parameter "id3v2tag"

    .prologue
    .line 457
    iput-object p1, p0, Lorg/farng/mp3/MP3File;->id3v2tag:Lorg/farng/mp3/id3/AbstractID3v2;

    .line 458
    return-void
.end method

.method public setLyrics3Tag(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 1
    .parameter "mp3tag"

    .prologue
    .line 480
    new-instance v0, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    invoke-direct {v0, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    iput-object v0, p0, Lorg/farng/mp3/MP3File;->lyrics3tag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    .line 481
    return-void
.end method

.method public setLyrics3Tag(Lorg/farng/mp3/lyrics3/AbstractLyrics3;)V
    .locals 0
    .parameter "lyrics3tag"

    .prologue
    .line 484
    iput-object p1, p0, Lorg/farng/mp3/MP3File;->lyrics3tag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    .line 485
    return-void
.end method

.method public setMp3file(Ljava/io/File;)V
    .locals 0
    .parameter "mp3file"

    .prologue
    .line 546
    iput-object p1, p0, Lorg/farng/mp3/MP3File;->mp3file:Ljava/io/File;

    .line 547
    return-void
.end method

.method public setVariableBitRate(Z)V
    .locals 0
    .parameter "variableBitRate"

    .prologue
    .line 629
    iput-boolean p1, p0, Lorg/farng/mp3/MP3File;->variableBitRate:Z

    .line 630
    return-void
.end method
