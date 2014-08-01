.class public Lorg/farng/mp3/id3/ID3v1_1;
.super Lorg/farng/mp3/id3/ID3v1;
.source "ID3v1_1.java"


# instance fields
.field protected track:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/farng/mp3/id3/ID3v1;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/TagNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/farng/mp3/id3/ID3v1;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    .line 128
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/ID3v1_1;->read(Ljava/io/RandomAccessFile;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 9
    .parameter "mp3tag"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x1e

    .line 51
    invoke-direct {p0}, Lorg/farng/mp3/id3/ID3v1;-><init>()V

    .line 31
    const/4 v6, -0x1

    iput-byte v6, p0, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    .line 52
    if-eqz p1, :cond_1

    .line 53
    instance-of v6, p1, Lorg/farng/mp3/id3/ID3v1;

    if-eqz v6, :cond_2

    .line 54
    instance-of v6, p1, Lorg/farng/mp3/id3/ID3v1_1;

    if-eqz v6, :cond_0

    .line 55
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move-object v2, p1

    .line 59
    check-cast v2, Lorg/farng/mp3/id3/ID3v1;

    .line 60
    .local v2, id3old:Lorg/farng/mp3/id3/ID3v1;
    new-instance v6, Ljava/lang/String;

    iget-object v7, v2, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    .line 61
    new-instance v6, Ljava/lang/String;

    iget-object v7, v2, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    .line 62
    new-instance v6, Ljava/lang/String;

    iget-object v7, v2, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    .line 63
    new-instance v6, Ljava/lang/String;

    iget-object v7, v2, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    .line 64
    new-instance v6, Ljava/lang/String;

    iget-object v7, v2, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    .line 65
    iget-byte v6, v2, Lorg/farng/mp3/id3/ID3v1;->genre:B

    iput-byte v6, p0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    .line 122
    .end local v2           #id3old:Lorg/farng/mp3/id3/ID3v1;
    :cond_1
    :goto_0
    return-void

    .line 70
    :cond_2
    new-instance v3, Lorg/farng/mp3/id3/ID3v2_4;

    invoke-direct {v3, p1}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 73
    .local v3, id3tag:Lorg/farng/mp3/id3/ID3v2_4;
    const-string v6, "TIT2"

    invoke-virtual {v3, v6}, Lorg/farng/mp3/id3/AbstractID3v2;->hasFrame(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 74
    const-string v6, "TIT2"

    invoke-virtual {v3, v6}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/ID3v2_4Frame;

    .line 75
    .local v1, frame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v6

    check-cast v6, Lorg/farng/mp3/id3/FrameBodyTIT2;

    invoke-virtual {v6}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, text:Ljava/lang/String;
    invoke-static {v5, v7}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    .line 78
    .end local v1           #frame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    .end local v5           #text:Ljava/lang/String;
    :cond_3
    const-string v6, "TPE1"

    invoke-virtual {v3, v6}, Lorg/farng/mp3/id3/AbstractID3v2;->hasFrame(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 79
    const-string v6, "TPE1"

    invoke-virtual {v3, v6}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/ID3v2_4Frame;

    .line 80
    .restart local v1       #frame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v6

    check-cast v6, Lorg/farng/mp3/id3/FrameBodyTPE1;

    invoke-virtual {v6}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v5

    .line 81
    .restart local v5       #text:Ljava/lang/String;
    invoke-static {v5, v7}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    .line 83
    .end local v1           #frame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    .end local v5           #text:Ljava/lang/String;
    :cond_4
    const-string v6, "TALB"

    invoke-virtual {v3, v6}, Lorg/farng/mp3/id3/AbstractID3v2;->hasFrame(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 84
    const-string v6, "TALB"

    invoke-virtual {v3, v6}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/ID3v2_4Frame;

    .line 85
    .restart local v1       #frame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v6

    check-cast v6, Lorg/farng/mp3/id3/FrameBodyTALB;

    invoke-virtual {v6}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v5

    .line 86
    .restart local v5       #text:Ljava/lang/String;
    invoke-static {v5, v7}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    .line 88
    .end local v1           #frame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    .end local v5           #text:Ljava/lang/String;
    :cond_5
    const-string v6, "TDRC"

    invoke-virtual {v3, v6}, Lorg/farng/mp3/id3/AbstractID3v2;->hasFrame(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 89
    const-string v6, "TDRC"

    invoke-virtual {v3, v6}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/ID3v2_4Frame;

    .line 90
    .restart local v1       #frame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v6

    check-cast v6, Lorg/farng/mp3/id3/FrameBodyTDRC;

    invoke-virtual {v6}, Lorg/farng/mp3/id3/FrameBodyTDRC;->getText()Ljava/lang/String;

    move-result-object v5

    .line 91
    .restart local v5       #text:Ljava/lang/String;
    const/4 v6, 0x4

    invoke-static {v5, v6}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    .line 93
    .end local v1           #frame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    .end local v5           #text:Ljava/lang/String;
    :cond_6
    const-string v6, "COMM"

    invoke-virtual {v3, v6}, Lorg/farng/mp3/id3/AbstractID3v2;->hasFrameOfType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 94
    const-string v6, "COMM"

    invoke-virtual {v3, v6}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrameOfType(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v4

    .line 95
    .local v4, iterator:Ljava/util/Iterator;
    const-string v5, ""

    .line 96
    .restart local v5       #text:Ljava/lang/String;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 97
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/ID3v2_4Frame;

    .line 98
    .restart local v1       #frame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v6

    check-cast v6, Lorg/farng/mp3/id3/FrameBodyCOMM;

    invoke-virtual {v6}, Lorg/farng/mp3/id3/FrameBodyCOMM;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 100
    .end local v1           #frame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    :cond_7
    const/16 v6, 0x1c

    invoke-static {v5, v6}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    .line 102
    .end local v4           #iterator:Ljava/util/Iterator;
    .end local v5           #text:Ljava/lang/String;
    :cond_8
    const-string v6, "TCON"

    invoke-virtual {v3, v6}, Lorg/farng/mp3/id3/AbstractID3v2;->hasFrame(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 103
    const-string v6, "TCON"

    invoke-virtual {v3, v6}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/ID3v2_4Frame;

    .line 104
    .restart local v1       #frame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v6

    check-cast v6, Lorg/farng/mp3/id3/FrameBodyTCON;

    invoke-virtual {v6}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v5

    .line 106
    .restart local v5       #text:Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Lorg/farng/mp3/TagUtility;->findNumber(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-byte v6, v6

    iput-byte v6, p0, Lorg/farng/mp3/id3/ID3v1;->genre:B
    :try_end_0
    .catch Lorg/farng/mp3/TagException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    .end local v1           #frame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    .end local v5           #text:Ljava/lang/String;
    :cond_9
    :goto_2
    const-string v6, "TRCK"

    invoke-virtual {v3, v6}, Lorg/farng/mp3/id3/AbstractID3v2;->hasFrame(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 112
    const-string v6, "TRCK"

    invoke-virtual {v3, v6}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/ID3v2_4Frame;

    .line 113
    .restart local v1       #frame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v6

    check-cast v6, Lorg/farng/mp3/id3/FrameBodyTRCK;

    invoke-virtual {v6}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v5

    .line 115
    .restart local v5       #text:Ljava/lang/String;
    :try_start_1
    invoke-static {v5}, Lorg/farng/mp3/TagUtility;->findNumber(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-byte v6, v6

    iput-byte v6, p0, Lorg/farng/mp3/id3/ID3v1_1;->track:B
    :try_end_1
    .catch Lorg/farng/mp3/TagException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, ex:Lorg/farng/mp3/TagException;
    iput-byte v8, p0, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    goto/16 :goto_0

    .line 107
    .end local v0           #ex:Lorg/farng/mp3/TagException;
    :catch_1
    move-exception v0

    .line 108
    .restart local v0       #ex:Lorg/farng/mp3/TagException;
    iput-byte v8, p0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    goto :goto_2
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/ID3v1_1;)V
    .locals 1
    .parameter "copyObject"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/ID3v1;-><init>(Lorg/farng/mp3/id3/ID3v1;)V

    .line 31
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    .line 45
    iget-byte v0, p1, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    .line 46
    return-void
.end method


# virtual methods
.method public append(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 152
    move-object v1, p0

    .line 154
    .local v1, oldTag:Lorg/farng/mp3/id3/ID3v1_1;
    if-eqz p1, :cond_1

    .line 155
    instance-of v2, p1, Lorg/farng/mp3/id3/ID3v1_1;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 156
    check-cast v0, Lorg/farng/mp3/id3/ID3v1_1;

    .line 160
    .local v0, newTag:Lorg/farng/mp3/id3/ID3v1_1;
    :goto_0
    instance-of v2, p1, Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    if-eqz v2, :cond_0

    .line 161
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/farng/mp3/TagOptionSingleton;->setId3v1SaveTrack(Z)V

    .line 163
    :cond_0
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->isId3v1SaveTrack()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-byte v2, v1, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    if-gtz v2, :cond_3

    iget-byte v2, v0, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    :goto_1
    iput-byte v2, v1, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    .line 173
    .end local v0           #newTag:Lorg/farng/mp3/id3/ID3v1_1;
    :cond_1
    invoke-super {p0, p1}, Lorg/farng/mp3/id3/ID3v1;->append(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 174
    return-void

    .line 158
    :cond_2
    new-instance v0, Lorg/farng/mp3/id3/ID3v1_1;

    invoke-direct {v0, p1}, Lorg/farng/mp3/id3/ID3v1_1;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .restart local v0       #newTag:Lorg/farng/mp3/id3/ID3v1_1;
    goto :goto_0

    .line 163
    :cond_3
    iget-byte v2, v1, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 177
    instance-of v2, p1, Lorg/farng/mp3/id3/ID3v1_1;

    if-nez v2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 180
    check-cast v0, Lorg/farng/mp3/id3/ID3v1_1;

    .line 181
    .local v0, id3v1_1:Lorg/farng/mp3/id3/ID3v1_1;
    iget-byte v2, p0, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    iget-byte v3, v0, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    if-ne v2, v3, :cond_0

    .line 184
    invoke-super {p0, p1}, Lorg/farng/mp3/id3/ID3v1;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string v0, "ID3v1_1.10"

    return-object v0
.end method

.method public getTrack()B
    .locals 1

    .prologue
    .line 148
    iget-byte v0, p0, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    return v0
.end method

.method public getTrackNumberOnAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v1_1;->getTrack()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public overwrite(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 188
    move-object v1, p0

    .line 189
    .local v1, oldTag:Lorg/farng/mp3/id3/ID3v1_1;
    const/4 v0, 0x0

    .line 190
    .local v0, newTag:Lorg/farng/mp3/id3/ID3v1_1;
    if-eqz p1, :cond_1

    .line 191
    instance-of v2, p1, Lorg/farng/mp3/id3/ID3v1_1;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 192
    check-cast v0, Lorg/farng/mp3/id3/ID3v1_1;

    .line 196
    :goto_0
    instance-of v2, p1, Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    if-eqz v2, :cond_0

    .line 197
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/farng/mp3/TagOptionSingleton;->setId3v1SaveTrack(Z)V

    .line 199
    :cond_0
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->isId3v1SaveTrack()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-byte v2, v0, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    :goto_1
    iput-byte v2, v1, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    .line 204
    :cond_1
    invoke-super {p0, v0}, Lorg/farng/mp3/id3/ID3v1;->overwrite(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 205
    return-void

    .line 194
    :cond_2
    new-instance v0, Lorg/farng/mp3/id3/ID3v1_1;

    .end local v0           #newTag:Lorg/farng/mp3/id3/ID3v1_1;
    invoke-direct {v0, p1}, Lorg/farng/mp3/id3/ID3v1_1;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .restart local v0       #newTag:Lorg/farng/mp3/id3/ID3v1_1;
    goto :goto_0

    .line 199
    :cond_3
    iget-byte v2, v1, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    goto :goto_1
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 8
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/TagNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x1c

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/16 v4, 0x1e

    const/4 v3, 0x0

    .line 208
    new-array v0, v4, [B

    .line 209
    .local v0, buffer:[B
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/ID3v1_1;->seek(Ljava/io/RandomAccessFile;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    new-instance v1, Lorg/farng/mp3/TagNotFoundException;

    const-string v2, "ID3v1.1 tag not found"

    invoke-direct {v1, v2}, Lorg/farng/mp3/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_0
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 213
    new-instance v1, Ljava/lang/String;

    const-string v2, "GBK"

    invoke-direct {v1, v0, v3, v4, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    .line 214
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 215
    new-instance v1, Ljava/lang/String;

    const-string v2, "GBK"

    invoke-direct {v1, v0, v3, v4, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    .line 216
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 217
    new-instance v1, Ljava/lang/String;

    const-string v2, "GBK"

    invoke-direct {v1, v0, v3, v4, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    .line 218
    invoke-virtual {p1, v0, v3, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 219
    new-instance v1, Ljava/lang/String;

    const-string v2, "GBK"

    invoke-direct {v1, v0, v3, v6, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    .line 220
    invoke-virtual {p1, v0, v3, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 221
    new-instance v1, Ljava/lang/String;

    const-string v2, "GBK"

    invoke-direct {v1, v0, v3, v7, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    .line 225
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 226
    aget-byte v1, v0, v3

    if-nez v1, :cond_1

    .line 227
    aget-byte v1, v0, v5

    iput-byte v1, p0, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    .line 231
    invoke-virtual {p1, v0, v3, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 232
    aget-byte v1, v0, v3

    iput-byte v1, p0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    .line 233
    return-void

    .line 229
    :cond_1
    new-instance v1, Lorg/farng/mp3/TagNotFoundException;

    const-string v2, "ID3v1.1 Tag Not found"

    invoke-direct {v1, v2}, Lorg/farng/mp3/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public seek(Ljava/io/RandomAccessFile;)Z
    .locals 10
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x80

    const/4 v7, 0x3

    const/4 v2, 0x0

    .line 236
    new-array v0, v7, [B

    .line 237
    .local v0, buffer:[B
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-gez v3, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v2

    .line 242
    :cond_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x3

    sub-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 243
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v3

    aput-byte v3, v0, v2

    .line 244
    aget-byte v3, v0, v2

    if-nez v3, :cond_0

    .line 249
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    sub-long/2addr v3, v8

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 252
    invoke-virtual {p1, v0, v2, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 253
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2, v7}, Ljava/lang/String;-><init>([BII)V

    .line 254
    .local v1, tag:Ljava/lang/String;
    const-string v2, "TAG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1
    .parameter "comment"

    .prologue
    .line 132
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setTrack(B)V
    .locals 0
    .parameter "track"

    .prologue
    .line 144
    iput-byte p1, p0, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    .line 145
    return-void
.end method

.method public setTrackNumberOnAlbum(Ljava/lang/String;)V
    .locals 1
    .parameter "trackNumberOnAlbum"

    .prologue
    .line 332
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/ID3v1_1;->setTrack(B)V

    .line 333
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v1_1;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v1;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Artist = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Album = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Comment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Year = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Genre = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Track = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    return-object v0
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
    const/16 v6, 0x1e

    .line 284
    const/16 v4, 0x80

    new-array v0, v4, [B

    .line 286
    .local v0, buffer:[B
    const/4 v2, 0x3

    .line 288
    .local v2, offset:I
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/ID3v1;->delete(Ljava/io/RandomAccessFile;)V

    .line 289
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 290
    const/4 v4, 0x0

    const/16 v5, 0x54

    aput-byte v5, v0, v4

    .line 291
    const/4 v4, 0x1

    const/16 v5, 0x41

    aput-byte v5, v0, v4

    .line 292
    const/4 v4, 0x2

    const/16 v5, 0x47

    aput-byte v5, v0, v4

    .line 293
    iget-object v4, p0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    invoke-static {v4, v6}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, str:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 295
    add-int v4, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_0
    add-int/lit8 v2, v2, 0x1e

    .line 298
    iget-object v4, p0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    invoke-static {v4, v6}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 299
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 300
    add-int/lit8 v4, v1, 0x21

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 302
    :cond_1
    add-int/lit8 v2, v2, 0x1e

    .line 303
    iget-object v4, p0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    invoke-static {v4, v6}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 304
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 305
    add-int/lit8 v4, v1, 0x3f

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 307
    :cond_2
    add-int/lit8 v2, v2, 0x1e

    .line 308
    iget-object v4, p0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 309
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 310
    add-int/lit8 v4, v1, 0x5d

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 312
    :cond_3
    add-int/lit8 v2, v2, 0x4

    .line 313
    iget-object v4, p0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    const/16 v5, 0x1c

    invoke-static {v4, v5}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 314
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 315
    add-int/lit8 v4, v1, 0x61

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 317
    :cond_4
    add-int/lit8 v2, v2, 0x1c

    .line 318
    add-int/lit8 v2, v2, 0x1

    .line 319
    iget-byte v4, p0, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    aput-byte v4, v0, v2

    .line 322
    add-int/lit8 v2, v2, 0x1

    .line 323
    iget-byte v4, p0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    aput-byte v4, v0, v2

    .line 324
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 325
    return-void
.end method

.method public write(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 270
    move-object v1, p0

    .line 271
    .local v1, oldTag:Lorg/farng/mp3/id3/ID3v1_1;
    const/4 v0, 0x0

    .line 272
    .local v0, newTag:Lorg/farng/mp3/id3/ID3v1_1;
    if-eqz p1, :cond_0

    .line 273
    instance-of v2, p1, Lorg/farng/mp3/id3/ID3v1_1;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 274
    check-cast v0, Lorg/farng/mp3/id3/ID3v1_1;

    .line 278
    :goto_0
    iget-byte v2, v0, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    iput-byte v2, v1, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    .line 280
    :cond_0
    invoke-super {p0, v0}, Lorg/farng/mp3/id3/ID3v1;->write(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 281
    return-void

    .line 276
    :cond_1
    new-instance v0, Lorg/farng/mp3/id3/ID3v1_1;

    .end local v0           #newTag:Lorg/farng/mp3/id3/ID3v1_1;
    invoke-direct {v0, p1}, Lorg/farng/mp3/id3/ID3v1_1;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .restart local v0       #newTag:Lorg/farng/mp3/id3/ID3v1_1;
    goto :goto_0
.end method
