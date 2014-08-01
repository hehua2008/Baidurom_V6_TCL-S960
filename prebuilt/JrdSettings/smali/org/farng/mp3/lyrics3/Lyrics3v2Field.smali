.class public Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
.super Lorg/farng/mp3/AbstractMP3Fragment;
.source "Lyrics3v2Field.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/farng/mp3/AbstractMP3Fragment;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/InvalidTagException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Lorg/farng/mp3/AbstractMP3Fragment;-><init>()V

    .line 131
    invoke-virtual {p0, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;->read(Ljava/io/RandomAccessFile;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V
    .locals 5
    .parameter "frame"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/farng/mp3/AbstractMP3Fragment;-><init>()V

    .line 91
    invoke-virtual {p1}, Lorg/farng/mp3/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, frameIdentifier:Ljava/lang/String;
    const-string v3, "USLT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    new-instance v3, Lorg/farng/mp3/lyrics3/FieldBodyLYR;

    const-string v4, ""

    invoke-direct {v3, v4}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    .line 94
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v3

    check-cast v3, Lorg/farng/mp3/lyrics3/FieldBodyLYR;

    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v4

    check-cast v4, Lorg/farng/mp3/id3/FrameBodyUSLT;

    invoke-virtual {v3, v4}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->addLyric(Lorg/farng/mp3/id3/FrameBodyUSLT;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v3, "SYLT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    new-instance v3, Lorg/farng/mp3/lyrics3/FieldBodyLYR;

    const-string v4, ""

    invoke-direct {v3, v4}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    .line 97
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v3

    check-cast v3, Lorg/farng/mp3/lyrics3/FieldBodyLYR;

    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v4

    check-cast v4, Lorg/farng/mp3/id3/FrameBodySYLT;

    invoke-virtual {v3, v4}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->addLyric(Lorg/farng/mp3/id3/FrameBodySYLT;)V

    goto :goto_0

    .line 98
    :cond_2
    const-string v3, "COMM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 99
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v3

    check-cast v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    invoke-virtual {v3}, Lorg/farng/mp3/id3/FrameBodyCOMM;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, text:Ljava/lang/String;
    new-instance v3, Lorg/farng/mp3/lyrics3/FieldBodyINF;

    invoke-direct {v3, v1}, Lorg/farng/mp3/lyrics3/FieldBodyINF;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    goto :goto_0

    .line 101
    .end local v1           #text:Ljava/lang/String;
    :cond_3
    const-string v3, "TCOM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 102
    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;

    .line 103
    .local v2, textFrame:Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;
    new-instance v3, Lorg/farng/mp3/lyrics3/FieldBodyAUT;

    const-string v4, ""

    invoke-direct {v3, v4}, Lorg/farng/mp3/lyrics3/FieldBodyAUT;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    .line 104
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 105
    new-instance v3, Lorg/farng/mp3/lyrics3/FieldBodyAUT;

    invoke-virtual {v2}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/farng/mp3/lyrics3/FieldBodyAUT;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    goto :goto_0

    .line 107
    .end local v2           #textFrame:Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;
    :cond_4
    const-string v3, "TALB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 108
    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;

    .line 109
    .restart local v2       #textFrame:Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 110
    new-instance v3, Lorg/farng/mp3/lyrics3/FieldBodyEAL;

    invoke-virtual {v2}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/farng/mp3/lyrics3/FieldBodyEAL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    goto/16 :goto_0

    .line 112
    .end local v2           #textFrame:Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;
    :cond_5
    const-string v3, "TPE1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 113
    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;

    .line 114
    .restart local v2       #textFrame:Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 115
    new-instance v3, Lorg/farng/mp3/lyrics3/FieldBodyEAR;

    invoke-virtual {v2}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/farng/mp3/lyrics3/FieldBodyEAR;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    goto/16 :goto_0

    .line 117
    .end local v2           #textFrame:Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;
    :cond_6
    const-string v3, "TIT2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 118
    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;

    .line 119
    .restart local v2       #textFrame:Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 120
    new-instance v3, Lorg/farng/mp3/lyrics3/FieldBodyETT;

    invoke-virtual {v2}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/farng/mp3/lyrics3/FieldBodyETT;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    goto/16 :goto_0

    .line 123
    .end local v2           #textFrame:Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;
    :cond_7
    new-instance v3, Lorg/farng/mp3/TagException;

    const-string v4, "Cannot create Lyrics3v2 field from given ID3v2 frame"

    invoke-direct {v3, v4}, Lorg/farng/mp3/TagException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor <init>(Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/farng/mp3/AbstractMP3Fragment;-><init>(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/lyrics3/Lyrics3v2Field;)V
    .locals 0
    .parameter "copyObject"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/farng/mp3/AbstractMP3Fragment;-><init>(Lorg/farng/mp3/AbstractMP3Fragment;)V

    .line 76
    return-void
.end method

.method private readBody(Ljava/lang/String;Ljava/io/RandomAccessFile;)Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
    .locals 2
    .parameter "identifier"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/InvalidTagException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    const-string v1, "AUT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    new-instance v0, Lorg/farng/mp3/lyrics3/FieldBodyAUT;

    invoke-direct {v0, p2}, Lorg/farng/mp3/lyrics3/FieldBodyAUT;-><init>(Ljava/io/RandomAccessFile;)V

    .line 209
    .local v0, newBody:Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
    :goto_0
    return-object v0

    .line 192
    .end local v0           #newBody:Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
    :cond_0
    const-string v1, "EAL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    new-instance v0, Lorg/farng/mp3/lyrics3/FieldBodyEAL;

    invoke-direct {v0, p2}, Lorg/farng/mp3/lyrics3/FieldBodyEAL;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v0       #newBody:Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
    goto :goto_0

    .line 194
    .end local v0           #newBody:Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
    :cond_1
    const-string v1, "EAR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    new-instance v0, Lorg/farng/mp3/lyrics3/FieldBodyEAR;

    invoke-direct {v0, p2}, Lorg/farng/mp3/lyrics3/FieldBodyEAR;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v0       #newBody:Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
    goto :goto_0

    .line 196
    .end local v0           #newBody:Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
    :cond_2
    const-string v1, "ETT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    new-instance v0, Lorg/farng/mp3/lyrics3/FieldBodyETT;

    invoke-direct {v0, p2}, Lorg/farng/mp3/lyrics3/FieldBodyETT;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v0       #newBody:Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
    goto :goto_0

    .line 198
    .end local v0           #newBody:Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
    :cond_3
    const-string v1, "IMG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 199
    new-instance v0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;

    invoke-direct {v0, p2}, Lorg/farng/mp3/lyrics3/FieldBodyIMG;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v0       #newBody:Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
    goto :goto_0

    .line 200
    .end local v0           #newBody:Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
    :cond_4
    const-string v1, "IND"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 201
    new-instance v0, Lorg/farng/mp3/lyrics3/FieldBodyIND;

    invoke-direct {v0, p2}, Lorg/farng/mp3/lyrics3/FieldBodyIND;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v0       #newBody:Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
    goto :goto_0

    .line 202
    .end local v0           #newBody:Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
    :cond_5
    const-string v1, "INF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 203
    new-instance v0, Lorg/farng/mp3/lyrics3/FieldBodyINF;

    invoke-direct {v0, p2}, Lorg/farng/mp3/lyrics3/FieldBodyINF;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v0       #newBody:Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
    goto :goto_0

    .line 204
    .end local v0           #newBody:Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
    :cond_6
    const-string v1, "LYR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 205
    new-instance v0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;

    invoke-direct {v0, p2}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v0       #newBody:Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
    goto :goto_0

    .line 207
    .end local v0           #newBody:Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
    :cond_7
    new-instance v0, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;

    invoke-direct {v0, p2}, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v0       #newBody:Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
    goto :goto_0
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    if-nez v0, :cond_0

    .line 136
    const-string v0, ""

    .line 138
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3FileItem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 8
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/InvalidTagException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 146
    const/4 v5, 0x6

    new-array v1, v5, [B

    .line 152
    .local v1, buffer:[B
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 153
    .local v2, filePointer:J
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    .line 154
    .local v0, b:B
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 158
    invoke-virtual {p1, v1, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 159
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v6, v7}, Ljava/lang/String;-><init>([BII)V

    .line 162
    .local v4, identifier:Ljava/lang/String;
    invoke-static {v4}, Lorg/farng/mp3/TagUtility;->isLyrics3v2FieldIdentifier(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 163
    new-instance v5, Lorg/farng/mp3/InvalidTagException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a valid ID3v2.4 frame"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/farng/mp3/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 165
    :cond_1
    invoke-direct {p0, v4, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;->readBody(Ljava/lang/String;Ljava/io/RandomAccessFile;)Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    .line 166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    if-nez v0, :cond_0

    .line 170
    const-string v0, ""

    .line 172
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v3

    invoke-virtual {v3}, Lorg/farng/mp3/AbstractMP3FragmentBody;->getSize()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v3

    invoke-virtual {v3}, Lorg/farng/mp3/TagOptionSingleton;->isLyrics3SaveEmptyField()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    :cond_0
    const/4 v3, 0x3

    new-array v0, v3, [B

    .line 178
    .local v0, buffer:[B
    invoke-virtual {p0}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, str:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 180
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 183
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->write(Ljava/io/RandomAccessFile;)V

    .line 185
    .end local v0           #buffer:[B
    .end local v1           #i:I
    .end local v2           #str:Ljava/lang/String;
    :cond_2
    return-void
.end method
