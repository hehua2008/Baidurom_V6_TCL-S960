.class public Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;
.super Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
.source "FieldBodyUnsupported.java"


# instance fields
.field private value:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;->value:[B

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;->value:[B

    .line 43
    invoke-virtual {p0, p1}, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;->read(Ljava/io/RandomAccessFile;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;)V
    .locals 1
    .parameter "copyObject"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;-><init>(Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;->value:[B

    .line 29
    iget-object v0, p1, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;->value:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;->value:[B

    .line 30
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "value"

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;->value:[B

    .line 36
    iput-object p1, p0, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;->value:[B

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 64
    instance-of v2, p1, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;

    if-nez v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 67
    check-cast v0, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;

    .line 68
    .local v0, fieldBodyUnsupported:Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;
    iget-object v2, p0, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;->value:[B

    iget-object v3, v0, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;->value:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-super {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "ZZZ"

    return-object v0
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v3, 0x0

    .line 51
    instance-of v4, p1, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;

    if-nez v4, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v0, p1

    .line 54
    check-cast v0, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;

    .line 55
    .local v0, fieldBodyUnsupported:Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;->value:[B

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .line 56
    .local v1, subset:Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    iget-object v4, v0, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;->value:[B

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .line 57
    .local v2, superset:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 60
    invoke-super {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->isSubsetOf(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 80
    new-array v0, v3, [B

    .line 83
    .local v0, buffer:[B
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 84
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 85
    .local v1, size:I
    new-array v2, v1, [B

    iput-object v2, p0, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;->value:[B

    .line 88
    iget-object v2, p0, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;->value:[B

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 89
    return-void
.end method

.method protected setupObjectList()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;->value:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 6
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v2, 0x0

    .line 98
    .local v2, offset:I
    const/4 v4, 0x5

    new-array v0, v4, [B

    .line 99
    .local v0, buffer:[B
    iget-object v4, p0, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;->value:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, str:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x5

    if-ge v1, v4, :cond_0

    .line 101
    const/16 v4, 0x30

    aput-byte v4, v0, v1

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x5

    add-int/2addr v2, v4

    .line 104
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 105
    add-int v4, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 108
    iget-object v4, p0, Lorg/farng/mp3/lyrics3/FieldBodyUnsupported;->value:[B

    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 109
    return-void
.end method
