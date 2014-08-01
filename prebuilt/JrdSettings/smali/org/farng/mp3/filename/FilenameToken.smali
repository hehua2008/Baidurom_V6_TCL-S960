.class public Lorg/farng/mp3/filename/FilenameToken;
.super Lorg/farng/mp3/filename/AbstractFilenameComposite;
.source "FilenameToken.java"


# instance fields
.field private id3v2FrameBodyClass:Ljava/lang/Class;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lorg/farng/mp3/filename/AbstractFilenameComposite;-><init>()V

    .line 26
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameToken;->id3v2FrameBodyClass:Ljava/lang/Class;

    .line 30
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameToken;->token:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/filename/FilenameToken;)V
    .locals 4
    .parameter "copyObject"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;-><init>(Lorg/farng/mp3/filename/AbstractFilenameComposite;)V

    .line 26
    iput-object v1, p0, Lorg/farng/mp3/filename/FilenameToken;->id3v2FrameBodyClass:Ljava/lang/Class;

    .line 30
    iput-object v1, p0, Lorg/farng/mp3/filename/FilenameToken;->token:Ljava/lang/String;

    .line 45
    :try_start_0
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameToken;->id3v2FrameBodyClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/farng/mp3/filename/FilenameToken;->id3v2FrameBodyClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    iget-object v1, p1, Lorg/farng/mp3/filename/FilenameToken;->token:Ljava/lang/String;

    iput-object v1, p0, Lorg/farng/mp3/filename/FilenameToken;->token:Ljava/lang/String;

    .line 54
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalAccessException: No access to run constructor to create copy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 50
    .local v0, ex:Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstantiationException: Unable to instantiate constructor to copy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public composeFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public createId3Tag()Lorg/farng/mp3/id3/ID3v2_4;
    .locals 6

    .prologue
    .line 114
    new-instance v3, Lorg/farng/mp3/id3/ID3v2_4;

    invoke-direct {v3}, Lorg/farng/mp3/id3/ID3v2_4;-><init>()V

    .line 115
    .local v3, newTag:Lorg/farng/mp3/id3/ID3v2_4;
    iget-object v4, p0, Lorg/farng/mp3/filename/FilenameToken;->id3v2FrameBodyClass:Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 117
    :try_start_0
    iget-object v4, p0, Lorg/farng/mp3/filename/FilenameToken;->id3v2FrameBodyClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;

    .line 120
    .local v1, body:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    instance-of v4, v1, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;

    if-eqz v4, :cond_2

    .line 121
    move-object v0, v1

    check-cast v0, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;

    move-object v4, v0

    iget-object v5, p0, Lorg/farng/mp3/filename/FilenameToken;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->setText(Ljava/lang/String;)V

    .line 122
    move-object v0, v1

    check-cast v0, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->setTextEncoding(B)V

    .line 131
    :cond_0
    :goto_0
    new-instance v2, Lorg/farng/mp3/id3/ID3v2_4Frame;

    invoke-direct {v2}, Lorg/farng/mp3/id3/ID3v2_4Frame;-><init>()V

    .line 132
    .local v2, frame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    invoke-virtual {v2, v1}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    .line 133
    invoke-virtual {v3, v2}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 140
    .end local v1           #body:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    .end local v2           #frame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    :cond_1
    :goto_1
    return-object v3

    .line 123
    .restart local v1       #body:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_2
    instance-of v4, v1, Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;

    if-eqz v4, :cond_3

    .line 124
    move-object v0, v1

    check-cast v0, Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;

    move-object v4, v0

    iget-object v5, p0, Lorg/farng/mp3/filename/FilenameToken;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;->setUrlLink(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    .end local v1           #body:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 125
    .restart local v1       #body:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_3
    instance-of v4, v1, Lorg/farng/mp3/id3/FrameBodyCOMM;

    if-eqz v4, :cond_0

    .line 126
    move-object v0, v1

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyCOMM;

    move-object v4, v0

    iget-object v5, p0, Lorg/farng/mp3/filename/FilenameToken;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/farng/mp3/id3/FrameBodyCOMM;->setText(Ljava/lang/String;)V

    .line 127
    move-object v0, v1

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyCOMM;

    move-object v4, v0

    const-string v5, ""

    invoke-virtual {v4, v5}, Lorg/farng/mp3/id3/FrameBodyCOMM;->setDescription(Ljava/lang/String;)V

    .line 128
    move-object v0, v1

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyCOMM;

    move-object v4, v0

    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v5

    invoke-virtual {v5}, Lorg/farng/mp3/TagOptionSingleton;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/farng/mp3/id3/FrameBodyCOMM;->setLanguage(Ljava/lang/String;)V

    .line 129
    move-object v0, v1

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyCOMM;

    move-object v4, v0

    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v5

    invoke-virtual {v5}, Lorg/farng/mp3/TagOptionSingleton;->getTextEncoding()B

    move-result v5

    invoke-virtual {v4, v5}, Lorg/farng/mp3/id3/FrameBodyCOMM;->setTextEncoding(B)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 136
    .end local v1           #body:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public getId3v2FrameBodyClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameToken;->id3v2FrameBodyClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lorg/farng/mp3/filename/FilenameTokenIterator;

    invoke-direct {v0, p0}, Lorg/farng/mp3/filename/FilenameTokenIterator;-><init>(Lorg/farng/mp3/filename/FilenameToken;)V

    return-object v0
.end method

.method public matchAgainstKeyword(Ljava/lang/Class;)V
    .locals 4
    .parameter "matchId3v2FrameBodyClass"

    .prologue
    .line 161
    const-class v3, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 162
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v3

    invoke-virtual {v3}, Lorg/farng/mp3/TagOptionSingleton;->isCompositeMatchOverwrite()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/farng/mp3/filename/FilenameToken;->id3v2FrameBodyClass:Ljava/lang/Class;

    if-nez v3, :cond_3

    .line 163
    :cond_0
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/farng/mp3/TagOptionSingleton;->getKeywordListIterator(Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object v0

    .line 165
    .local v0, iterator:Ljava/util/Iterator;
    iget-object v3, p0, Lorg/farng/mp3/filename/FilenameToken;->token:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, lowerCaseToken:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, matchString:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 171
    :cond_2
    invoke-virtual {p0, p1}, Lorg/farng/mp3/filename/FilenameToken;->setId3v2FrameBodyClass(Ljava/lang/Class;)V

    .line 177
    .end local v0           #iterator:Ljava/util/Iterator;
    .end local v1           #lowerCaseToken:Ljava/lang/String;
    .end local v2           #matchString:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public matchAgainstTag(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 7
    .parameter "matchTag"

    .prologue
    .line 186
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v6

    invoke-virtual {v6}, Lorg/farng/mp3/TagOptionSingleton;->isCompositeMatchOverwrite()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/farng/mp3/filename/FilenameToken;->id3v2FrameBodyClass:Ljava/lang/Class;

    if-nez v6, :cond_4

    .line 188
    :cond_0
    instance-of v6, p1, Lorg/farng/mp3/id3/ID3v2_4;

    if-eqz v6, :cond_5

    move-object v5, p1

    .line 189
    check-cast v5, Lorg/farng/mp3/id3/ID3v2_4;

    .line 193
    .local v5, tag:Lorg/farng/mp3/id3/ID3v2_4;
    :goto_0
    invoke-virtual {v5}, Lorg/farng/mp3/id3/AbstractID3v2;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 196
    .local v2, iterator:Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 197
    .local v4, matchString:Ljava/lang/String;
    iget-object v6, p0, Lorg/farng/mp3/filename/FilenameToken;->token:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, lowerCaseToken:Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 199
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/ID3v2_4Frame;

    .line 200
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;

    .line 203
    .local v0, body:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    instance-of v6, v0, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;

    if-eqz v6, :cond_6

    move-object v6, v0

    .line 204
    check-cast v6, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;

    invoke-virtual {v6}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v4

    .line 205
    if-eqz v4, :cond_2

    .line 206
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 216
    :cond_2
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 219
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/farng/mp3/filename/FilenameToken;->setId3v2FrameBodyClass(Ljava/lang/Class;)V

    .line 224
    .end local v0           #body:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    .end local v1           #frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    .end local v2           #iterator:Ljava/util/Iterator;
    .end local v3           #lowerCaseToken:Ljava/lang/String;
    .end local v4           #matchString:Ljava/lang/String;
    .end local v5           #tag:Lorg/farng/mp3/id3/ID3v2_4;
    :cond_4
    return-void

    .line 191
    :cond_5
    new-instance v5, Lorg/farng/mp3/id3/ID3v2_4;

    invoke-direct {v5, p1}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .restart local v5       #tag:Lorg/farng/mp3/id3/ID3v2_4;
    goto :goto_0

    .line 208
    .restart local v0       #body:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    .restart local v1       #frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    .restart local v2       #iterator:Ljava/util/Iterator;
    .restart local v3       #lowerCaseToken:Ljava/lang/String;
    .restart local v4       #matchString:Ljava/lang/String;
    :cond_6
    instance-of v6, v0, Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;

    if-eqz v6, :cond_7

    move-object v6, v0

    .line 209
    check-cast v6, Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;

    invoke-virtual {v6}, Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;->getUrlLink()Ljava/lang/String;

    move-result-object v4

    .line 210
    if-eqz v4, :cond_2

    .line 211
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 213
    :cond_7
    instance-of v6, v0, Lorg/farng/mp3/id3/FrameBodyCOMM;

    if-eqz v6, :cond_2

    move-object v6, v0

    .line 214
    check-cast v6, Lorg/farng/mp3/id3/FrameBodyCOMM;

    invoke-virtual {v6}, Lorg/farng/mp3/id3/FrameBodyCOMM;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V
    .locals 2
    .parameter "frame"

    .prologue
    .line 57
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameToken;->id3v2FrameBodyClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameToken;->id3v2FrameBodyClass:Ljava/lang/Class;

    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-class v0, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;

    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;

    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameToken;->token:Ljava/lang/String;

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-class v0, Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;

    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;

    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;->getUrlLink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameToken;->token:Ljava/lang/String;

    goto :goto_0
.end method

.method public setId3v2FrameBodyClass(Ljava/lang/Class;)V
    .locals 0
    .parameter "id3v2FrameBodyClass"

    .prologue
    .line 74
    iput-object p1, p0, Lorg/farng/mp3/filename/FilenameToken;->id3v2FrameBodyClass:Ljava/lang/Class;

    .line 75
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 1
    .parameter "token"

    .prologue
    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameToken;->token:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameToken;->id3v2FrameBodyClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameToken;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
