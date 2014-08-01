.class public abstract Lorg/farng/mp3/id3/AbstractID3v2Frame;
.super Lorg/farng/mp3/AbstractMP3Fragment;
.source "AbstractID3v2Frame.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/farng/mp3/AbstractMP3Fragment;-><init>()V

    .line 23
    return-void
.end method

.method protected constructor <init>(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V
    .locals 0
    .parameter "frame"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/farng/mp3/AbstractMP3Fragment;-><init>(Lorg/farng/mp3/AbstractMP3Fragment;)V

    .line 37
    return-void
.end method

.method protected constructor <init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/farng/mp3/AbstractMP3Fragment;-><init>(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    .line 30
    return-void
.end method

.method public static isValidID3v2FrameIdentifier(Ljava/lang/String;)Z
    .locals 4
    .parameter "identifier"

    .prologue
    .line 49
    const/4 v2, 0x1

    .line 50
    .local v2, valid:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 52
    .local v0, character:C
    const/16 v3, 0x41

    if-lt v0, v3, :cond_0

    const/16 v3, 0x5a

    if-le v0, v3, :cond_1

    :cond_0
    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    const/16 v3, 0x39

    if-gt v0, v3, :cond_2

    .line 50
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 58
    .end local v0           #character:C
    :cond_3
    return v2
.end method

.method protected static readBody(Ljava/lang/String;Ljava/io/RandomAccessFile;)Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    .locals 3
    .parameter "identifier"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/InvalidTagException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p0}, Lorg/farng/mp3/TagUtility;->isID3v2_2FrameIdentifier(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-static {p0}, Lorg/farng/mp3/TagUtility;->convertFrameID2_2to2_4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, frameIdentifier:Ljava/lang/String;
    :goto_0
    const-string v2, "APIC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyAPIC;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyAPIC;-><init>(Ljava/io/RandomAccessFile;)V

    .line 229
    .local v1, newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :goto_1
    return-object v1

    .line 76
    .end local v0           #frameIdentifier:Ljava/lang/String;
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_0
    move-object v0, p0

    .restart local v0       #frameIdentifier:Ljava/lang/String;
    goto :goto_0

    .line 80
    :cond_1
    const-string v2, "COMM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyCOMM;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyCOMM;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto :goto_1

    .line 82
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_2
    const-string v2, "ENCR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyENCR;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyENCR;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto :goto_1

    .line 84
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_3
    const-string v2, "GEOB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 85
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyGEOB;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyGEOB;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto :goto_1

    .line 86
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_4
    const-string v2, "GRID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 87
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyGRID;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyGRID;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto :goto_1

    .line 88
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_5
    const-string v2, "MCDI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 89
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyMCDI;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyMCDI;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto :goto_1

    .line 90
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_6
    const-string v2, "PCNT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 91
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyPCNT;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyPCNT;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto :goto_1

    .line 92
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_7
    const-string v2, "POPM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 93
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyPOPM;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyPOPM;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto :goto_1

    .line 94
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_8
    const-string v2, "PRIV"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 95
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyPRIV;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyPRIV;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto :goto_1

    .line 96
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_9
    const-string v2, "RVAD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 97
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyRVAD;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyRVAD;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto :goto_1

    .line 98
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_a
    const-string v2, "SYLT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 99
    new-instance v1, Lorg/farng/mp3/id3/FrameBodySYLT;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodySYLT;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 100
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_b
    const-string v2, "TALB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 101
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTALB;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTALB;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 102
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_c
    const-string v2, "TBPM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 103
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTBPM;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTBPM;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 104
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_d
    const-string v2, "TCOM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 105
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTCOM;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTCOM;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 106
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_e
    const-string v2, "TCON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 107
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTCON;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTCON;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 108
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_f
    const-string v2, "TCOP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 109
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTCOP;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTCOP;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 110
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_10
    const-string v2, "TDAT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 111
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTDAT;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTDAT;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 112
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_11
    const-string v2, "TDEN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 113
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTDEN;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTDEN;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 114
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_12
    const-string v2, "TDLY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 115
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTDLY;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTDLY;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 116
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_13
    const-string v2, "TDOR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 117
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTDOR;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTDOR;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 118
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_14
    const-string v2, "TDRC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 119
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTDRC;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTDRC;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 120
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_15
    const-string v2, "TDRL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 121
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTDRL;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTDRL;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 122
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_16
    const-string v2, "TDTG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 123
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTDTG;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTDTG;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 124
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_17
    const-string v2, "TENC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 125
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTENC;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTENC;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 126
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_18
    const-string v2, "TEXT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 127
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTEXT;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTEXT;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 128
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_19
    const-string v2, "TFLT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 129
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTFLT;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTFLT;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 130
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_1a
    const-string v2, "TIME"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 131
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTIME;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTIME;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 132
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_1b
    const-string v2, "TIPL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 133
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTIPL;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTIPL;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 134
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_1c
    const-string v2, "TIT1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 135
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTIT1;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTIT1;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 136
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_1d
    const-string v2, "TIT2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 137
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTIT2;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTIT2;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 138
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_1e
    const-string v2, "TIT3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 139
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTIT3;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTIT3;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 140
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_1f
    const-string v2, "TKEY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 141
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTKEY;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTKEY;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 142
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_20
    const-string v2, "TLAN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 143
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTLAN;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTLAN;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 144
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_21
    const-string v2, "TLEN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 145
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTLEN;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTLEN;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 146
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_22
    const-string v2, "TMCL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 147
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTMCL;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTMCL;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 148
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_23
    const-string v2, "TMED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 149
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTMED;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTMED;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 150
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_24
    const-string v2, "TMOO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 151
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTMOO;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTMOO;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 152
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_25
    const-string v2, "TOAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 153
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTOAL;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTOAL;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 154
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_26
    const-string v2, "TOFN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 155
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTOFN;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTOFN;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 156
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_27
    const-string v2, "TOLY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 157
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTOLY;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTOLY;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 158
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_28
    const-string v2, "TOPE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 159
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTOPE;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTOPE;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 160
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_29
    const-string v2, "TORY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 161
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTORY;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTORY;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 162
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_2a
    const-string v2, "TOWN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 163
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTOWN;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTOWN;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 164
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_2b
    const-string v2, "TPE1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 165
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTPE1;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTPE1;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 166
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_2c
    const-string v2, "TPE2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 167
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTPE2;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTPE2;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 168
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_2d
    const-string v2, "TPE3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 169
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTPE3;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTPE3;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 170
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_2e
    const-string v2, "TPE4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 171
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTPE4;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTPE4;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 172
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_2f
    const-string v2, "TPOS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 173
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTPOS;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTPOS;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 174
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_30
    const-string v2, "TPRO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 175
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTPRO;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTPRO;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 176
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_31
    const-string v2, "TPUB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 177
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTPUB;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTPUB;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 178
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_32
    const-string v2, "TRCK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 179
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTRCK;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTRCK;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 180
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_33
    const-string v2, "TRDA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 181
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTRDA;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTRDA;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 182
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_34
    const-string v2, "TRSN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 183
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTRSN;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTRSN;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 184
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_35
    const-string v2, "TRSO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 185
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTRSO;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTRSO;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 186
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_36
    const-string v2, "TSIZ"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 187
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTSIZ;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTSIZ;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 188
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_37
    const-string v2, "TSOA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 189
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTSOA;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTSOA;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 190
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_38
    const-string v2, "TSOP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 191
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTSOP;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTSOP;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 192
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_39
    const-string v2, "TSOT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 193
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTSOT;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTSOT;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 194
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_3a
    const-string v2, "TSRC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 195
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTSRC;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTSRC;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 196
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_3b
    const-string v2, "TSSE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 197
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTSSE;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTSSE;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 198
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_3c
    const-string v2, "TSST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 199
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTSST;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTSST;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 200
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_3d
    const-string v2, "TXXX"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 201
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTXXX;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTXXX;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 202
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_3e
    const-string v2, "TYER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 203
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTYER;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTYER;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 204
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_3f
    const-string v2, "UFID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 205
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyUFID;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyUFID;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 206
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_40
    const-string v2, "USLT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 207
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyUSLT;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyUSLT;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 208
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_41
    const-string v2, "WCOM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 209
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyWCOM;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyWCOM;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 210
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_42
    const-string v2, "WCOP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 211
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyWCOP;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyWCOP;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 212
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_43
    const-string v2, "WOAF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 213
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyWOAF;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyWOAF;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 214
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_44
    const-string v2, "WOAR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 215
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyWOAR;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyWOAR;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 216
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_45
    const-string v2, "WOAS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 217
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyWOAS;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyWOAS;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 218
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_46
    const-string v2, "WORS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 219
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyWORS;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyWORS;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 220
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_47
    const-string v2, "WPAY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 221
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyWPAY;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyWPAY;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 222
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_48
    const-string v2, "WPUB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 223
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyWPUB;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyWPUB;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 224
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_49
    const-string v2, "WXXX"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 225
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyWXXX;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyWXXX;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1

    .line 227
    .end local v1           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_4a
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyUnsupported;

    invoke-direct {v1, p1}, Lorg/farng/mp3/id3/FrameBodyUnsupported;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v1       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    goto/16 :goto_1
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    const-string v0, ""

    .line 41
    .local v0, identifier:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3FileItem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    const-string v0, ""

    .line 63
    .local v0, string:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_0
    return-object v0
.end method
