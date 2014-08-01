.class public final Lcom/google/api/client/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private content:Ljava/io/InputStream;

.field private final contentEncoding:Ljava/lang/String;

.field private contentLoggingLimit:I

.field private contentRead:Z

.field private final contentType:Ljava/lang/String;

.field private final headers:Lcom/google/api/client/http/HttpHeaders;

.field private loggingEnabled:Z

.field private final mediaType:Lcom/google/api/client/http/HttpMediaType;

.field private final request:Lcom/google/api/client/http/HttpRequest;

.field response:Lcom/google/api/client/http/LowLevelHttpResponse;

.field private final statusCode:I

.field private final statusMessage:Ljava/lang/String;

.field private final transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/LowLevelHttpResponse;)V
    .locals 10
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v8, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    .line 126
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v7

    iput-object v7, p0, Lcom/google/api/client/http/HttpResponse;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 127
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v7

    iput-object v7, p0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 128
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getContentLoggingLimit()I

    move-result v7

    iput v7, p0, Lcom/google/api/client/http/HttpResponse;->contentLoggingLimit:I

    .line 129
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->isLoggingEnabled()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/api/client/http/HttpResponse;->loggingEnabled:Z

    .line 130
    iput-object p2, p0, Lcom/google/api/client/http/HttpResponse;->response:Lcom/google/api/client/http/LowLevelHttpResponse;

    .line 131
    invoke-virtual {p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContentEncoding()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/api/client/http/HttpResponse;->contentEncoding:Ljava/lang/String;

    .line 132
    invoke-virtual {p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getStatusCode()I

    move-result v0

    .line 133
    .local v0, code:I
    iput v0, p0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    .line 134
    invoke-virtual {p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, message:Ljava/lang/String;
    iput-object v5, p0, Lcom/google/api/client/http/HttpResponse;->statusMessage:Ljava/lang/String;

    .line 136
    sget-object v4, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    .line 137
    .local v4, logger:Ljava/util/logging/Logger;
    iget-boolean v7, p0, Lcom/google/api/client/http/HttpResponse;->loggingEnabled:Z

    if-eqz v7, :cond_4

    sget-object v7, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v4, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v3, 0x1

    .line 138
    .local v3, loggable:Z
    :goto_0
    const/4 v2, 0x0

    .line 139
    .local v2, logbuf:Ljava/lang/StringBuilder;
    if-eqz v3, :cond_1

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #logbuf:Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .restart local v2       #logbuf:Ljava/lang/StringBuilder;
    const-string v7, "-------------- RESPONSE --------------"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getStatusLine()Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, statusLine:Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 144
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_0
    :goto_1
    sget-object v7, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .end local v6           #statusLine:Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    if-eqz v3, :cond_6

    move-object v7, v2

    :goto_2
    invoke-virtual {v9, p2, v7}, Lcom/google/api/client/http/HttpHeaders;->fromHttpResponse(Lcom/google/api/client/http/LowLevelHttpResponse;Ljava/lang/StringBuilder;)V

    .line 159
    invoke-virtual {p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, contentType:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 161
    iget-object v7, p0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v7}, Lcom/google/api/client/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 163
    :cond_2
    iput-object v1, p0, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    .line 164
    if-nez v1, :cond_7

    :goto_3
    iput-object v8, p0, Lcom/google/api/client/http/HttpResponse;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    .line 167
    if-eqz v3, :cond_3

    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 170
    :cond_3
    return-void

    .line 137
    .end local v1           #contentType:Ljava/lang/String;
    .end local v2           #logbuf:Ljava/lang/StringBuilder;
    .end local v3           #loggable:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 146
    .restart local v2       #logbuf:Ljava/lang/StringBuilder;
    .restart local v3       #loggable:Z
    .restart local v6       #statusLine:Ljava/lang/String;
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    if-eqz v5, :cond_0

    .line 148
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v6           #statusLine:Ljava/lang/String;
    :cond_6
    move-object v7, v8

    .line 155
    goto :goto_2

    .line 164
    .restart local v1       #contentType:Ljava/lang/String;
    :cond_7
    new-instance v8, Lcom/google/api/client/http/HttpMediaType;

    invoke-direct {v8, v1}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 460
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->response:Lcom/google/api/client/http/LowLevelHttpResponse;

    invoke-virtual {v0}, Lcom/google/api/client/http/LowLevelHttpResponse;->disconnect()V

    .line 461
    return-void
.end method

.method public download(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 435
    .local v0, inputStream:Ljava/io/InputStream;
    invoke-static {v0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 436
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    iget-boolean v5, p0, Lcom/google/api/client/http/HttpResponse;->contentRead:Z

    if-nez v5, :cond_1

    .line 371
    iget-object v5, p0, Lcom/google/api/client/http/HttpResponse;->response:Lcom/google/api/client/http/LowLevelHttpResponse;

    invoke-virtual {v5}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 372
    .local v3, lowLevelResponseContent:Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 375
    const/4 v1, 0x0

    .line 378
    .local v1, contentProcessed:Z
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->contentEncoding:Ljava/lang/String;

    .line 379
    .local v0, contentEncoding:Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string v5, "gzip"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 380
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    .end local v3           #lowLevelResponseContent:Ljava/io/InputStream;
    .local v4, lowLevelResponseContent:Ljava/io/InputStream;
    :goto_0
    :try_start_1
    sget-object v2, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    .line 384
    .local v2, logger:Ljava/util/logging/Logger;
    iget-boolean v5, p0, Lcom/google/api/client/http/HttpResponse;->loggingEnabled:Z

    if-eqz v5, :cond_3

    sget-object v5, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 385
    new-instance v3, Lcom/google/api/client/util/LoggingInputStream;

    sget-object v5, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    iget v6, p0, Lcom/google/api/client/http/HttpResponse;->contentLoggingLimit:I

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/google/api/client/util/LoggingInputStream;-><init>(Ljava/io/InputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 388
    .end local v4           #lowLevelResponseContent:Ljava/io/InputStream;
    .restart local v3       #lowLevelResponseContent:Ljava/io/InputStream;
    :goto_1
    :try_start_2
    iput-object v3, p0, Lcom/google/api/client/http/HttpResponse;->content:Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    const/4 v1, 0x1

    .line 391
    if-nez v1, :cond_0

    .line 392
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 396
    .end local v0           #contentEncoding:Ljava/lang/String;
    .end local v1           #contentProcessed:Z
    .end local v2           #logger:Ljava/util/logging/Logger;
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/api/client/http/HttpResponse;->contentRead:Z

    .line 398
    .end local v3           #lowLevelResponseContent:Ljava/io/InputStream;
    :cond_1
    iget-object v5, p0, Lcom/google/api/client/http/HttpResponse;->content:Ljava/io/InputStream;

    return-object v5

    .line 391
    .restart local v1       #contentProcessed:Z
    .restart local v3       #lowLevelResponseContent:Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    :goto_2
    if-nez v1, :cond_2

    .line 392
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v5

    .line 391
    .end local v3           #lowLevelResponseContent:Ljava/io/InputStream;
    .restart local v0       #contentEncoding:Ljava/lang/String;
    .restart local v4       #lowLevelResponseContent:Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #lowLevelResponseContent:Ljava/io/InputStream;
    .restart local v3       #lowLevelResponseContent:Ljava/io/InputStream;
    goto :goto_2

    .end local v3           #lowLevelResponseContent:Ljava/io/InputStream;
    .restart local v2       #logger:Ljava/util/logging/Logger;
    .restart local v4       #lowLevelResponseContent:Ljava/io/InputStream;
    :cond_3
    move-object v3, v4

    .end local v4           #lowLevelResponseContent:Ljava/io/InputStream;
    .restart local v3       #lowLevelResponseContent:Ljava/io/InputStream;
    goto :goto_1

    .end local v2           #logger:Ljava/util/logging/Logger;
    :cond_4
    move-object v4, v3

    .end local v3           #lowLevelResponseContent:Ljava/io/InputStream;
    .restart local v4       #lowLevelResponseContent:Ljava/io/InputStream;
    goto :goto_0
.end method

.method public getContentCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->getCharsetParameter()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->getCharsetParameter()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLoggingLimit()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/google/api/client/http/HttpResponse;->contentLoggingLimit:I

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getMediaType()Lcom/google/api/client/http/HttpMediaType;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    return-object v0
.end method

.method public getParser()Lcom/google/api/client/http/HttpParser;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    iget-object v1, p0, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->getParser(Ljava/lang/String;)Lcom/google/api/client/http/HttpParser;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lcom/google/api/client/http/HttpRequest;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public ignore()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 443
    .local v0, content:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 446
    :cond_0
    return-void
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpResponse;->loggingEnabled:Z

    return v0
.end method

.method public isSuccessStatusCode()Z
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    invoke-static {v0}, Lcom/google/api/client/http/HttpStatusCodes;->isSuccess(I)Z

    move-result v0

    return v0
.end method

.method public parseAs(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    .local p1, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v2, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpRequest;->getParser()Lcom/google/api/client/util/ObjectParser;

    move-result-object v0

    .line 488
    .local v0, objectParser:Lcom/google/api/client/util/ObjectParser;
    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContentCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-interface {v0, v2, v3, p1}, Lcom/google/api/client/util/ObjectParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 499
    :goto_0
    return-object v2

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getParser()Lcom/google/api/client/http/HttpParser;

    move-result-object v1

    .line 494
    .local v1, parser:Lcom/google/api/client/http/HttpParser;
    if-nez v1, :cond_2

    .line 495
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 496
    iget-object v2, p0, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    const-string v3, "Missing Content-Type header in response"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 497
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No parser defined for Content-Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 496
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 499
    :cond_2
    invoke-interface {v1, p0, p1}, Lcom/google/api/client/http/HttpParser;->parse(Lcom/google/api/client/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public parseAs(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .parameter "dataType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    iget-object v1, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpRequest;->getParser()Lcom/google/api/client/util/ObjectParser;

    move-result-object v0

    .line 514
    .local v0, objectParser:Lcom/google/api/client/util/ObjectParser;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "No ObjectParser defined for response"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 515
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContentCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/google/api/client/util/ObjectParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 514
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parseAsString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 538
    .local v0, content:Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 539
    const-string v2, ""

    .line 543
    :goto_0
    return-object v2

    .line 541
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 542
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, v1}, Lcom/google/api/client/http/AbstractInputStreamContent;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 543
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContentCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public setContentLoggingLimit(I)Lcom/google/api/client/http/HttpResponse;
    .locals 2
    .parameter "contentLoggingLimit"

    .prologue
    .line 231
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "The content logging limit must be non-negative."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 233
    iput p1, p0, Lcom/google/api/client/http/HttpResponse;->contentLoggingLimit:I

    .line 234
    return-object p0

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLoggingEnabled(Z)Lcom/google/api/client/http/HttpResponse;
    .locals 0
    .parameter "loggingEnabled"

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpResponse;->loggingEnabled:Z

    .line 261
    return-object p0
.end method
