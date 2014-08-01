.class public abstract Lcom/google/api/client/http/AbstractHttpContent;
.super Ljava/lang/Object;
.source "AbstractHttpContent.java"

# interfaces
.implements Lcom/google/api/client/http/HttpContent;


# instance fields
.field private computedLength:J

.field private mediaType:Lcom/google/api/client/http/HttpMediaType;


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->computedLength:J

    .line 45
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/http/HttpMediaType;)V
    .locals 2
    .parameter "mediaType"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->computedLength:J

    .line 61
    iput-object p1, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    .line 62
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "mediaType"

    .prologue
    .line 53
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/api/client/http/AbstractHttpContent;-><init>(Lcom/google/api/client/http/HttpMediaType;)V

    .line 54
    return-void

    .line 53
    :cond_0
    new-instance v0, Lcom/google/api/client/http/HttpMediaType;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected computeLength()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/api/client/http/AbstractHttpContent;->retrySupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    const-wide/16 v1, -0x1

    .line 138
    :goto_0
    return-wide v1

    .line 132
    :cond_0
    new-instance v0, Lcom/google/api/client/http/ByteCountingOutputStream;

    invoke-direct {v0}, Lcom/google/api/client/http/ByteCountingOutputStream;-><init>()V

    .line 134
    .local v0, countingStream:Lcom/google/api/client/http/ByteCountingOutputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/AbstractHttpContent;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 138
    iget-wide v1, v0, Lcom/google/api/client/http/ByteCountingOutputStream;->count:J

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1
.end method

.method protected final getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->getCharsetParameter()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->getCharsetParameter()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->computedLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/google/api/client/http/AbstractHttpContent;->computeLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->computedLength:J

    .line 77
    :cond_0
    iget-wide v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->computedLength:J

    return-wide v0
.end method

.method public final getMediaType()Lcom/google/api/client/http/HttpMediaType;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->build()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public retrySupported()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;
    .locals 0
    .parameter "mediaType"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    .line 101
    return-object p0
.end method
