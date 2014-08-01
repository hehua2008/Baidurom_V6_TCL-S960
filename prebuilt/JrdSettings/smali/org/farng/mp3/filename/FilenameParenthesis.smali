.class public Lorg/farng/mp3/filename/FilenameParenthesis;
.super Lorg/farng/mp3/filename/FilenameDelimiter;
.source "FilenameParenthesis.java"


# instance fields
.field private middleComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

.field private openDelimiter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;-><init>()V

    .line 24
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->middleComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    .line 28
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->openDelimiter:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/filename/FilenameParenthesis;)V
    .locals 1
    .parameter "copyObject"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Lorg/farng/mp3/filename/FilenameDelimiter;-><init>(Lorg/farng/mp3/filename/FilenameDelimiter;)V

    .line 24
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->middleComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    .line 28
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->openDelimiter:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lorg/farng/mp3/filename/FilenameParenthesis;->openDelimiter:Ljava/lang/String;

    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->openDelimiter:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lorg/farng/mp3/filename/FilenameParenthesis;->middleComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-static {v0}, Lorg/farng/mp3/TagUtility;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/filename/AbstractFilenameComposite;

    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->middleComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    .line 44
    return-void
.end method


# virtual methods
.method public composeFilename()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 102
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 103
    .local v0, stringBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getBeforeComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getBeforeComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->composeFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->openDelimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->middleComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->middleComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-virtual {v1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->composeFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    :cond_1
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v1

    iget-object v2, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->openDelimiter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/farng/mp3/TagOptionSingleton;->getCloseParenthesis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getAfterComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 114
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getAfterComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->composeFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public createId3Tag()Lorg/farng/mp3/id3/ID3v2_4;
    .locals 2

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, newTag:Lorg/farng/mp3/id3/ID3v2_4;
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getBeforeComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getBeforeComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->createId3Tag()Lorg/farng/mp3/id3/ID3v2_4;

    move-result-object v0

    .line 124
    :cond_0
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->middleComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    if-eqz v1, :cond_1

    .line 125
    if-eqz v0, :cond_3

    .line 126
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->middleComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-virtual {v1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->createId3Tag()Lorg/farng/mp3/id3/ID3v2_4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/farng/mp3/id3/ID3v2_4;->append(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 131
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getAfterComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 132
    if-eqz v0, :cond_4

    .line 133
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getAfterComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->createId3Tag()Lorg/farng/mp3/id3/ID3v2_4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/farng/mp3/id3/ID3v2_4;->append(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 138
    :cond_2
    :goto_1
    return-object v0

    .line 128
    :cond_3
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->middleComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-virtual {v1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->createId3Tag()Lorg/farng/mp3/id3/ID3v2_4;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_4
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getAfterComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->createId3Tag()Lorg/farng/mp3/id3/ID3v2_4;

    move-result-object v0

    goto :goto_1
.end method

.method public getMiddleComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->middleComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    return-object v0
.end method

.method public getOpenDelimiter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->openDelimiter:Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;

    invoke-direct {v0, p0}, Lorg/farng/mp3/filename/FilenameParenthesisIterator;-><init>(Lorg/farng/mp3/filename/FilenameParenthesis;)V

    return-object v0
.end method

.method public matchAgainstKeyword(Ljava/lang/Class;)V
    .locals 1
    .parameter "id3v2FrameBodyClass"

    .prologue
    .line 159
    const-class v0, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getBeforeComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getBeforeComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->matchAgainstKeyword(Ljava/lang/Class;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->middleComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->middleComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-virtual {v0, p1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->matchAgainstKeyword(Ljava/lang/Class;)V

    .line 166
    :cond_1
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getAfterComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getAfterComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->matchAgainstKeyword(Ljava/lang/Class;)V

    .line 170
    :cond_2
    return-void
.end method

.method public matchAgainstTag(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 1
    .parameter "matchTag"

    .prologue
    .line 179
    if-eqz p1, :cond_2

    .line 180
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getBeforeComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getBeforeComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->matchAgainstTag(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->middleComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->middleComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-virtual {v0, p1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->matchAgainstTag(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 186
    :cond_1
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getAfterComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getAfterComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->matchAgainstTag(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 190
    :cond_2
    return-void
.end method

.method public setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 47
    if-eqz p1, :cond_2

    .line 48
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getBeforeComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getBeforeComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->middleComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->middleComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-virtual {v0, p1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 54
    :cond_1
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getAfterComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getAfterComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 58
    :cond_2
    return-void
.end method

.method public setMiddleComposite(Lorg/farng/mp3/filename/AbstractFilenameComposite;)V
    .locals 0
    .parameter "middleComposite"

    .prologue
    .line 66
    iput-object p1, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->middleComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    .line 67
    return-void
.end method

.method public setOpenDelimiter(Ljava/lang/String;)V
    .locals 0
    .parameter "openDelimiter"

    .prologue
    .line 84
    iput-object p1, p0, Lorg/farng/mp3/filename/FilenameParenthesis;->openDelimiter:Ljava/lang/String;

    .line 85
    return-void
.end method
