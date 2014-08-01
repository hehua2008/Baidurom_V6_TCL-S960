.class public final Lcom/google/api/client/http/ByteArrayContent;
.super Lcom/google/api/client/http/AbstractInputStreamContent;
.source "ByteArrayContent.java"


# instance fields
.field private final byteArray:[B

.field private final length:I

.field private final offset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .parameter "type"
    .parameter "array"

    .prologue
    .line 65
    const/4 v0, 0x0

    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/api/client/http/ByteArrayContent;-><init>(Ljava/lang/String;[BII)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 2
    .parameter "type"
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/api/client/http/ByteArrayContent;->byteArray:[B

    .line 81
    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 82
    iput p3, p0, Lcom/google/api/client/http/ByteArrayContent;->offset:I

    .line 83
    iput p4, p0, Lcom/google/api/client/http/ByteArrayContent;->length:I

    .line 84
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;
    .locals 2
    .parameter "type"
    .parameter "contentString"

    .prologue
    .line 106
    new-instance v0, Lcom/google/api/client/http/ByteArrayContent;

    invoke-static {p1}, Lcom/google/api/client/util/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/http/ByteArrayContent;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 119
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/api/client/http/ByteArrayContent;->byteArray:[B

    iget v2, p0, Lcom/google/api/client/http/ByteArrayContent;->offset:I

    iget v3, p0, Lcom/google/api/client/http/ByteArrayContent;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/google/api/client/http/ByteArrayContent;->length:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public retrySupported()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic setCloseInputStream(Z)Lcom/google/api/client/http/AbstractInputStreamContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/ByteArrayContent;->setCloseInputStream(Z)Lcom/google/api/client/http/ByteArrayContent;

    move-result-object v0

    return-object v0
.end method

.method public setCloseInputStream(Z)Lcom/google/api/client/http/ByteArrayContent;
    .locals 1
    .parameter "closeInputStream"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->setCloseInputStream(Z)Lcom/google/api/client/http/AbstractInputStreamContent;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/ByteArrayContent;

    return-object v0
.end method

.method public bridge synthetic setEncoding(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/ByteArrayContent;->setEncoding(Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;

    move-result-object v0

    return-object v0
.end method

.method public setEncoding(Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;
    .locals 1
    .parameter "encoding"

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->setEncoding(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/ByteArrayContent;

    return-object v0
.end method

.method public bridge synthetic setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/ByteArrayContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;

    move-result-object v0

    return-object v0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;
    .locals 1
    .parameter "type"

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/ByteArrayContent;

    return-object v0
.end method
