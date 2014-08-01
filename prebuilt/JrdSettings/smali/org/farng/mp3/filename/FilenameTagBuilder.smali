.class public Lorg/farng/mp3/filename/FilenameTagBuilder;
.super Ljava/lang/Object;
.source "FilenameTagBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static createCompositeFromToken(Ljava/lang/String;)Lorg/farng/mp3/filename/AbstractFilenameComposite;
    .locals 10
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 36
    const/4 v2, 0x0

    .line 40
    .local v2, composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    invoke-static {p0}, Lorg/farng/mp3/filename/FilenameTagBuilder;->parseParenthesis(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 41
    .local v5, splitToken:[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 42
    new-instance v2, Lorg/farng/mp3/filename/FilenameParenthesis;

    .end local v2           #composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    invoke-direct {v2}, Lorg/farng/mp3/filename/FilenameParenthesis;-><init>()V

    .restart local v2       #composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    move-object v6, v2

    .line 43
    check-cast v6, Lorg/farng/mp3/filename/FilenameParenthesis;

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Lorg/farng/mp3/filename/FilenameParenthesis;->setOpenDelimiter(Ljava/lang/String;)V

    .line 44
    aget-object v6, v5, v8

    invoke-static {v6}, Lorg/farng/mp3/filename/FilenameTagBuilder;->createCompositeFromToken(Ljava/lang/String;)Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v1

    .local v1, beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    move-object v6, v2

    .line 45
    check-cast v6, Lorg/farng/mp3/filename/FilenameParenthesis;

    invoke-virtual {v6, v1}, Lorg/farng/mp3/filename/FilenameDelimiter;->setBeforeComposite(Lorg/farng/mp3/filename/AbstractFilenameComposite;)V

    .line 46
    const/4 v6, 0x3

    aget-object v6, v5, v6

    invoke-static {v6}, Lorg/farng/mp3/filename/FilenameTagBuilder;->createCompositeFromToken(Ljava/lang/String;)Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v4

    .local v4, middleComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    move-object v6, v2

    .line 47
    check-cast v6, Lorg/farng/mp3/filename/FilenameParenthesis;

    invoke-virtual {v6, v4}, Lorg/farng/mp3/filename/FilenameParenthesis;->setMiddleComposite(Lorg/farng/mp3/filename/AbstractFilenameComposite;)V

    .line 48
    const/4 v6, 0x4

    aget-object v6, v5, v6

    invoke-static {v6}, Lorg/farng/mp3/filename/FilenameTagBuilder;->createCompositeFromToken(Ljava/lang/String;)Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    .local v0, afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    move-object v6, v2

    .line 49
    check-cast v6, Lorg/farng/mp3/filename/FilenameParenthesis;

    invoke-virtual {v6, v0}, Lorg/farng/mp3/filename/FilenameDelimiter;->setAfterComposite(Lorg/farng/mp3/filename/AbstractFilenameComposite;)V

    .line 50
    invoke-virtual {v2, p0}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->setOriginalToken(Ljava/lang/String;)V

    move-object v3, v2

    .line 92
    .end local v0           #afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    .end local v1           #beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    .end local v2           #composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    .end local v4           #middleComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    .local v3, composite:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 53
    .end local v3           #composite:Ljava/lang/Object;
    .restart local v2       #composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    :cond_0
    invoke-static {p0}, Lorg/farng/mp3/filename/FilenameTagBuilder;->parseDelimiter(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 54
    if-eqz v5, :cond_1

    .line 55
    new-instance v2, Lorg/farng/mp3/filename/FilenameDelimiter;

    .end local v2           #composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    invoke-direct {v2}, Lorg/farng/mp3/filename/FilenameDelimiter;-><init>()V

    .restart local v2       #composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    move-object v6, v2

    .line 56
    check-cast v6, Lorg/farng/mp3/filename/FilenameDelimiter;

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Lorg/farng/mp3/filename/FilenameDelimiter;->setDelimiter(Ljava/lang/String;)V

    .line 57
    aget-object v6, v5, v9

    invoke-static {v6}, Lorg/farng/mp3/filename/FilenameTagBuilder;->createCompositeFromToken(Ljava/lang/String;)Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v1

    .restart local v1       #beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    move-object v6, v2

    .line 58
    check-cast v6, Lorg/farng/mp3/filename/FilenameDelimiter;

    invoke-virtual {v6, v1}, Lorg/farng/mp3/filename/FilenameDelimiter;->setBeforeComposite(Lorg/farng/mp3/filename/AbstractFilenameComposite;)V

    .line 59
    aget-object v6, v5, v8

    invoke-static {v6}, Lorg/farng/mp3/filename/FilenameTagBuilder;->createCompositeFromToken(Ljava/lang/String;)Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    .restart local v0       #afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    move-object v6, v2

    .line 60
    check-cast v6, Lorg/farng/mp3/filename/FilenameDelimiter;

    invoke-virtual {v6, v0}, Lorg/farng/mp3/filename/FilenameDelimiter;->setAfterComposite(Lorg/farng/mp3/filename/AbstractFilenameComposite;)V

    .line 61
    invoke-virtual {v2, p0}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->setOriginalToken(Ljava/lang/String;)V

    move-object v3, v2

    .line 62
    .restart local v3       #composite:Ljava/lang/Object;
    goto :goto_0

    .line 64
    .end local v0           #afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    .end local v1           #beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    .end local v3           #composite:Ljava/lang/Object;
    :cond_1
    invoke-static {p0}, Lorg/farng/mp3/filename/FilenameTagBuilder;->parseStartWordDelimiter(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 65
    if-eqz v5, :cond_2

    .line 66
    new-instance v2, Lorg/farng/mp3/filename/FilenameStartWordDelimiter;

    .end local v2           #composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    invoke-direct {v2}, Lorg/farng/mp3/filename/FilenameStartWordDelimiter;-><init>()V

    .restart local v2       #composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    move-object v6, v2

    .line 67
    check-cast v6, Lorg/farng/mp3/filename/FilenameDelimiter;

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Lorg/farng/mp3/filename/FilenameDelimiter;->setDelimiter(Ljava/lang/String;)V

    .line 68
    aget-object v6, v5, v9

    invoke-static {v6}, Lorg/farng/mp3/filename/FilenameTagBuilder;->createCompositeFromToken(Ljava/lang/String;)Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v1

    .restart local v1       #beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    move-object v6, v2

    .line 69
    check-cast v6, Lorg/farng/mp3/filename/FilenameStartWordDelimiter;

    invoke-virtual {v6, v1}, Lorg/farng/mp3/filename/FilenameDelimiter;->setBeforeComposite(Lorg/farng/mp3/filename/AbstractFilenameComposite;)V

    .line 70
    aget-object v6, v5, v8

    invoke-static {v6}, Lorg/farng/mp3/filename/FilenameTagBuilder;->createCompositeFromToken(Ljava/lang/String;)Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    .restart local v0       #afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    move-object v6, v2

    .line 71
    check-cast v6, Lorg/farng/mp3/filename/FilenameStartWordDelimiter;

    invoke-virtual {v6, v0}, Lorg/farng/mp3/filename/FilenameDelimiter;->setAfterComposite(Lorg/farng/mp3/filename/AbstractFilenameComposite;)V

    .line 72
    invoke-virtual {v2, p0}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->setOriginalToken(Ljava/lang/String;)V

    move-object v3, v2

    .line 73
    .restart local v3       #composite:Ljava/lang/Object;
    goto :goto_0

    .line 75
    .end local v0           #afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    .end local v1           #beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    .end local v3           #composite:Ljava/lang/Object;
    :cond_2
    invoke-static {p0}, Lorg/farng/mp3/filename/FilenameTagBuilder;->parseEndWordDelimiter(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 76
    if-eqz v5, :cond_3

    .line 77
    new-instance v2, Lorg/farng/mp3/filename/FilenameEndWordDelimiter;

    .end local v2           #composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    invoke-direct {v2}, Lorg/farng/mp3/filename/FilenameEndWordDelimiter;-><init>()V

    .restart local v2       #composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    move-object v6, v2

    .line 78
    check-cast v6, Lorg/farng/mp3/filename/FilenameDelimiter;

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Lorg/farng/mp3/filename/FilenameDelimiter;->setDelimiter(Ljava/lang/String;)V

    .line 79
    aget-object v6, v5, v9

    invoke-static {v6}, Lorg/farng/mp3/filename/FilenameTagBuilder;->createCompositeFromToken(Ljava/lang/String;)Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v1

    .restart local v1       #beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    move-object v6, v2

    .line 80
    check-cast v6, Lorg/farng/mp3/filename/FilenameEndWordDelimiter;

    invoke-virtual {v6, v1}, Lorg/farng/mp3/filename/FilenameDelimiter;->setBeforeComposite(Lorg/farng/mp3/filename/AbstractFilenameComposite;)V

    .line 81
    aget-object v6, v5, v8

    invoke-static {v6}, Lorg/farng/mp3/filename/FilenameTagBuilder;->createCompositeFromToken(Ljava/lang/String;)Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    .restart local v0       #afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    move-object v6, v2

    .line 82
    check-cast v6, Lorg/farng/mp3/filename/FilenameEndWordDelimiter;

    invoke-virtual {v6, v0}, Lorg/farng/mp3/filename/FilenameDelimiter;->setAfterComposite(Lorg/farng/mp3/filename/AbstractFilenameComposite;)V

    .line 83
    invoke-virtual {v2, p0}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->setOriginalToken(Ljava/lang/String;)V

    move-object v3, v2

    .line 84
    .restart local v3       #composite:Ljava/lang/Object;
    goto/16 :goto_0

    .line 86
    .end local v0           #afterComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    .end local v1           #beforeComposite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    .end local v3           #composite:Ljava/lang/Object;
    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 87
    new-instance v2, Lorg/farng/mp3/filename/FilenameToken;

    .end local v2           #composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    invoke-direct {v2}, Lorg/farng/mp3/filename/FilenameToken;-><init>()V

    .restart local v2       #composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    move-object v6, v2

    .line 88
    check-cast v6, Lorg/farng/mp3/filename/FilenameToken;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/farng/mp3/filename/FilenameToken;->setToken(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2, p0}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->setOriginalToken(Ljava/lang/String;)V

    move-object v3, v2

    .line 90
    .restart local v3       #composite:Ljava/lang/Object;
    goto/16 :goto_0

    .end local v3           #composite:Ljava/lang/Object;
    :cond_4
    move-object v3, v2

    .line 92
    .restart local v3       #composite:Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public static createEmptyFilenameTag()Lorg/farng/mp3/filename/FilenameTag;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lorg/farng/mp3/filename/FilenameTag;

    invoke-direct {v0}, Lorg/farng/mp3/filename/FilenameTag;-><init>()V

    .line 97
    .local v0, filenameTag:Lorg/farng/mp3/filename/FilenameTag;
    new-instance v1, Lorg/farng/mp3/id3/ID3v2_4;

    invoke-direct {v1}, Lorg/farng/mp3/id3/ID3v2_4;-><init>()V

    invoke-virtual {v0, v1}, Lorg/farng/mp3/filename/FilenameTag;->setId3tag(Lorg/farng/mp3/id3/ID3v2_4;)V

    .line 98
    return-object v0
.end method

.method public static createFilenameTagFromMP3File(Lorg/farng/mp3/MP3File;)Lorg/farng/mp3/filename/FilenameTag;
    .locals 6
    .parameter "mp3File"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, filenameTag:Lorg/farng/mp3/filename/FilenameTag;
    invoke-virtual {p0}, Lorg/farng/mp3/MP3File;->getMp3file()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 114
    new-instance v2, Lorg/farng/mp3/filename/FilenameTag;

    .end local v2           #filenameTag:Lorg/farng/mp3/filename/FilenameTag;
    invoke-direct {v2}, Lorg/farng/mp3/filename/FilenameTag;-><init>()V

    .line 117
    .restart local v2       #filenameTag:Lorg/farng/mp3/filename/FilenameTag;
    invoke-virtual {p0}, Lorg/farng/mp3/MP3File;->getMp3file()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, filename:Ljava/lang/String;
    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 119
    .local v4, index:I
    if-ltz v4, :cond_0

    .line 120
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/farng/mp3/filename/FilenameTag;->setExtension(Ljava/lang/String;)V

    .line 121
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 125
    :cond_0
    invoke-static {v1}, Lorg/farng/mp3/filename/FilenameTagBuilder;->createCompositeFromToken(Ljava/lang/String;)Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    .line 126
    .local v0, composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    invoke-static {v0, p0}, Lorg/farng/mp3/filename/FilenameTagBuilder;->updateCompositeFromAllTag(Lorg/farng/mp3/filename/AbstractFilenameComposite;Lorg/farng/mp3/MP3File;)V

    .line 127
    invoke-static {v0}, Lorg/farng/mp3/filename/FilenameTagBuilder;->updateCompositeFromAllOption(Lorg/farng/mp3/filename/AbstractFilenameComposite;)V

    .line 130
    invoke-virtual {v0}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->createId3Tag()Lorg/farng/mp3/id3/ID3v2_4;

    move-result-object v3

    .line 133
    .local v3, id3tag:Lorg/farng/mp3/id3/ID3v2_4;
    invoke-virtual {v2, p0}, Lorg/farng/mp3/filename/FilenameTag;->setMp3file(Lorg/farng/mp3/MP3File;)V

    .line 134
    invoke-virtual {v2, v0}, Lorg/farng/mp3/filename/FilenameTag;->setComposite(Lorg/farng/mp3/filename/AbstractFilenameComposite;)V

    .line 135
    invoke-virtual {v2, v3}, Lorg/farng/mp3/filename/FilenameTag;->setId3tag(Lorg/farng/mp3/id3/ID3v2_4;)V

    .line 137
    .end local v0           #composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;
    .end local v1           #filename:Ljava/lang/String;
    .end local v3           #id3tag:Lorg/farng/mp3/id3/ID3v2_4;
    .end local v4           #index:I
    :cond_1
    return-object v2
.end method

.method private static parseDelimiter(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "token"

    .prologue
    const/4 v6, 0x0

    .line 173
    const/4 v3, 0x0

    .line 174
    .local v3, tokenArray:[Ljava/lang/String;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 175
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v4

    invoke-virtual {v4}, Lorg/farng/mp3/TagOptionSingleton;->getFilenameDelimiterIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 178
    .local v2, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    .local v0, delimiter:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 181
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 182
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    .line 183
    aput-object v0, v3, v6

    .line 184
    const/4 v4, 0x1

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 185
    const/4 v4, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_0

    .line 189
    .end local v0           #delimiter:Ljava/lang/String;
    .end local v1           #index:I
    .end local v2           #iterator:Ljava/util/Iterator;
    :cond_1
    return-object v3
.end method

.method private static parseEndWordDelimiter(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "token"

    .prologue
    const/4 v6, 0x0

    .line 200
    const/4 v3, 0x0

    .line 201
    .local v3, tokenArray:[Ljava/lang/String;
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 202
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v4

    invoke-virtual {v4}, Lorg/farng/mp3/TagOptionSingleton;->getEndWordDelimiterIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 205
    .local v2, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    .local v0, delimiter:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 208
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 212
    .local v1, index:I
    :goto_1
    if-lez v1, :cond_0

    .line 213
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    .line 214
    aput-object v0, v3, v6

    .line 215
    const/4 v4, 0x1

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 216
    const/4 v4, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_0

    .line 210
    .end local v1           #index:I
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .restart local v1       #index:I
    goto :goto_1

    .line 220
    .end local v0           #delimiter:Ljava/lang/String;
    .end local v1           #index:I
    .end local v2           #iterator:Ljava/util/Iterator;
    :cond_2
    return-object v3
.end method

.method private static parseParenthesis(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 231
    const/4 v8, 0x0

    .line 232
    .local v8, tokenArray:[Ljava/lang/String;
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 233
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v5

    .line 235
    .local v5, option:Lorg/farng/mp3/TagOptionSingleton;
    const-string v3, ""

    .line 237
    .local v3, open:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 240
    .local v4, openIndex:I
    invoke-virtual {v5}, Lorg/farng/mp3/TagOptionSingleton;->getOpenParenthesisIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 243
    .local v2, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 244
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 245
    .local v7, tempOpen:Ljava/lang/String;
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 246
    .local v6, tempIndex:I
    if-ltz v6, :cond_0

    if-ge v6, v4, :cond_0

    .line 247
    move v4, v6

    .line 248
    move-object v3, v7

    goto :goto_0

    .line 253
    .end local v6           #tempIndex:I
    .end local v7           #tempOpen:Ljava/lang/String;
    :cond_1
    if-ltz v4, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_3

    .line 254
    invoke-virtual {v5, v3}, Lorg/farng/mp3/TagOptionSingleton;->getCloseParenthesis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, close:Ljava/lang/String;
    invoke-static {p0, v4}, Lorg/farng/mp3/TagUtility;->findMatchingParenthesis(Ljava/lang/String;I)I

    move-result v1

    .line 256
    .local v1, closeIndex:I
    if-gez v1, :cond_2

    .line 257
    new-instance v9, Lorg/farng/mp3/TagException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unmatched parenthesis in \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" at position : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/farng/mp3/TagException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 259
    :cond_2
    const/4 v9, 0x5

    new-array v8, v9, [Ljava/lang/String;

    .line 260
    aput-object v3, v8, v10

    .line 261
    const/4 v9, 0x1

    aput-object v0, v8, v9

    .line 262
    const/4 v9, 0x2

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 263
    const/4 v9, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v4

    invoke-virtual {p0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 264
    const/4 v9, 0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v1

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 267
    .end local v0           #close:Ljava/lang/String;
    .end local v1           #closeIndex:I
    .end local v2           #iterator:Ljava/util/Iterator;
    .end local v3           #open:Ljava/lang/String;
    .end local v4           #openIndex:I
    .end local v5           #option:Lorg/farng/mp3/TagOptionSingleton;
    :cond_3
    return-object v8
.end method

.method private static parseStartWordDelimiter(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "token"

    .prologue
    const/4 v6, 0x0

    .line 278
    const/4 v3, 0x0

    .line 279
    .local v3, tokenArray:[Ljava/lang/String;
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 280
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v4

    invoke-virtual {v4}, Lorg/farng/mp3/TagOptionSingleton;->getStartWordDelimiterIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 283
    .local v2, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 284
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 285
    .local v0, delimiter:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 286
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 290
    .local v1, index:I
    :goto_1
    if-lez v1, :cond_0

    .line 291
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    .line 292
    aput-object v0, v3, v6

    .line 293
    const/4 v4, 0x1

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 294
    const/4 v4, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_0

    .line 288
    .end local v1           #index:I
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .restart local v1       #index:I
    goto :goto_1

    .line 298
    .end local v0           #delimiter:Ljava/lang/String;
    .end local v1           #index:I
    .end local v2           #iterator:Ljava/util/Iterator;
    :cond_2
    return-object v3
.end method

.method public static updateCompositeFromAllOption(Lorg/farng/mp3/filename/AbstractFilenameComposite;)V
    .locals 2
    .parameter "composite"

    .prologue
    .line 146
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/farng/mp3/TagOptionSingleton;->getKeywordIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 147
    .local v0, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->matchAgainstKeyword(Ljava/lang/Class;)V

    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method

.method public static updateCompositeFromAllTag(Lorg/farng/mp3/filename/AbstractFilenameComposite;Lorg/farng/mp3/MP3File;)V
    .locals 1
    .parameter "composite"
    .parameter "mp3File"

    .prologue
    .line 160
    invoke-virtual {p1}, Lorg/farng/mp3/MP3File;->getID3v1Tag()Lorg/farng/mp3/id3/ID3v1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->matchAgainstTag(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 161
    invoke-virtual {p1}, Lorg/farng/mp3/MP3File;->getID3v2Tag()Lorg/farng/mp3/id3/AbstractID3v2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->matchAgainstTag(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 162
    invoke-virtual {p1}, Lorg/farng/mp3/MP3File;->getLyrics3Tag()Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->matchAgainstTag(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 163
    return-void
.end method
