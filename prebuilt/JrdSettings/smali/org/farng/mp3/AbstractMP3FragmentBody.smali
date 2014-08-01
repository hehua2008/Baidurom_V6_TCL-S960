.class public abstract Lorg/farng/mp3/AbstractMP3FragmentBody;
.super Lorg/farng/mp3/AbstractMP3FileItem;
.source "AbstractMP3FragmentBody.java"


# static fields
.field private static final SIZE_BRIEF_DESCRIPTION:I = 0x40

.field private static final SIZE_DESCRIPTION:I = 0x100

.field private static final SIZE_OBJECT_LIST:I = 0x10


# instance fields
.field private objectList:Ljava/util/List;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/farng/mp3/AbstractMP3FileItem;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/farng/mp3/AbstractMP3FragmentBody;->objectList:Ljava/util/List;

    .line 37
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setupObjectList()V

    .line 38
    return-void
.end method

.method protected constructor <init>(Lorg/farng/mp3/AbstractMP3FragmentBody;)V
    .locals 5
    .parameter "copyObject"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/farng/mp3/AbstractMP3FileItem;-><init>(Lorg/farng/mp3/AbstractMP3FileItem;)V

    .line 30
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/farng/mp3/AbstractMP3FragmentBody;->objectList:Ljava/util/List;

    .line 45
    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 46
    .local v0, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/object/AbstractMP3Object;

    .line 48
    .local v2, oldObject:Lorg/farng/mp3/object/AbstractMP3Object;
    invoke-static {v2}, Lorg/farng/mp3/TagUtility;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/object/AbstractMP3Object;

    .line 49
    .local v1, newObject:Lorg/farng/mp3/object/AbstractMP3Object;
    iget-object v3, p0, Lorg/farng/mp3/AbstractMP3FragmentBody;->objectList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    .end local v1           #newObject:Lorg/farng/mp3/object/AbstractMP3Object;
    .end local v2           #oldObject:Lorg/farng/mp3/object/AbstractMP3Object;
    :cond_0
    return-void
.end method

.method protected static has6ByteHeader()Z
    .locals 11

    .prologue
    .line 311
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 312
    .local v1, exception:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 313
    .local v7, stackArray:[Ljava/lang/StackTraceElement;
    const-class v9, Lorg/farng/mp3/id3/ID3v2_2;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, id3v2_2name:Ljava/lang/String;
    const-class v9, Lorg/farng/mp3/id3/ID3v2_3;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 315
    .local v5, id3v2_3name:Ljava/lang/String;
    const-class v9, Lorg/farng/mp3/id3/ID3v2_4;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 316
    .local v6, id3v2_4name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 317
    .local v2, has6ByteHeader:Z
    const/4 v8, 0x0

    .line 318
    .local v8, withinTag:Z
    array-length v9, v7

    add-int/lit8 v3, v9, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_3

    .line 319
    aget-object v9, v7, v3

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, className:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 321
    const/4 v2, 0x1

    .line 322
    const/4 v8, 0x1

    .line 318
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 324
    const/4 v2, 0x0

    .line 325
    const/4 v8, 0x1

    goto :goto_1

    .line 326
    :cond_2
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 327
    const/4 v2, 0x0

    .line 328
    const/4 v8, 0x1

    goto :goto_1

    .line 331
    .end local v0           #className:Ljava/lang/String;
    :cond_3
    if-nez v8, :cond_4

    .line 332
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    const-string v10, "FragmentBody not called within ID3v2 tag."

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 334
    :cond_4
    return v2
.end method


# virtual methods
.method protected appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 210
    iget-object v0, p0, Lorg/farng/mp3/AbstractMP3FragmentBody;->objectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 190
    instance-of v2, p1, Lorg/farng/mp3/AbstractMP3FragmentBody;

    if-nez v2, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 193
    check-cast v0, Lorg/farng/mp3/AbstractMP3FragmentBody;

    .line 194
    .local v0, abstractMP3FragmentBody:Lorg/farng/mp3/AbstractMP3FragmentBody;
    iget-object v2, p0, Lorg/farng/mp3/AbstractMP3FragmentBody;->objectList:Ljava/util/List;

    iget-object v3, v0, Lorg/farng/mp3/AbstractMP3FragmentBody;->objectList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    invoke-super {p0, p1}, Lorg/farng/mp3/AbstractMP3FileItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getBriefDescription()Ljava/lang/String;
    .locals 6

    .prologue
    .line 59
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 60
    .local v4, stringBuffer:Ljava/lang/StringBuffer;
    iget-object v5, p0, Lorg/farng/mp3/AbstractMP3FragmentBody;->objectList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 61
    .local v1, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/object/AbstractMP3Object;

    .line 63
    .local v2, object:Lorg/farng/mp3/object/AbstractMP3Object;
    invoke-virtual {v2}, Lorg/farng/mp3/object/AbstractMP3Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, objectToString:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 65
    invoke-virtual {v2}, Lorg/farng/mp3/object/AbstractMP3Object;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, identifier:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v5, "\"; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 72
    .end local v0           #identifier:Ljava/lang/String;
    .end local v2           #object:Lorg/farng/mp3/object/AbstractMP3Object;
    .end local v3           #objectToString:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getDescription()Ljava/lang/String;
    .locals 7

    .prologue
    .line 82
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v6, 0x100

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 83
    .local v4, stringBuffer:Ljava/lang/StringBuffer;
    iget-object v6, p0, Lorg/farng/mp3/AbstractMP3FragmentBody;->objectList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 84
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/object/AbstractMP3Object;

    .line 86
    .local v2, object:Lorg/farng/mp3/object/AbstractMP3Object;
    invoke-virtual {v2}, Lorg/farng/mp3/object/AbstractMP3Object;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, identifier:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v6, " = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    invoke-virtual {v2}, Lorg/farng/mp3/object/AbstractMP3Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, string:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    sget-object v6, Lorg/farng/mp3/TagConstant;->SEPERATOR_LINE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 93
    .end local v0           #identifier:Ljava/lang/String;
    .end local v2           #object:Lorg/farng/mp3/object/AbstractMP3Object;
    .end local v3           #string:Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, toString:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "identifier"

    .prologue
    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, object:Ljava/lang/Object;
    iget-object v4, p0, Lorg/farng/mp3/AbstractMP3FragmentBody;->objectList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 128
    .end local v3           #object:Ljava/lang/Object;
    .local v2, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/object/AbstractMP3Object;

    .line 130
    .local v0, abstractMP3Object:Lorg/farng/mp3/object/AbstractMP3Object;
    invoke-virtual {v0}, Lorg/farng/mp3/object/AbstractMP3Object;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, currentIdentifier:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    invoke-virtual {v0}, Lorg/farng/mp3/object/AbstractMP3Object;->getValue()Ljava/lang/Object;

    move-result-object v3

    .restart local v3       #object:Ljava/lang/Object;
    goto :goto_0

    .line 135
    .end local v0           #abstractMP3Object:Lorg/farng/mp3/object/AbstractMP3Object;
    .end local v1           #currentIdentifier:Ljava/lang/String;
    .end local v3           #object:Ljava/lang/Object;
    :cond_1
    return-object v3
.end method

.method public getObjectListIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/farng/mp3/AbstractMP3FragmentBody;->objectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 146
    const/4 v2, 0x0

    .line 147
    .local v2, size:I
    iget-object v3, p0, Lorg/farng/mp3/AbstractMP3FragmentBody;->objectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 148
    .local v0, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/object/AbstractMP3Object;

    .line 150
    .local v1, object:Lorg/farng/mp3/object/AbstractMP3Object;
    invoke-virtual {v1}, Lorg/farng/mp3/object/AbstractMP3Object;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    .line 151
    goto :goto_0

    .line 152
    .end local v1           #object:Lorg/farng/mp3/object/AbstractMP3Object;
    :cond_0
    return v2
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .locals 6
    .parameter "object"

    .prologue
    const/4 v4, 0x0

    .line 164
    invoke-super {p0, p1}, Lorg/farng/mp3/AbstractMP3FileItem;->isSubsetOf(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 178
    .end local p1
    :cond_0
    :goto_0
    return v4

    .line 167
    .restart local p1
    :cond_1
    instance-of v5, p1, Lorg/farng/mp3/AbstractMP3FragmentBody;

    if-eqz v5, :cond_0

    .line 170
    check-cast p1, Lorg/farng/mp3/AbstractMP3FragmentBody;

    .end local p1
    iget-object v3, p1, Lorg/farng/mp3/AbstractMP3FragmentBody;->objectList:Ljava/util/List;

    .line 171
    .local v3, superset:Ljava/util/List;
    iget-object v5, p0, Lorg/farng/mp3/AbstractMP3FragmentBody;->objectList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 172
    .local v2, objectListSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 173
    iget-object v5, p0, Lorg/farng/mp3/AbstractMP3FragmentBody;->objectList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/object/AbstractMP3Object;

    .line 174
    .local v0, abstractMP3Object:Lorg/farng/mp3/object/AbstractMP3Object;
    invoke-virtual {v0}, Lorg/farng/mp3/object/AbstractMP3Object;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 172
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 178
    .end local v0           #abstractMP3Object:Lorg/farng/mp3/object/AbstractMP3Object;
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/farng/mp3/AbstractMP3FragmentBody;->objectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 7
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/InvalidTagException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->readHeader(Ljava/io/RandomAccessFile;)I

    move-result v4

    .line 224
    .local v4, size:I
    new-array v0, v4, [B

    .line 225
    .local v0, buffer:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 226
    iget-object v5, p0, Lorg/farng/mp3/AbstractMP3FragmentBody;->objectList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 227
    .local v1, iterator:Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 228
    .local v3, offset:I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 230
    add-int/lit8 v5, v4, -0x1

    if-le v3, v5, :cond_0

    .line 231
    new-instance v5, Lorg/farng/mp3/InvalidTagException;

    const-string v6, "Invalid size for Frame Body"

    invoke-direct {v5, v6}, Lorg/farng/mp3/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 235
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/object/AbstractMP3Object;

    .line 236
    .local v2, object:Lorg/farng/mp3/object/AbstractMP3Object;
    invoke-virtual {v2, v0, v3}, Lorg/farng/mp3/object/AbstractMP3Object;->readByteArray([BI)V

    .line 237
    invoke-virtual {v2}, Lorg/farng/mp3/object/AbstractMP3Object;->getSize()I

    move-result v5

    add-int/2addr v3, v5

    .line 238
    goto :goto_0

    .line 239
    .end local v2           #object:Lorg/farng/mp3/object/AbstractMP3Object;
    :cond_1
    return-void
.end method

.method protected abstract readHeader(Ljava/io/RandomAccessFile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/InvalidTagException;
        }
    .end annotation
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "identifier"
    .parameter "object"

    .prologue
    .line 108
    iget-object v3, p0, Lorg/farng/mp3/AbstractMP3FragmentBody;->objectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 109
    .local v2, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/object/AbstractMP3Object;

    .line 111
    .local v0, abstractMP3Object:Lorg/farng/mp3/object/AbstractMP3Object;
    invoke-virtual {v0}, Lorg/farng/mp3/object/AbstractMP3Object;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, currentIdentifier:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {v0, p2}, Lorg/farng/mp3/object/AbstractMP3Object;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    .end local v0           #abstractMP3Object:Lorg/farng/mp3/object/AbstractMP3Object;
    .end local v1           #currentIdentifier:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected abstract setupObjectList()V
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 248
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v6, 0x100

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 249
    .local v4, stringBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3FileItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, thisIdentifier:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    sget-object v6, Lorg/farng/mp3/TagConstant;->SEPERATOR_LINE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    iget-object v6, p0, Lorg/farng/mp3/AbstractMP3FragmentBody;->objectList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 253
    .local v0, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 254
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/object/AbstractMP3Object;

    .line 255
    .local v1, object:Lorg/farng/mp3/object/AbstractMP3Object;
    invoke-virtual {v1}, Lorg/farng/mp3/object/AbstractMP3Object;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, objectIdentifier:Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    const-string v6, " = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    invoke-virtual {v1}, Lorg/farng/mp3/object/AbstractMP3Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, string:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    sget-object v6, Lorg/farng/mp3/TagConstant;->SEPERATOR_LINE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 262
    .end local v1           #object:Lorg/farng/mp3/object/AbstractMP3Object;
    .end local v2           #objectIdentifier:Ljava/lang/String;
    .end local v3           #string:Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
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
    .line 273
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->getSize()I

    move-result v3

    .line 274
    .local v3, size:I
    invoke-virtual {p0, p1, v3}, Lorg/farng/mp3/AbstractMP3FragmentBody;->writeHeader(Ljava/io/RandomAccessFile;I)V

    .line 275
    iget-object v4, p0, Lorg/farng/mp3/AbstractMP3FragmentBody;->objectList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 276
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/object/AbstractMP3Object;

    .line 278
    .local v2, object:Lorg/farng/mp3/object/AbstractMP3Object;
    invoke-virtual {v2}, Lorg/farng/mp3/object/AbstractMP3Object;->writeByteArray()[B

    move-result-object v0

    .line 279
    .local v0, buffer:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    goto :goto_0

    .line 281
    .end local v0           #buffer:[B
    .end local v2           #object:Lorg/farng/mp3/object/AbstractMP3Object;
    :cond_0
    return-void
.end method

.method protected abstract writeHeader(Ljava/io/RandomAccessFile;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
