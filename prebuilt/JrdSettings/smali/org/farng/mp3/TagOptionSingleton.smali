.class public Lorg/farng/mp3/TagOptionSingleton;
.super Ljava/lang/Object;
.source "TagOptionSingleton.java"


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "default"

.field private static defaultOptions:Ljava/lang/Object;

.field private static final tagOptionTable:Ljava/util/Map;


# instance fields
.field private compositeMatchOverwrite:Z

.field private defaultSaveMode:I

.field private endWordDelimiterList:Ljava/util/List;

.field private filenameDelimiterList:Ljava/util/List;

.field private filenameTagSave:Z

.field private id3v1Save:Z

.field private id3v1SaveAlbum:Z

.field private id3v1SaveArtist:Z

.field private id3v1SaveComment:Z

.field private id3v1SaveGenre:Z

.field private id3v1SaveTitle:Z

.field private id3v1SaveTrack:Z

.field private id3v1SaveYear:Z

.field private id3v2KeepEmptyFrameIfRead:Z

.field private id3v2PaddingCopyTag:Z

.field private id3v2PaddingMultiplier:F

.field private id3v2PaddingSize:I

.field private id3v2PaddingWillShorten:Z

.field private id3v2Save:Z

.field private id3v2SaveEmptyFrame:Z

.field private id3v2SaveExtendedHeader:Z

.field private keywordMap:Ljava/util/Map;

.field private language:Ljava/lang/String;

.field private lyrics3KeepEmptyFieldIfRead:Z

.field private lyrics3Save:Z

.field private lyrics3SaveEmptyField:Z

.field private lyrics3SaveFieldMap:Ljava/util/Map;

.field private numberMP3SyncFrame:I

.field private originalSavedAfterAdjustingID3v2Padding:Z

.field private parenthesisMap:Ljava/util/Map;

.field private playCounterSize:B

.field private replaceWordMap:Ljava/util/Map;

.field private startWordDelimiterList:Ljava/util/List;

.field private textEncoding:B

.field private timeStampFormat:B

.field private upperLowerCaseWordList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/farng/mp3/TagOptionSingleton;->tagOptionTable:Ljava/util/Map;

    .line 23
    const-string v0, "default"

    sput-object v0, Lorg/farng/mp3/TagOptionSingleton;->defaultOptions:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->keywordMap:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->parenthesisMap:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->replaceWordMap:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->endWordDelimiterList:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->filenameDelimiterList:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->startWordDelimiterList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->upperLowerCaseWordList:Ljava/util/List;

    .line 52
    const-string v0, "eng"

    iput-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->language:Ljava/lang/String;

    .line 53
    iput-boolean v2, p0, Lorg/farng/mp3/TagOptionSingleton;->compositeMatchOverwrite:Z

    .line 54
    iput-boolean v2, p0, Lorg/farng/mp3/TagOptionSingleton;->filenameTagSave:Z

    .line 58
    iput-boolean v1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1Save:Z

    .line 62
    iput-boolean v1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveAlbum:Z

    .line 66
    iput-boolean v1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveArtist:Z

    .line 70
    iput-boolean v1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveComment:Z

    .line 74
    iput-boolean v1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveGenre:Z

    .line 78
    iput-boolean v1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveTitle:Z

    .line 82
    iput-boolean v1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveTrack:Z

    .line 86
    iput-boolean v1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveYear:Z

    .line 92
    iput-boolean v2, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2KeepEmptyFrameIfRead:Z

    .line 96
    iput-boolean v1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2PaddingCopyTag:Z

    .line 100
    iput-boolean v2, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2PaddingWillShorten:Z

    .line 104
    iput-boolean v1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2Save:Z

    .line 109
    iput-boolean v2, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2SaveEmptyFrame:Z

    .line 114
    iput-boolean v2, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2SaveExtendedHeader:Z

    .line 119
    iput-boolean v2, p0, Lorg/farng/mp3/TagOptionSingleton;->lyrics3KeepEmptyFieldIfRead:Z

    .line 123
    iput-boolean v1, p0, Lorg/farng/mp3/TagOptionSingleton;->lyrics3Save:Z

    .line 128
    iput-boolean v2, p0, Lorg/farng/mp3/TagOptionSingleton;->lyrics3SaveEmptyField:Z

    .line 129
    iput-boolean v1, p0, Lorg/farng/mp3/TagOptionSingleton;->originalSavedAfterAdjustingID3v2Padding:Z

    .line 134
    const/4 v0, 0x4

    iput-byte v0, p0, Lorg/farng/mp3/TagOptionSingleton;->playCounterSize:B

    .line 138
    iput-byte v2, p0, Lorg/farng/mp3/TagOptionSingleton;->textEncoding:B

    .line 142
    const/4 v0, 0x2

    iput-byte v0, p0, Lorg/farng/mp3/TagOptionSingleton;->timeStampFormat:B

    .line 148
    const/high16 v0, 0x4000

    iput v0, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2PaddingMultiplier:F

    .line 149
    iput v1, p0, Lorg/farng/mp3/TagOptionSingleton;->defaultSaveMode:I

    .line 153
    const/16 v0, 0x800

    iput v0, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2PaddingSize:I

    .line 158
    const/4 v0, 0x5

    iput v0, p0, Lorg/farng/mp3/TagOptionSingleton;->numberMP3SyncFrame:I

    .line 164
    invoke-virtual {p0}, Lorg/farng/mp3/TagOptionSingleton;->setToDefault()V

    .line 165
    return-void
.end method

.method public static getInstance()Lorg/farng/mp3/TagOptionSingleton;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lorg/farng/mp3/TagOptionSingleton;->defaultOptions:Ljava/lang/Object;

    invoke-static {v0}, Lorg/farng/mp3/TagOptionSingleton;->getInstance(Ljava/lang/Object;)Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/farng/mp3/TagOptionSingleton;
    .locals 2
    .parameter "instanceKey"

    .prologue
    .line 172
    sget-object v1, Lorg/farng/mp3/TagOptionSingleton;->tagOptionTable:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/TagOptionSingleton;

    .line 173
    .local v0, tagOptions:Lorg/farng/mp3/TagOptionSingleton;
    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lorg/farng/mp3/TagOptionSingleton;

    .end local v0           #tagOptions:Lorg/farng/mp3/TagOptionSingleton;
    invoke-direct {v0}, Lorg/farng/mp3/TagOptionSingleton;-><init>()V

    .line 175
    .restart local v0       #tagOptions:Lorg/farng/mp3/TagOptionSingleton;
    sget-object v1, Lorg/farng/mp3/TagOptionSingleton;->tagOptionTable:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_0
    return-object v0
.end method

.method public static getInstanceKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lorg/farng/mp3/TagOptionSingleton;->defaultOptions:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public addEndWordDelimiter(Ljava/lang/String;)V
    .locals 1
    .parameter "wordDelimiter"

    .prologue
    .line 746
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->endWordDelimiterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    return-void
.end method

.method public addFilenameDelimiter(Ljava/lang/String;)V
    .locals 1
    .parameter "delimiter"

    .prologue
    .line 750
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->filenameDelimiterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    return-void
.end method

.method public addKeyword(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4
    .parameter "id3v2FrameBodyClass"
    .parameter "keyword"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    .line 754
    const-class v1, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 755
    new-instance v1, Lorg/farng/mp3/TagException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid class type. Must be AbstractId3v2FrameBody "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/farng/mp3/TagException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 757
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 759
    iget-object v1, p0, Lorg/farng/mp3/TagOptionSingleton;->keywordMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 760
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 761
    .local v0, keywordList:Ljava/util/LinkedList;
    iget-object v1, p0, Lorg/farng/mp3/TagOptionSingleton;->keywordMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 767
    .end local v0           #keywordList:Ljava/util/LinkedList;
    :cond_1
    return-void

    .line 763
    :cond_2
    iget-object v1, p0, Lorg/farng/mp3/TagOptionSingleton;->keywordMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .restart local v0       #keywordList:Ljava/util/LinkedList;
    goto :goto_0
.end method

.method public addParenthesis(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "open"
    .parameter "close"

    .prologue
    .line 770
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->parenthesisMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    return-void
.end method

.method public addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "oldWord"
    .parameter "newWord"

    .prologue
    .line 774
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->replaceWordMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    return-void
.end method

.method public addStartWordDelimiter(Ljava/lang/String;)V
    .locals 1
    .parameter "wordDelimiter"

    .prologue
    .line 778
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->startWordDelimiterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    return-void
.end method

.method public addUpperLowerCaseWord(Ljava/lang/String;)V
    .locals 1
    .parameter "word"

    .prologue
    .line 782
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->upperLowerCaseWordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    return-void
.end method

.method public getCloseParenthesis(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "open"

    .prologue
    .line 181
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->parenthesisMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultSaveMode()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lorg/farng/mp3/TagOptionSingleton;->defaultSaveMode:I

    return v0
.end method

.method public getEndWordDelimiterIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->endWordDelimiterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getFilenameDelimiterIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->filenameDelimiterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getId3v2PaddingMultiplier()F
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2PaddingMultiplier:F

    return v0
.end method

.method public getId3v2PaddingSize()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2PaddingSize:I

    return v0
.end method

.method public getKeywordIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->keywordMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getKeywordListIterator(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1
    .parameter "id3v2_4FrameBody"

    .prologue
    .line 391
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->keywordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLyrics3SaveField(Ljava/lang/String;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 457
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLyrics3SaveFieldMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/Map;

    return-object v0
.end method

.method public getNewReplaceWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "oldWord"

    .prologue
    .line 465
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->replaceWordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNumberMP3SyncFrame()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lorg/farng/mp3/TagOptionSingleton;->numberMP3SyncFrame:I

    return v0
.end method

.method public getOldReplaceWordIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->replaceWordMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getOpenParenthesisIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->parenthesisMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getPlayCounterSize()B
    .locals 1

    .prologue
    .line 528
    iget-byte v0, p0, Lorg/farng/mp3/TagOptionSingleton;->playCounterSize:B

    return v0
.end method

.method public getStartWordDelimiterIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->startWordDelimiterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getTextEncoding()B
    .locals 1

    .prologue
    .line 563
    iget-byte v0, p0, Lorg/farng/mp3/TagOptionSingleton;->textEncoding:B

    return v0
.end method

.method public getTimeStampFormat()B
    .locals 1

    .prologue
    .line 590
    iget-byte v0, p0, Lorg/farng/mp3/TagOptionSingleton;->timeStampFormat:B

    return v0
.end method

.method public getUpperLowerCaseWordListIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->upperLowerCaseWordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isCloseParenthesis(Ljava/lang/String;)Z
    .locals 1
    .parameter "close"

    .prologue
    .line 185
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->parenthesisMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCompositeMatchOverwrite()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lorg/farng/mp3/TagOptionSingleton;->compositeMatchOverwrite:Z

    return v0
.end method

.method public isFilenameTagSave()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lorg/farng/mp3/TagOptionSingleton;->filenameTagSave:Z

    return v0
.end method

.method public isId3v1Save()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1Save:Z

    return v0
.end method

.method public isId3v1SaveAlbum()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveAlbum:Z

    return v0
.end method

.method public isId3v1SaveArtist()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveArtist:Z

    return v0
.end method

.method public isId3v1SaveComment()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveComment:Z

    return v0
.end method

.method public isId3v1SaveGenre()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveGenre:Z

    return v0
.end method

.method public isId3v1SaveTitle()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveTitle:Z

    return v0
.end method

.method public isId3v1SaveTrack()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveTrack:Z

    return v0
.end method

.method public isId3v1SaveYear()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveYear:Z

    return v0
.end method

.method public isId3v2KeepEmptyFrameIfRead()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2KeepEmptyFrameIfRead:Z

    return v0
.end method

.method public isId3v2PaddingCopyTag()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2PaddingCopyTag:Z

    return v0
.end method

.method public isId3v2PaddingWillShorten()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2PaddingWillShorten:Z

    return v0
.end method

.method public isId3v2Save()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2Save:Z

    return v0
.end method

.method public isId3v2SaveEmptyFrame()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2SaveEmptyFrame:Z

    return v0
.end method

.method public isId3v2SaveExtendedHeader()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2SaveExtendedHeader:Z

    return v0
.end method

.method public isLyrics3KeepEmptyFieldIfRead()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lorg/farng/mp3/TagOptionSingleton;->lyrics3KeepEmptyFieldIfRead:Z

    return v0
.end method

.method public isLyrics3Save()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lorg/farng/mp3/TagOptionSingleton;->lyrics3Save:Z

    return v0
.end method

.method public isLyrics3SaveEmptyField()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lorg/farng/mp3/TagOptionSingleton;->lyrics3SaveEmptyField:Z

    return v0
.end method

.method public isOpenParenthesis(Ljava/lang/String;)Z
    .locals 1
    .parameter "open"

    .prologue
    .line 495
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->parenthesisMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOriginalSavedAfterAdjustingID3v2Padding()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lorg/farng/mp3/TagOptionSingleton;->originalSavedAfterAdjustingID3v2Padding:Z

    return v0
.end method

.method public setCompositeMatchOverwrite(Z)V
    .locals 0
    .parameter "compositeMatchOverwrite"

    .prologue
    .line 189
    iput-boolean p1, p0, Lorg/farng/mp3/TagOptionSingleton;->compositeMatchOverwrite:Z

    .line 190
    return-void
.end method

.method public setDefaultSaveMode(I)V
    .locals 0
    .parameter "defaultSaveMode"

    .prologue
    .line 197
    iput p1, p0, Lorg/farng/mp3/TagOptionSingleton;->defaultSaveMode:I

    .line 198
    return-void
.end method

.method public setFilenameTagSave(Z)V
    .locals 0
    .parameter "filenameTagSave"

    .prologue
    .line 205
    iput-boolean p1, p0, Lorg/farng/mp3/TagOptionSingleton;->filenameTagSave:Z

    .line 206
    return-void
.end method

.method public setId3v1Save(Z)V
    .locals 0
    .parameter "id3v1Save"

    .prologue
    .line 233
    iput-boolean p1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1Save:Z

    .line 234
    return-void
.end method

.method public setId3v1SaveAlbum(Z)V
    .locals 0
    .parameter "id3v1SaveAlbum"

    .prologue
    .line 241
    iput-boolean p1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveAlbum:Z

    .line 242
    return-void
.end method

.method public setId3v1SaveArtist(Z)V
    .locals 0
    .parameter "id3v1SaveArtist"

    .prologue
    .line 249
    iput-boolean p1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveArtist:Z

    .line 250
    return-void
.end method

.method public setId3v1SaveComment(Z)V
    .locals 0
    .parameter "id3v1SaveComment"

    .prologue
    .line 257
    iput-boolean p1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveComment:Z

    .line 258
    return-void
.end method

.method public setId3v1SaveGenre(Z)V
    .locals 0
    .parameter "id3v1SaveGenre"

    .prologue
    .line 265
    iput-boolean p1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveGenre:Z

    .line 266
    return-void
.end method

.method public setId3v1SaveTitle(Z)V
    .locals 0
    .parameter "id3v1SaveTitle"

    .prologue
    .line 273
    iput-boolean p1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveTitle:Z

    .line 274
    return-void
.end method

.method public setId3v1SaveTrack(Z)V
    .locals 0
    .parameter "id3v1SaveTrack"

    .prologue
    .line 281
    iput-boolean p1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveTrack:Z

    .line 282
    return-void
.end method

.method public setId3v1SaveYear(Z)V
    .locals 0
    .parameter "id3v1SaveYear"

    .prologue
    .line 289
    iput-boolean p1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveYear:Z

    .line 290
    return-void
.end method

.method public setId3v2KeepEmptyFrameIfRead(Z)V
    .locals 0
    .parameter "id3v2KeepEmptyFrameIfRead"

    .prologue
    .line 297
    iput-boolean p1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2KeepEmptyFrameIfRead:Z

    .line 298
    return-void
.end method

.method public setId3v2PaddingCopyTag(Z)V
    .locals 0
    .parameter "id3v2PaddingCopyTag"

    .prologue
    .line 305
    iput-boolean p1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2PaddingCopyTag:Z

    .line 306
    return-void
.end method

.method public setId3v2PaddingMultiplier(F)V
    .locals 1
    .parameter "mult"

    .prologue
    .line 320
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 321
    iput p1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2PaddingMultiplier:F

    .line 323
    :cond_0
    return-void
.end method

.method public setId3v2PaddingSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 343
    if-ltz p1, :cond_0

    .line 344
    iput p1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2PaddingSize:I

    .line 346
    :cond_0
    return-void
.end method

.method public setId3v2PaddingWillShorten(Z)V
    .locals 0
    .parameter "id3v2PaddingWillShorten"

    .prologue
    .line 359
    iput-boolean p1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2PaddingWillShorten:Z

    .line 360
    return-void
.end method

.method public setId3v2Save(Z)V
    .locals 0
    .parameter "id3v2Save"

    .prologue
    .line 367
    iput-boolean p1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2Save:Z

    .line 368
    return-void
.end method

.method public setId3v2SaveEmptyFrame(Z)V
    .locals 0
    .parameter "id3v2SaveEmptyFrame"

    .prologue
    .line 375
    iput-boolean p1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2SaveEmptyFrame:Z

    .line 376
    return-void
.end method

.method public setId3v2SaveExtendedHeader(Z)V
    .locals 0
    .parameter "id3v2SaveExtendedHeader"

    .prologue
    .line 383
    iput-boolean p1, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2SaveExtendedHeader:Z

    .line 384
    return-void
.end method

.method public setInstanceKey(Ljava/lang/Object;)V
    .locals 0
    .parameter "instanceKey"

    .prologue
    .line 217
    sput-object p1, Lorg/farng/mp3/TagOptionSingleton;->defaultOptions:Ljava/lang/Object;

    .line 218
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1
    .parameter "language"

    .prologue
    .line 401
    sget-object v0, Lorg/farng/mp3/TagConstant;->languageIdToString:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iput-object p1, p0, Lorg/farng/mp3/TagOptionSingleton;->language:Ljava/lang/String;

    .line 404
    :cond_0
    return-void
.end method

.method public setLyrics3KeepEmptyFieldIfRead(Z)V
    .locals 0
    .parameter "lyrics3KeepEmptyFieldIfRead"

    .prologue
    .line 416
    iput-boolean p1, p0, Lorg/farng/mp3/TagOptionSingleton;->lyrics3KeepEmptyFieldIfRead:Z

    .line 417
    return-void
.end method

.method public setLyrics3Save(Z)V
    .locals 0
    .parameter "lyrics3Save"

    .prologue
    .line 424
    iput-boolean p1, p0, Lorg/farng/mp3/TagOptionSingleton;->lyrics3Save:Z

    .line 425
    return-void
.end method

.method public setLyrics3SaveEmptyField(Z)V
    .locals 0
    .parameter "lyrics3SaveEmptyField"

    .prologue
    .line 432
    iput-boolean p1, p0, Lorg/farng/mp3/TagOptionSingleton;->lyrics3SaveEmptyField:Z

    .line 433
    return-void
.end method

.method public setLyrics3SaveField(Ljava/lang/String;Z)V
    .locals 2
    .parameter "id"
    .parameter "save"

    .prologue
    .line 446
    iget-object v0, p0, Lorg/farng/mp3/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    return-void
.end method

.method public setNumberMP3SyncFrame(I)V
    .locals 0
    .parameter "numberMP3SyncFrame"

    .prologue
    .line 476
    iput p1, p0, Lorg/farng/mp3/TagOptionSingleton;->numberMP3SyncFrame:I

    .line 477
    return-void
.end method

.method public setOriginalSavedAfterAdjustingID3v2Padding(Z)V
    .locals 0
    .parameter "originalSavedAfterAdjustingID3v2Padding"

    .prologue
    .line 503
    iput-boolean p1, p0, Lorg/farng/mp3/TagOptionSingleton;->originalSavedAfterAdjustingID3v2Padding:Z

    .line 504
    return-void
.end method

.method public setPlayCounterSize(B)V
    .locals 0
    .parameter "size"

    .prologue
    .line 517
    if-lez p1, :cond_0

    .line 518
    iput-byte p1, p0, Lorg/farng/mp3/TagOptionSingleton;->playCounterSize:B

    .line 520
    :cond_0
    return-void
.end method

.method public setTextEncoding(B)V
    .locals 1
    .parameter "enc"

    .prologue
    .line 547
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 548
    iput-byte p1, p0, Lorg/farng/mp3/TagOptionSingleton;->textEncoding:B

    .line 550
    :cond_0
    return-void
.end method

.method public setTimeStampFormat(B)V
    .locals 1
    .parameter "tsf"

    .prologue
    .line 576
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 577
    :cond_0
    iput-byte p1, p0, Lorg/farng/mp3/TagOptionSingleton;->timeStampFormat:B

    .line 579
    :cond_1
    return-void
.end method

.method public setToDefault()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 594
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/farng/mp3/TagOptionSingleton;->keywordMap:Ljava/util/Map;

    .line 595
    iput-boolean v4, p0, Lorg/farng/mp3/TagOptionSingleton;->compositeMatchOverwrite:Z

    .line 596
    iput v5, p0, Lorg/farng/mp3/TagOptionSingleton;->defaultSaveMode:I

    .line 597
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lorg/farng/mp3/TagOptionSingleton;->endWordDelimiterList:Ljava/util/List;

    .line 598
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lorg/farng/mp3/TagOptionSingleton;->filenameDelimiterList:Ljava/util/List;

    .line 599
    iput-boolean v4, p0, Lorg/farng/mp3/TagOptionSingleton;->filenameTagSave:Z

    .line 600
    iput-boolean v5, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1Save:Z

    .line 601
    iput-boolean v5, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveAlbum:Z

    .line 602
    iput-boolean v5, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveArtist:Z

    .line 603
    iput-boolean v5, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveComment:Z

    .line 604
    iput-boolean v5, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveGenre:Z

    .line 605
    iput-boolean v5, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveTitle:Z

    .line 606
    iput-boolean v5, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveTrack:Z

    .line 607
    iput-boolean v5, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v1SaveYear:Z

    .line 608
    iput-boolean v4, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2KeepEmptyFrameIfRead:Z

    .line 609
    iput-boolean v5, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2PaddingCopyTag:Z

    .line 610
    iput-boolean v4, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2PaddingWillShorten:Z

    .line 611
    iput-boolean v5, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2Save:Z

    .line 612
    iput-boolean v4, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2SaveEmptyFrame:Z

    .line 613
    iput-boolean v4, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2SaveExtendedHeader:Z

    .line 614
    const/high16 v3, 0x4000

    iput v3, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2PaddingMultiplier:F

    .line 615
    const/16 v3, 0x800

    iput v3, p0, Lorg/farng/mp3/TagOptionSingleton;->id3v2PaddingSize:I

    .line 616
    const-string v3, "eng"

    iput-object v3, p0, Lorg/farng/mp3/TagOptionSingleton;->language:Ljava/lang/String;

    .line 617
    iput-boolean v4, p0, Lorg/farng/mp3/TagOptionSingleton;->lyrics3KeepEmptyFieldIfRead:Z

    .line 618
    iput-boolean v5, p0, Lorg/farng/mp3/TagOptionSingleton;->lyrics3Save:Z

    .line 619
    iput-boolean v4, p0, Lorg/farng/mp3/TagOptionSingleton;->lyrics3SaveEmptyField:Z

    .line 620
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/farng/mp3/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/Map;

    .line 621
    const/4 v3, 0x5

    iput v3, p0, Lorg/farng/mp3/TagOptionSingleton;->numberMP3SyncFrame:I

    .line 622
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/farng/mp3/TagOptionSingleton;->parenthesisMap:Ljava/util/Map;

    .line 623
    const/4 v3, 0x4

    iput-byte v3, p0, Lorg/farng/mp3/TagOptionSingleton;->playCounterSize:B

    .line 624
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/farng/mp3/TagOptionSingleton;->replaceWordMap:Ljava/util/Map;

    .line 625
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lorg/farng/mp3/TagOptionSingleton;->startWordDelimiterList:Ljava/util/List;

    .line 626
    iput-byte v4, p0, Lorg/farng/mp3/TagOptionSingleton;->textEncoding:B

    .line 627
    const/4 v3, 0x2

    iput-byte v3, p0, Lorg/farng/mp3/TagOptionSingleton;->timeStampFormat:B

    .line 628
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lorg/farng/mp3/TagOptionSingleton;->upperLowerCaseWordList:Ljava/util/List;

    .line 634
    sget-object v3, Lorg/farng/mp3/TagConstant;->lyrics3v2FieldIdToString:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 636
    .local v2, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 637
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 638
    .local v1, fieldId:Ljava/lang/String;
    iget-object v3, p0, Lorg/farng/mp3/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 641
    .end local v1           #fieldId:Ljava/lang/String;
    :cond_0
    :try_start_0
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "ultimix"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 642
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "dance"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 643
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "mix"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 644
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "remix"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 645
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "rmx"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 646
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "live"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 647
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "cover"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 648
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "soundtrack"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 649
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "version"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 650
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "acoustic"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 651
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "original"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 652
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "cd"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 653
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "extended"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 654
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "vocal"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 655
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "unplugged"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 656
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "acapella"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 657
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "edit"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 658
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "radio"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 659
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "original"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 660
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "album"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 661
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "studio"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 662
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "instrumental"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 663
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "unedited"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 664
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "karoke"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 665
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "quality"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 666
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "uncensored"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 667
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "clean"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 668
    const-class v3, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v4, "dirty"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 669
    const-class v3, Lorg/farng/mp3/id3/FrameBodyTIPL;

    const-string v4, "f."

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 670
    const-class v3, Lorg/farng/mp3/id3/FrameBodyTIPL;

    const-string v4, "feat"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 671
    const-class v3, Lorg/farng/mp3/id3/FrameBodyTIPL;

    const-string v4, "feat."

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 672
    const-class v3, Lorg/farng/mp3/id3/FrameBodyTIPL;

    const-string v4, "featuring"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 673
    const-class v3, Lorg/farng/mp3/id3/FrameBodyTIPL;

    const-string v4, "ftng"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 674
    const-class v3, Lorg/farng/mp3/id3/FrameBodyTIPL;

    const-string v4, "ftng."

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 675
    const-class v3, Lorg/farng/mp3/id3/FrameBodyTIPL;

    const-string v4, "ft."

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 676
    const-class v3, Lorg/farng/mp3/id3/FrameBodyTIPL;

    const-string v4, "ft"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 677
    sget-object v3, Lorg/farng/mp3/TagConstant;->genreStringToId:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 678
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 679
    const-class v4, Lorg/farng/mp3/id3/FrameBodyCOMM;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lorg/farng/mp3/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/farng/mp3/TagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 681
    :catch_0
    move-exception v0

    .line 683
    .local v0, ex:Lorg/farng/mp3/TagException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 685
    .end local v0           #ex:Lorg/farng/mp3/TagException;
    :cond_1
    const-string v3, "a"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 686
    const-string v3, "in"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 687
    const-string v3, "of"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 688
    const-string v3, "the"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 689
    const-string v3, "on"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 690
    const-string v3, "is"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 691
    const-string v3, "it"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 692
    const-string v3, "to"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 693
    const-string v3, "at"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 694
    const-string v3, "an"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 695
    const-string v3, "and"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 696
    const-string v3, "but"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 697
    const-string v3, "or"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 698
    const-string v3, "for"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 699
    const-string v3, "nor"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 700
    const-string v3, "not"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 701
    const-string v3, "so"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 702
    const-string v3, "yet"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 703
    const-string v3, "with"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 704
    const-string v3, "into"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 705
    const-string v3, "by"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 706
    const-string v3, "up"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 707
    const-string v3, "as"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 708
    const-string v3, "if"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 709
    const-string v3, "feat."

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 710
    const-string v3, "vs."

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 711
    const-string v3, "I\'m"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 712
    const-string v3, "I"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 713
    const-string v3, "I\'ve"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 714
    const-string v3, "I\'ll"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addUpperLowerCaseWord(Ljava/lang/String;)V

    .line 715
    const-string v3, "v."

    const-string v4, "vs."

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v3, "vs."

    const-string v4, "vs."

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v3, "versus"

    const-string v4, "vs."

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v3, "f."

    const-string v4, "feat."

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v3, "feat"

    const-string v4, "feat."

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v3, "featuring"

    const-string v4, "feat."

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v3, "ftng."

    const-string v4, "feat."

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v3, "ftng"

    const-string v4, "feat."

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v3, "ft."

    const-string v4, "feat."

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v3, "ft"

    const-string v4, "feat."

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v3, "/"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addFilenameDelimiter(Ljava/lang/String;)V

    .line 726
    const-string v3, "\\"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addFilenameDelimiter(Ljava/lang/String;)V

    .line 727
    const-string v3, " -"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addFilenameDelimiter(Ljava/lang/String;)V

    .line 728
    const-string v3, ";"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addFilenameDelimiter(Ljava/lang/String;)V

    .line 729
    const-string v3, "|"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addFilenameDelimiter(Ljava/lang/String;)V

    .line 730
    const-string v3, ":"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addFilenameDelimiter(Ljava/lang/String;)V

    .line 731
    const-class v3, Lorg/farng/mp3/id3/FrameBodyTIPL;

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->getKeywordListIterator(Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object v2

    .line 732
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 733
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/farng/mp3/TagOptionSingleton;->addStartWordDelimiter(Ljava/lang/String;)V

    goto :goto_2

    .line 735
    :cond_2
    const-string v3, "("

    const-string v4, ")"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addParenthesis(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v3, "["

    const-string v4, "]"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addParenthesis(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v3, "{"

    const-string v4, "}"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addParenthesis(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v3, "<"

    const-string v4, ">"

    invoke-virtual {p0, v3, v4}, Lorg/farng/mp3/TagOptionSingleton;->addParenthesis(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    return-void
.end method
