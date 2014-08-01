.class public Lorg/farng/mp3/lyrics3/FieldBodyIMG;
.super Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
.source "FieldBodyIMG.java"


# instance fields
.field private images:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/InvalidTagException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p0, p1}, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->read(Ljava/io/RandomAccessFile;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "imageString"

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    .line 57
    invoke-direct {p0, p1}, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->readString(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/lyrics3/FieldBodyIMG;)V
    .locals 4
    .parameter "copyObject"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;-><init>(Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;)V

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    .line 47
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p1, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 48
    iget-object v2, p1, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/object/ObjectLyrics3Image;

    .line 49
    .local v1, oldObject:Lorg/farng/mp3/object/ObjectLyrics3Image;
    iget-object v2, p0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    new-instance v3, Lorg/farng/mp3/object/ObjectLyrics3Image;

    invoke-direct {v3, v1}, Lorg/farng/mp3/object/ObjectLyrics3Image;-><init>(Lorg/farng/mp3/object/ObjectLyrics3Image;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v1           #oldObject:Lorg/farng/mp3/object/ObjectLyrics3Image;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/object/ObjectLyrics3Image;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    .line 64
    iget-object v0, p0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method private readString(Ljava/lang/String;)V
    .locals 5
    .parameter "imageString"

    .prologue
    .line 191
    const/4 v2, 0x0

    .line 192
    .local v2, offset:I
    sget-object v4, Lorg/farng/mp3/TagConstant;->SEPERATOR_LINE:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 193
    .local v0, delim:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    .line 194
    :goto_0
    if-ltz v0, :cond_0

    .line 195
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, token:Ljava/lang/String;
    new-instance v1, Lorg/farng/mp3/object/ObjectLyrics3Image;

    const-string v4, "Image"

    invoke-direct {v1, v4}, Lorg/farng/mp3/object/ObjectLyrics3Image;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, image:Lorg/farng/mp3/object/ObjectLyrics3Image;
    invoke-virtual {v1, v3}, Lorg/farng/mp3/object/ObjectLyrics3Image;->setFilename(Ljava/lang/String;)V

    .line 198
    iget-object v4, p0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v4, Lorg/farng/mp3/TagConstant;->SEPERATOR_LINE:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v2, v0, v4

    .line 200
    sget-object v4, Lorg/farng/mp3/TagConstant;->SEPERATOR_LINE:Ljava/lang/String;

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 202
    .end local v1           #image:Lorg/farng/mp3/object/ObjectLyrics3Image;
    .end local v3           #token:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 203
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 204
    .restart local v3       #token:Ljava/lang/String;
    new-instance v1, Lorg/farng/mp3/object/ObjectLyrics3Image;

    const-string v4, "Image"

    invoke-direct {v1, v4}, Lorg/farng/mp3/object/ObjectLyrics3Image;-><init>(Ljava/lang/String;)V

    .line 205
    .restart local v1       #image:Lorg/farng/mp3/object/ObjectLyrics3Image;
    invoke-virtual {v1, v3}, Lorg/farng/mp3/object/ObjectLyrics3Image;->setFilename(Ljava/lang/String;)V

    .line 206
    iget-object v4, p0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v1           #image:Lorg/farng/mp3/object/ObjectLyrics3Image;
    .end local v3           #token:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private writeString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 211
    const-string v2, ""

    .line 213
    .local v2, str:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 214
    iget-object v3, p0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/object/ObjectLyrics3Image;

    .line 215
    .local v1, image:Lorg/farng/mp3/object/ObjectLyrics3Image;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/farng/mp3/object/ObjectLyrics3Image;->writeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/farng/mp3/TagConstant;->SEPERATOR_LINE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    .end local v1           #image:Lorg/farng/mp3/object/ObjectLyrics3Image;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    .line 218
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 220
    .end local v2           #str:Ljava/lang/String;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public addImage(Lorg/farng/mp3/object/ObjectLyrics3Image;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 110
    iget-object v0, p0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 114
    instance-of v2, p1, Lorg/farng/mp3/lyrics3/FieldBodyIMG;

    if-nez v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 117
    check-cast v0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;

    .line 118
    .local v0, fieldBodyIMG:Lorg/farng/mp3/lyrics3/FieldBodyIMG;
    iget-object v2, p0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    invoke-super {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "IMG"

    return-object v0
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 79
    const/4 v2, 0x0

    .line 81
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 82
    iget-object v3, p0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/object/ObjectLyrics3Image;

    .line 83
    .local v1, image:Lorg/farng/mp3/object/ObjectLyrics3Image;
    invoke-virtual {v1}, Lorg/farng/mp3/object/ObjectLyrics3Image;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    .end local v1           #image:Lorg/farng/mp3/object/ObjectLyrics3Image;
    :cond_0
    add-int/lit8 v3, v2, -0x2

    return v3
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->writeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v3, 0x0

    .line 89
    instance-of v2, p1, Lorg/farng/mp3/lyrics3/FieldBodyIMG;

    if-nez v2, :cond_0

    move v2, v3

    .line 98
    :goto_0
    return v2

    :cond_0
    move-object v2, p1

    .line 92
    check-cast v2, Lorg/farng/mp3/lyrics3/FieldBodyIMG;

    iget-object v1, v2, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    .line 93
    .local v1, superset:Ljava/util/ArrayList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 94
    iget-object v2, p0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 95
    goto :goto_0

    .line 93
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    :cond_2
    invoke-super {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->isSubsetOf(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 6
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/InvalidTagException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 134
    new-array v0, v4, [B

    .line 137
    .local v0, buffer:[B
    invoke-virtual {p1, v0, v5, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 138
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v5, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 139
    .local v2, size:I
    if-nez v2, :cond_0

    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v3

    invoke-virtual {v3}, Lorg/farng/mp3/TagOptionSingleton;->isLyrics3KeepEmptyFieldIfRead()Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    new-instance v3, Lorg/farng/mp3/InvalidTagException;

    const-string v4, "Lyircs3v2 Field has size of zero."

    invoke-direct {v3, v4}, Lorg/farng/mp3/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 142
    :cond_0
    new-array v0, v2, [B

    .line 145
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 146
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 147
    .local v1, imageString:Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->readString(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->readString(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method protected setupObjectList()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, str:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    return-object v1
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 8
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    .line 160
    const/4 v2, 0x0

    .line 161
    .local v2, offset:I
    new-array v0, v7, [B

    .line 163
    .local v0, buffer:[B
    invoke-virtual {p0}, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->getSize()I

    move-result v3

    .line 164
    .local v3, size:I
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, str:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x5

    if-ge v1, v5, :cond_0

    .line 166
    const/16 v5, 0x30

    aput-byte v5, v0, v1

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x5

    add-int/2addr v2, v5

    .line 169
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 170
    add-int v5, v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    .line 173
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 174
    if-lez v3, :cond_3

    .line 175
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/FieldBodyIMG;->writeString()Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    new-array v0, v5, [B

    .line 177
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 178
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 180
    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 182
    :cond_3
    return-void
.end method
