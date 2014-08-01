.class public Lorg/farng/mp3/id3/FrameBodyRVAD;
.super Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
.source "FrameBodyRVAD.java"


# instance fields
.field bytesUsed:B

.field increment:B

.field peakBass:J

.field peakCenter:J

.field peakLeft:J

.field peakLeftBack:J

.field peakRight:J

.field peakRightBack:J

.field relativeBass:J

.field relativeCenter:J

.field relativeLeft:J

.field relativeLeftBack:J

.field relativeRight:J

.field relativeRightBack:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 86
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 67
    const/16 v0, 0x10

    iput-byte v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    .line 68
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->increment:B

    .line 69
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakBass:J

    .line 70
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakCenter:J

    .line 71
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeft:J

    .line 72
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeftBack:J

    .line 73
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRight:J

    .line 74
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRightBack:J

    .line 75
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeBass:J

    .line 76
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeCenter:J

    .line 77
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeft:J

    .line 78
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeftBack:J

    .line 79
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRight:J

    .line 80
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRightBack:J

    .line 87
    return-void
.end method

.method public constructor <init>(BBJJJJJJJJJJJJ)V
    .locals 4
    .parameter "increment"
    .parameter "bitsUsed"
    .parameter "relativeRight"
    .parameter "relativeLeft"
    .parameter "peakRight"
    .parameter "peakLeft"
    .parameter "relativeRightBack"
    .parameter "relativeLeftBack"
    .parameter "peakRightBack"
    .parameter "peakLeftBack"
    .parameter "relativeCenter"
    .parameter "peakCenter"
    .parameter "relativeBass"
    .parameter "peakBass"

    .prologue
    .line 126
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 67
    const/16 v2, 0x10

    iput-byte v2, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    .line 68
    const/4 v2, 0x0

    iput-byte v2, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->increment:B

    .line 69
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakBass:J

    .line 70
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakCenter:J

    .line 71
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeft:J

    .line 72
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeftBack:J

    .line 73
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRight:J

    .line 74
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRightBack:J

    .line 75
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeBass:J

    .line 76
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeCenter:J

    .line 77
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeft:J

    .line 78
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeftBack:J

    .line 79
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRight:J

    .line 80
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRightBack:J

    .line 127
    iput-byte p1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->increment:B

    .line 128
    add-int/lit8 v2, p2, -0x1

    div-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    .line 129
    iput-wide p3, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRight:J

    .line 130
    iput-wide p5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeft:J

    .line 131
    iput-wide p7, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRight:J

    .line 132
    iput-wide p9, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeft:J

    .line 133
    iput-wide p11, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRightBack:J

    .line 134
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeftBack:J

    .line 135
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRightBack:J

    .line 136
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeftBack:J

    .line 137
    move-wide/from16 v0, p19

    iput-wide v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeCenter:J

    .line 138
    move-wide/from16 v0, p21

    iput-wide v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakCenter:J

    .line 139
    move-wide/from16 v0, p23

    iput-wide v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeBass:J

    .line 140
    move-wide/from16 v0, p25

    iput-wide v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakBass:J

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/InvalidTagException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 146
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 67
    const/16 v0, 0x10

    iput-byte v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    .line 68
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->increment:B

    .line 69
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakBass:J

    .line 70
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakCenter:J

    .line 71
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeft:J

    .line 72
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeftBack:J

    .line 73
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRight:J

    .line 74
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRightBack:J

    .line 75
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeBass:J

    .line 76
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeCenter:J

    .line 77
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeft:J

    .line 78
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeftBack:J

    .line 79
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRight:J

    .line 80
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRightBack:J

    .line 147
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/FrameBodyRVAD;->read(Ljava/io/RandomAccessFile;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyRVAD;)V
    .locals 3
    .parameter "copyObject"

    .prologue
    const-wide/16 v1, 0x0

    .line 93
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 67
    const/16 v0, 0x10

    iput-byte v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    .line 68
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->increment:B

    .line 69
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakBass:J

    .line 70
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakCenter:J

    .line 71
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeft:J

    .line 72
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeftBack:J

    .line 73
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRight:J

    .line 74
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRightBack:J

    .line 75
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeBass:J

    .line 76
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeCenter:J

    .line 77
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeft:J

    .line 78
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeftBack:J

    .line 79
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRight:J

    .line 80
    iput-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRightBack:J

    .line 94
    iget-byte v0, p1, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    .line 95
    iget-byte v0, p1, Lorg/farng/mp3/id3/FrameBodyRVAD;->increment:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->increment:B

    .line 96
    iget-wide v0, p1, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakBass:J

    iput-wide v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakBass:J

    .line 97
    iget-wide v0, p1, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakCenter:J

    iput-wide v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakCenter:J

    .line 98
    iget-wide v0, p1, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeft:J

    iput-wide v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeft:J

    .line 99
    iget-wide v0, p1, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeftBack:J

    iput-wide v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeftBack:J

    .line 100
    iget-wide v0, p1, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRight:J

    iput-wide v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRight:J

    .line 101
    iget-wide v0, p1, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRightBack:J

    iput-wide v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRightBack:J

    .line 102
    iget-wide v0, p1, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeBass:J

    iput-wide v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeBass:J

    .line 103
    iget-wide v0, p1, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeCenter:J

    iput-wide v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeCenter:J

    .line 104
    iget-wide v0, p1, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeft:J

    iput-wide v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeft:J

    .line 105
    iget-wide v0, p1, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeftBack:J

    iput-wide v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeftBack:J

    .line 106
    iget-wide v0, p1, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRight:J

    iput-wide v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRight:J

    .line 107
    iget-wide v0, p1, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRightBack:J

    iput-wide v0, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRightBack:J

    .line 108
    return-void
.end method


# virtual methods
.method public equals()V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method equals() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-string v0, "RVAD"

    return-object v0
.end method

.method public getSize()I
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 155
    iget-byte v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v1, 0x2

    .line 156
    .local v0, size:I
    iget-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRightBack:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeftBack:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRightBack:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeftBack:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 160
    :cond_0
    iget-byte v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 162
    :cond_1
    iget-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeCenter:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakCenter:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 163
    :cond_2
    iget-byte v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 165
    :cond_3
    iget-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeBass:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    iget-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakBass:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    .line 166
    :cond_4
    iget-byte v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 168
    :cond_5
    return v0
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 10
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/InvalidTagException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    .line 188
    const/4 v2, 0x0

    .line 190
    .local v2, offset:I
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;->readHeader(Ljava/io/RandomAccessFile;)I

    move-result v4

    .line 191
    .local v4, size:I
    new-array v0, v4, [B

    .line 192
    .local v0, buffer:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 193
    add-int/lit8 v3, v2, 0x1

    .end local v2           #offset:I
    .local v3, offset:I
    aget-byte v5, v0, v2

    iput-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->increment:B

    .line 194
    add-int/lit8 v2, v3, 0x1

    .end local v3           #offset:I
    .restart local v2       #offset:I
    aget-byte v5, v0, v3

    add-int/lit8 v5, v5, -0x1

    div-int/lit8 v5, v5, 0x8

    mul-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    iput-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    .line 195
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v5, :cond_0

    .line 196
    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRight:J

    shl-long/2addr v5, v9

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, v0, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRight:J

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_0
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/lit8 v2, v5, 0x2

    .line 199
    const/4 v1, 0x0

    :goto_1
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v5, :cond_1

    .line 200
    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeft:J

    shl-long/2addr v5, v9

    add-int v7, v1, v2

    aget-byte v7, v0, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeft:J

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 202
    :cond_1
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v5

    .line 203
    const/4 v1, 0x0

    :goto_2
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v5, :cond_2

    .line 204
    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRight:J

    shl-long/2addr v5, v9

    add-int v7, v1, v2

    aget-byte v7, v0, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRight:J

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 206
    :cond_2
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v5

    .line 207
    const/4 v1, 0x0

    :goto_3
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v5, :cond_3

    .line 208
    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeft:J

    shl-long/2addr v5, v9

    add-int v7, v1, v2

    aget-byte v7, v0, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeft:J

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 210
    :cond_3
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v5

    .line 211
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_8

    .line 212
    const/4 v1, 0x0

    :goto_4
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v5, :cond_4

    .line 213
    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRightBack:J

    shl-long/2addr v5, v9

    add-int v7, v1, v2

    aget-byte v7, v0, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRightBack:J

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 215
    :cond_4
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v5

    .line 216
    const/4 v1, 0x0

    :goto_5
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v5, :cond_5

    .line 217
    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeftBack:J

    shl-long/2addr v5, v9

    add-int v7, v1, v2

    aget-byte v7, v0, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeftBack:J

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 219
    :cond_5
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v5

    .line 220
    const/4 v1, 0x0

    :goto_6
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v5, :cond_6

    .line 221
    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRightBack:J

    shl-long/2addr v5, v9

    add-int v7, v1, v2

    aget-byte v7, v0, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRightBack:J

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 223
    :cond_6
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v5

    .line 224
    const/4 v1, 0x0

    :goto_7
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v5, :cond_7

    .line 225
    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeftBack:J

    shl-long/2addr v5, v9

    add-int v7, v1, v2

    aget-byte v7, v0, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeftBack:J

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 227
    :cond_7
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v5

    .line 229
    :cond_8
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    mul-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_b

    .line 230
    const/4 v1, 0x0

    :goto_8
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v5, :cond_9

    .line 231
    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeCenter:J

    shl-long/2addr v5, v9

    add-int v7, v1, v2

    aget-byte v7, v0, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeCenter:J

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 233
    :cond_9
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v5

    .line 234
    const/4 v1, 0x0

    :goto_9
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v5, :cond_a

    .line 235
    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakCenter:J

    shl-long/2addr v5, v9

    add-int v7, v1, v2

    aget-byte v7, v0, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakCenter:J

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 237
    :cond_a
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v5

    .line 239
    :cond_b
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_e

    .line 240
    const/4 v1, 0x0

    :goto_a
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v5, :cond_c

    .line 241
    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeBass:J

    shl-long/2addr v5, v9

    add-int v7, v1, v2

    aget-byte v7, v0, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeBass:J

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 243
    :cond_c
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v5

    .line 244
    const/4 v1, 0x0

    :goto_b
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v5, :cond_d

    .line 245
    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakBass:J

    shl-long/2addr v5, v9

    add-int v7, v1, v2

    aget-byte v7, v0, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakBass:J

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 247
    :cond_d
    iget-byte v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v5

    .line 249
    :cond_e
    return-void
.end method

.method protected setupObjectList()V
    .locals 1

    .prologue
    .line 183
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->increment:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRight:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeft:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRight:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeft:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRightBack:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeftBack:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRightBack:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeftBack:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeCenter:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakCenter:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeBass:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakBass:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 10
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 297
    const/4 v2, 0x0

    .line 298
    .local v2, offset:I
    invoke-virtual {p0}, Lorg/farng/mp3/id3/FrameBodyRVAD;->getSize()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;->writeHeader(Ljava/io/RandomAccessFile;I)V

    .line 299
    invoke-virtual {p0}, Lorg/farng/mp3/id3/FrameBodyRVAD;->getSize()I

    move-result v4

    new-array v0, v4, [B

    .line 300
    .local v0, buffer:[B
    add-int/lit8 v3, v2, 0x1

    .end local v2           #offset:I
    .local v3, offset:I
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->increment:B

    aput-byte v4, v0, v2

    .line 301
    add-int/lit8 v2, v3, 0x1

    .end local v3           #offset:I
    .restart local v2       #offset:I
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    aput-byte v4, v0, v3

    .line 302
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v4, :cond_0

    .line 303
    add-int/lit8 v4, v1, 0x2

    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRight:J

    iget-byte v7, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    sub-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x8

    shr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    :cond_0
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/lit8 v2, v4, 0x2

    .line 306
    const/4 v1, 0x0

    :goto_1
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v4, :cond_1

    .line 307
    add-int v4, v1, v2

    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeft:J

    iget-byte v7, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    sub-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x8

    shr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 309
    :cond_1
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v4

    .line 310
    const/4 v1, 0x0

    :goto_2
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v4, :cond_2

    .line 311
    add-int v4, v1, v2

    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRight:J

    iget-byte v7, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    sub-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x8

    shr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 313
    :cond_2
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v4

    .line 314
    const/4 v1, 0x0

    :goto_3
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v4, :cond_3

    .line 315
    add-int v4, v1, v2

    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeft:J

    iget-byte v7, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    sub-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x8

    shr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 317
    :cond_3
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v4

    .line 318
    iget-wide v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRightBack:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_4

    iget-wide v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeftBack:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_4

    iget-wide v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRightBack:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_4

    iget-wide v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeftBack:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_9

    .line 322
    :cond_4
    const/4 v1, 0x0

    :goto_4
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v4, :cond_5

    .line 323
    add-int v4, v1, v2

    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeRightBack:J

    iget-byte v7, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    sub-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x8

    shr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 325
    :cond_5
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v4

    .line 326
    const/4 v1, 0x0

    :goto_5
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v4, :cond_6

    .line 327
    add-int v4, v1, v2

    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeLeftBack:J

    iget-byte v7, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    sub-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x8

    shr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 329
    :cond_6
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v4

    .line 330
    const/4 v1, 0x0

    :goto_6
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v4, :cond_7

    .line 331
    add-int v4, v1, v2

    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakRightBack:J

    iget-byte v7, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    sub-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x8

    shr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 333
    :cond_7
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v4

    .line 334
    const/4 v1, 0x0

    :goto_7
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v4, :cond_8

    .line 335
    add-int v4, v1, v2

    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakLeftBack:J

    iget-byte v7, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    sub-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x8

    shr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 337
    :cond_8
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v4

    .line 339
    :cond_9
    iget-wide v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeCenter:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_a

    iget-wide v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakCenter:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_d

    .line 340
    :cond_a
    const/4 v1, 0x0

    :goto_8
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v4, :cond_b

    .line 341
    add-int v4, v1, v2

    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeCenter:J

    iget-byte v7, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    sub-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x8

    shr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 343
    :cond_b
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v4

    .line 344
    const/4 v1, 0x0

    :goto_9
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v4, :cond_c

    .line 345
    add-int v4, v1, v2

    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakCenter:J

    iget-byte v7, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    sub-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x8

    shr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 347
    :cond_c
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v4

    .line 349
    :cond_d
    iget-wide v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeBass:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_e

    iget-wide v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakBass:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_11

    .line 350
    :cond_e
    const/4 v1, 0x0

    :goto_a
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v4, :cond_f

    .line 351
    add-int v4, v1, v2

    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->relativeBass:J

    iget-byte v7, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    sub-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x8

    shr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 353
    :cond_f
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v4

    .line 354
    const/4 v1, 0x0

    :goto_b
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    if-ge v1, v4, :cond_10

    .line 355
    add-int v4, v1, v2

    iget-wide v5, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->peakBass:J

    iget-byte v7, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    sub-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x8

    shr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 357
    :cond_10
    iget-byte v4, p0, Lorg/farng/mp3/id3/FrameBodyRVAD;->bytesUsed:B

    add-int/2addr v2, v4

    .line 359
    :cond_11
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 360
    return-void
.end method
