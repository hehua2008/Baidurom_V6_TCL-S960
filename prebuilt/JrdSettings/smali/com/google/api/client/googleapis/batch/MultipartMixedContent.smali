.class Lcom/google/api/client/googleapis/batch/MultipartMixedContent;
.super Lcom/google/api/client/http/AbstractHttpContent;
.source "MultipartMixedContent.java"


# static fields
.field private static final CR_LF:Ljava/lang/String; = "\r\n"

.field private static final TWO_DASHES:Ljava/lang/String; = "--"


# instance fields
.field private requestInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "boundary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo",
            "<**>;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, requestInfos:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<**>;>;"
    new-instance v1, Lcom/google/api/client/http/HttpMediaType;

    const-string v0, "multipart/mixed"

    invoke-direct {v1, v0}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    const-string v2, "boundary"

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/api/client/http/HttpMediaType;->setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/api/client/http/AbstractHttpContent;-><init>(Lcom/google/api/client/http/HttpMediaType;)V

    .line 64
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 66
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/batch/MultipartMixedContent;->requestInfos:Ljava/util/List;

    .line 67
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBoundary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/api/client/http/AbstractHttpContent;->getMediaType()Lcom/google/api/client/http/HttpMediaType;

    move-result-object v0

    const-string v1, "boundary"

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpMediaType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "writer"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 129
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 131
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 132
    return-void
.end method


# virtual methods
.method public setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/googleapis/batch/MultipartMixedContent;
    .locals 0
    .parameter "mediaType"

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;

    .line 137
    return-object p0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/batch/MultipartMixedContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/googleapis/batch/MultipartMixedContent;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 12
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 74
    const/4 v1, 0x1

    .line 75
    .local v1, contentId:I
    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 76
    .local v7, writer:Ljava/io/Writer;
    invoke-direct {p0}, Lcom/google/api/client/googleapis/batch/MultipartMixedContent;->getBoundary()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, boundary:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/api/client/googleapis/batch/MultipartMixedContent;->requestInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;

    .line 79
    .local v6, requestInfo:Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;,"Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<**>;"
    iget-object v5, v6, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->request:Lcom/google/api/client/http/HttpRequest;

    .line 82
    .local v5, request:Lcom/google/api/client/http/HttpRequest;
    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v7, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 84
    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 87
    const-string v8, "Content-Type: application/http"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 88
    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 89
    const-string v8, "Content-Transfer-Encoding: binary"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 90
    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 91
    const-string v8, "Content-ID: "

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 92
    add-int/lit8 v2, v1, 0x1

    .end local v1           #contentId:I
    .local v2, contentId:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 93
    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 94
    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v5}, Lcom/google/api/client/http/HttpRequest;->getMethod()Lcom/google/api/client/http/HttpMethod;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 98
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v5}, Lcom/google/api/client/http/HttpRequest;->getUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 100
    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v5}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v8

    invoke-static {v8, v11, v11, v7}, Lcom/google/api/client/http/HttpHeaders;->serializeHeadersForMultipartRequests(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Ljava/io/Writer;)V

    .line 106
    invoke-virtual {v5}, Lcom/google/api/client/http/HttpRequest;->getContent()Lcom/google/api/client/http/HttpContent;

    move-result-object v3

    .line 107
    .local v3, data:Lcom/google/api/client/http/HttpContent;
    if-eqz v3, :cond_0

    .line 108
    const-string v8, "Content-Type"

    invoke-interface {v3}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/google/api/client/googleapis/batch/MultipartMixedContent;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v8, "Content-Length"

    invoke-interface {v3}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/google/api/client/googleapis/batch/MultipartMixedContent;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->flush()V

    .line 112
    invoke-interface {v3, p1}, Lcom/google/api/client/http/HttpContent;->writeTo(Ljava/io/OutputStream;)V

    .line 114
    :cond_0
    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v1, v2

    .line 115
    .end local v2           #contentId:I
    .restart local v1       #contentId:I
    goto/16 :goto_0

    .line 118
    .end local v3           #data:Lcom/google/api/client/http/HttpContent;
    .end local v5           #request:Lcom/google/api/client/http/HttpRequest;
    .end local v6           #requestInfo:Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;,"Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<**>;"
    :cond_1
    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v7, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 120
    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 121
    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->flush()V

    .line 124
    return-void
.end method
