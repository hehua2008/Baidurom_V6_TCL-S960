.class public Lorg/farng/mp3/filename/FilenameDelimiter;
.super Lorg/farng/mp3/filename/AbstractFilenameComposite;
.source "FilenameDelimiter.java"


# instance fields
.field private afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

.field private beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

.field private delimiter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lorg/farng/mp3/filename/AbstractFilenameComposite;-><init>()V

    .line 23
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    .line 27
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    .line 31
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->delimiter:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/filename/FilenameDelimiter;)V
    .locals 1
    .parameter "copyObject"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;-><init>(Lorg/farng/mp3/filename/AbstractFilenameComposite;)V

    .line 23
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    .line 27
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    .line 31
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->delimiter:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lorg/farng/mp3/filename/FilenameDelimiter;->delimiter:Ljava/lang/String;

    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->delimiter:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lorg/farng/mp3/filename/FilenameDelimiter;->afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-static {v0}, Lorg/farng/mp3/TagUtility;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/filename/AbstractFilenameComposite;

    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    .line 47
    iget-object v0, p1, Lorg/farng/mp3/filename/FilenameDelimiter;->beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-static {v0}, Lorg/farng/mp3/TagUtility;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/filename/AbstractFilenameComposite;

    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    .line 48
    return-void
.end method


# virtual methods
.method public composeFilename()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 122
    .local v0, stringBuffer:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-virtual {v1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->composeFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    :cond_0
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->delimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 127
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-virtual {v1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->composeFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public createId3Tag()Lorg/farng/mp3/id3/ID3v2_4;
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, newTag:Lorg/farng/mp3/id3/ID3v2_4;
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-virtual {v1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->createId3Tag()Lorg/farng/mp3/id3/ID3v2_4;

    move-result-object v0

    .line 138
    :cond_0
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    if-eqz v1, :cond_1

    .line 139
    if-eqz v0, :cond_2

    .line 140
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-virtual {v1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->createId3Tag()Lorg/farng/mp3/id3/ID3v2_4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/farng/mp3/id3/ID3v2_4;->append(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 145
    :cond_1
    :goto_0
    return-object v0

    .line 142
    :cond_2
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-virtual {v1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->createId3Tag()Lorg/farng/mp3/id3/ID3v2_4;

    move-result-object v0

    goto :goto_0
.end method

.method public getAfterComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    return-object v0
.end method

.method public getBeforeComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lorg/farng/mp3/filename/FilenameDelimiterIterator;

    invoke-direct {v0, p0}, Lorg/farng/mp3/filename/FilenameDelimiterIterator;-><init>(Lorg/farng/mp3/filename/FilenameDelimiter;)V

    return-object v0
.end method

.method public matchAgainstKeyword(Ljava/lang/Class;)V
    .locals 1
    .parameter "id3v2FrameBodyClass"

    .prologue
    .line 166
    const-class v0, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-virtual {v0, p1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->matchAgainstKeyword(Ljava/lang/Class;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-virtual {v0, p1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->matchAgainstKeyword(Ljava/lang/Class;)V

    .line 174
    :cond_1
    return-void
.end method

.method public matchAgainstTag(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 1
    .parameter "matchTag"

    .prologue
    .line 183
    if-eqz p1, :cond_1

    .line 184
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-virtual {v0, p1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->matchAgainstTag(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-virtual {v0, p1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->matchAgainstTag(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 191
    :cond_1
    return-void
.end method

.method public setAfterComposite(Lorg/farng/mp3/filename/AbstractFilenameComposite;)V
    .locals 0
    .parameter "afterComposite"

    .prologue
    .line 56
    iput-object p1, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    .line 57
    return-void
.end method

.method public setBeforeComposite(Lorg/farng/mp3/filename/AbstractFilenameComposite;)V
    .locals 0
    .parameter "beforeComposite"

    .prologue
    .line 74
    iput-object p1, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    .line 75
    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0
    .parameter "delimiter"

    .prologue
    .line 92
    iput-object p1, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->delimiter:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 105
    if-eqz p1, :cond_1

    .line 106
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-virtual {v0, p1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiter;->afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-virtual {v0, p1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 113
    :cond_1
    return-void
.end method
