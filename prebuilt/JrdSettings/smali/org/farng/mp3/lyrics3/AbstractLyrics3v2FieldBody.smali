.class public abstract Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
.super Lorg/farng/mp3/AbstractMP3FragmentBody;
.source "AbstractLyrics3v2FieldBody.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/farng/mp3/AbstractMP3FragmentBody;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;)V
    .locals 0
    .parameter "copyObject"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;-><init>(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected readHeader(Ljava/io/RandomAccessFile;)I
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/InvalidTagException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 34
    new-array v0, v3, [B

    .line 37
    .local v0, buffer:[B
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 38
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 39
    .local v1, size:I
    if-nez v1, :cond_0

    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->isLyrics3KeepEmptyFieldIfRead()Z

    move-result v2

    if-nez v2, :cond_0

    .line 40
    new-instance v2, Lorg/farng/mp3/InvalidTagException;

    const-string v3, "Lyircs3v2 Field has size of zero."

    invoke-direct {v2, v3}, Lorg/farng/mp3/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_0
    return v1
.end method

.method protected writeHeader(Ljava/io/RandomAccessFile;I)V
    .locals 6
    .parameter "file"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v2, 0x0

    .line 48
    .local v2, offset:I
    const/4 v4, 0x5

    new-array v0, v4, [B

    .line 51
    .local v0, buffer:[B
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->getSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, str:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x5

    if-ge v1, v4, :cond_0

    .line 53
    const/16 v4, 0x30

    aput-byte v4, v0, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x5

    add-int/2addr v2, v4

    .line 56
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 57
    add-int v4, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 60
    return-void
.end method
