.class public final Lcom/google/api/client/googleapis/MediaHttpUploader;
.super Ljava/lang/Object;
.source "MediaHttpUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_CHUNK_SIZE:I = 0xa00000

.field private static final KB:I = 0x400

.field private static final MB:I = 0x100000

.field public static final MINIMUM_CHUNK_SIZE:I = 0x40000


# instance fields
.field private backOffPolicyEnabled:Z

.field private bytesUploaded:J

.field private chunkSize:I

.field private contentInputStream:Ljava/io/InputStream;

.field private currentRequest:Lcom/google/api/client/http/HttpRequest;

.field private initiationHeaders:Lcom/google/api/client/googleapis/GoogleHeaders;

.field private initiationMethod:Lcom/google/api/client/http/HttpMethod;

.field private final mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

.field private mediaContentLength:J

.field private metadata:Lcom/google/api/client/http/HttpContent;

.field private progressListener:Lcom/google/api/client/googleapis/MediaHttpUploaderProgressListener;

.field private final requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

.field private final transport:Lcom/google/api/client/http/HttpTransport;

.field private uploadState:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/AbstractInputStreamContent;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 1
    .parameter "mediaContent"
    .parameter "transport"
    .parameter "httpRequestInitializer"

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-object v0, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;->NOT_STARTED:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    iput-object v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->uploadState:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    .line 112
    sget-object v0, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    iput-object v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->initiationMethod:Lcom/google/api/client/http/HttpMethod;

    .line 115
    new-instance v0, Lcom/google/api/client/googleapis/GoogleHeaders;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/GoogleHeaders;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/googleapis/GoogleHeaders;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->backOffPolicyEnabled:Z

    .line 145
    const/high16 v0, 0xa0

    iput v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->chunkSize:I

    .line 159
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/AbstractInputStreamContent;

    iput-object v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 160
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpTransport;

    iput-object v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 161
    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    .line 163
    return-void

    .line 161
    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    goto :goto_0
.end method

.method private executeUploadInitiation(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;
    .locals 5
    .parameter "initiationRequestUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    sget-object v2, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;->INITIATION_STARTED:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    invoke-direct {p0, v2}, Lcom/google/api/client/googleapis/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;)V

    .line 252
    const-string v2, "uploadType"

    const-string v3, "resumable"

    invoke-virtual {p1, v2, v3}, Lcom/google/api/client/util/GenericData;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v2, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    iget-object v3, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->initiationMethod:Lcom/google/api/client/http/HttpMethod;

    iget-object v4, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->metadata:Lcom/google/api/client/http/HttpContent;

    invoke-virtual {v2, v3, p1, v4}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 255
    .local v0, request:Lcom/google/api/client/http/HttpRequest;
    iget-object v2, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->initiationMethod:Lcom/google/api/client/http/HttpMethod;

    sget-object v3, Lcom/google/api/client/http/HttpMethod;->PUT:Lcom/google/api/client/http/HttpMethod;

    if-ne v2, v3, :cond_0

    .line 259
    new-instance v2, Lcom/google/api/client/googleapis/MethodOverride;

    invoke-direct {v2}, Lcom/google/api/client/googleapis/MethodOverride;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/api/client/googleapis/MethodOverride;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/googleapis/GoogleHeaders;

    iget-object v3, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    invoke-virtual {v3}, Lcom/google/api/client/http/AbstractInputStreamContent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/client/googleapis/GoogleHeaders;->setUploadContentType(Ljava/lang/String;)V

    .line 262
    iget-object v2, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/googleapis/GoogleHeaders;

    invoke-direct {p0}, Lcom/google/api/client/googleapis/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/api/client/googleapis/GoogleHeaders;->setUploadContentLength(J)V

    .line 263
    iget-object v2, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/googleapis/GoogleHeaders;

    invoke-virtual {v0, v2}, Lcom/google/api/client/http/HttpRequest;->setHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/HttpRequest;

    .line 264
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/api/client/http/HttpRequest;->setAllowEmptyContent(Z)Lcom/google/api/client/http/HttpRequest;

    .line 265
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 267
    .local v1, response:Lcom/google/api/client/http/HttpResponse;
    sget-object v2, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;->INITIATION_COMPLETE:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    invoke-direct {p0, v2}, Lcom/google/api/client/googleapis/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;)V

    .line 268
    return-object v1
.end method

.method private getMediaContentLength()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->mediaContentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    invoke-virtual {v0}, Lcom/google/api/client/http/AbstractInputStreamContent;->getLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->mediaContentLength:J

    .line 239
    iget-wide v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->mediaContentLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 241
    :cond_0
    iget-wide v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->mediaContentLength:J

    return-wide v0

    .line 239
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNextByteIndex(Ljava/lang/String;)J
    .locals 4
    .parameter "rangeHeader"

    .prologue
    .line 347
    if-nez p1, :cond_0

    .line 348
    const-wide/16 v0, 0x0

    .line 350
    :goto_0
    return-wide v0

    :cond_0
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method private setContentAndHeadersOnCurrentRequest(J)V
    .locals 8
    .parameter "bytesWritten"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    iget v2, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->chunkSize:I

    int-to-long v2, v2

    invoke-direct {p0}, Lcom/google/api/client/googleapis/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v4

    sub-long/2addr v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 279
    .local v0, blockSize:I
    new-instance v1, Lcom/google/api/client/http/InputStreamContent;

    iget-object v2, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    invoke-virtual {v2}, Lcom/google/api/client/http/AbstractInputStreamContent;->getType()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/common/io/LimitInputStream;

    iget-object v4, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    int-to-long v5, v0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/common/io/LimitInputStream;-><init>(Ljava/io/InputStream;J)V

    invoke-direct {v1, v2, v3}, Lcom/google/api/client/http/InputStreamContent;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 282
    .local v1, contentChunk:Lcom/google/api/client/http/InputStreamContent;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/InputStreamContent;->setCloseInputStream(Z)Lcom/google/api/client/http/InputStreamContent;

    .line 283
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/InputStreamContent;->setRetrySupported(Z)Lcom/google/api/client/http/InputStreamContent;

    .line 284
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/http/InputStreamContent;->setLength(J)Lcom/google/api/client/http/InputStreamContent;

    .line 286
    iget-object v2, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->mark(I)V

    .line 287
    iget-object v2, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v2, v1}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 288
    iget-object v2, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v4, v0

    add-long/2addr v4, p1

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/api/client/googleapis/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/client/http/HttpHeaders;->setContentRange(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method private updateStateAndNotifyListener(Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;)V
    .locals 1
    .parameter "uploadState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    iput-object p1, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->uploadState:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    .line 477
    iget-object v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->progressListener:Lcom/google/api/client/googleapis/MediaHttpUploaderProgressListener;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->progressListener:Lcom/google/api/client/googleapis/MediaHttpUploaderProgressListener;

    invoke-interface {v0, p0}, Lcom/google/api/client/googleapis/MediaHttpUploaderProgressListener;->progressChanged(Lcom/google/api/client/googleapis/MediaHttpUploader;)V

    .line 480
    :cond_0
    return-void
.end method


# virtual methods
.method public getChunkSize()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->chunkSize:I

    return v0
.end method

.method public getInitiationHeaders()Lcom/google/api/client/googleapis/GoogleHeaders;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/googleapis/GoogleHeaders;

    return-object v0
.end method

.method public getInitiationMethod()Lcom/google/api/client/http/HttpMethod;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->initiationMethod:Lcom/google/api/client/http/HttpMethod;

    return-object v0
.end method

.method public getMediaContent()Lcom/google/api/client/http/HttpContent;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    return-object v0
.end method

.method public getMetadata()Lcom/google/api/client/http/HttpContent;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->metadata:Lcom/google/api/client/http/HttpContent;

    return-object v0
.end method

.method public getNumBytesUploaded()J
    .locals 2

    .prologue
    .line 467
    iget-wide v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->bytesUploaded:J

    return-wide v0
.end method

.method public getProgress()D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    iget-wide v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->bytesUploaded:J

    long-to-double v0, v0

    invoke-direct {p0}, Lcom/google/api/client/googleapis/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getProgressListener()Lcom/google/api/client/googleapis/MediaHttpUploaderProgressListener;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->progressListener:Lcom/google/api/client/googleapis/MediaHttpUploaderProgressListener;

    return-object v0
.end method

.method public getTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public getUploadState()Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->uploadState:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    return-object v0
.end method

.method public isBackOffPolicyEnabled()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->backOffPolicyEnabled:Z

    return v0
.end method

.method public serverErrorCallback()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 304
    iget-object v11, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    const-string v12, "The current request should not be null"

    invoke-static {v11, v12}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v11, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    iget-object v12, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v12}, Lcom/google/api/client/http/HttpRequest;->getUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v12

    invoke-virtual {v11, v12, v13}, Lcom/google/api/client/http/HttpRequestFactory;->buildPutRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v4

    .line 309
    .local v4, request:Lcom/google/api/client/http/HttpRequest;
    new-instance v11, Lcom/google/api/client/googleapis/MethodOverride;

    invoke-direct {v11}, Lcom/google/api/client/googleapis/MethodOverride;-><init>()V

    invoke-virtual {v11, v4}, Lcom/google/api/client/googleapis/MethodOverride;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 311
    invoke-virtual {v4, v9}, Lcom/google/api/client/http/HttpRequest;->setAllowEmptyContent(Z)Lcom/google/api/client/http/HttpRequest;

    .line 312
    new-instance v11, Lcom/google/api/client/http/ByteArrayContent;

    new-array v12, v10, [B

    invoke-direct {v11, v13, v12}, Lcom/google/api/client/http/ByteArrayContent;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v4, v11}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 314
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bytes */"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0}, Lcom/google/api/client/googleapis/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/api/client/http/HttpHeaders;->setContentRange(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v4, v10}, Lcom/google/api/client/http/HttpRequest;->setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;

    .line 316
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v5

    .line 318
    .local v5, response:Lcom/google/api/client/http/HttpResponse;
    invoke-virtual {v5}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/api/client/http/HttpHeaders;->getRange()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/google/api/client/googleapis/MediaHttpUploader;->getNextByteIndex(Ljava/lang/String;)J

    move-result-wide v2

    .line 321
    .local v2, bytesWritten:J
    invoke-virtual {v5}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/api/client/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v8

    .line 322
    .local v8, updatedUploadUrl:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 323
    iget-object v11, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    new-instance v12, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v12, v8}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/google/api/client/http/HttpRequest;->setUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    .line 328
    :cond_0
    iget-object v11, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->reset()V

    .line 329
    iget-wide v11, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->bytesUploaded:J

    sub-long v6, v11, v2

    .line 330
    .local v6, skipValue:J
    iget-object v11, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-virtual {v11, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 331
    .local v0, actualSkipValue:J
    cmp-long v11, v6, v0

    if-nez v11, :cond_1

    :goto_0
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 335
    invoke-direct {p0, v2, v3}, Lcom/google/api/client/googleapis/MediaHttpUploader;->setContentAndHeadersOnCurrentRequest(J)V

    .line 336
    return-void

    :cond_1
    move v9, v10

    .line 331
    goto :goto_0
.end method

.method public setBackOffPolicyEnabled(Z)Lcom/google/api/client/googleapis/MediaHttpUploader;
    .locals 0
    .parameter "backOffPolicyEnabled"

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->backOffPolicyEnabled:Z

    .line 381
    return-object p0
.end method

.method public setChunkSize(I)Lcom/google/api/client/googleapis/MediaHttpUploader;
    .locals 1
    .parameter "chunkSize"

    .prologue
    .line 417
    const/high16 v0, 0x4

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 418
    iput p1, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->chunkSize:I

    .line 419
    return-object p0

    .line 417
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInitiationHeaders(Lcom/google/api/client/googleapis/GoogleHeaders;)Lcom/google/api/client/googleapis/MediaHttpUploader;
    .locals 0
    .parameter "initiationHeaders"

    .prologue
    .line 452
    iput-object p1, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/googleapis/GoogleHeaders;

    .line 453
    return-object p0
.end method

.method public setInitiationMethod(Lcom/google/api/client/http/HttpMethod;)Lcom/google/api/client/googleapis/MediaHttpUploader;
    .locals 1
    .parameter "initiationMethod"

    .prologue
    .line 436
    sget-object v0, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/google/api/client/http/HttpMethod;->PUT:Lcom/google/api/client/http/HttpMethod;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 438
    iput-object p1, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->initiationMethod:Lcom/google/api/client/http/HttpMethod;

    .line 439
    return-object p0

    .line 436
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMetadata(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/googleapis/MediaHttpUploader;
    .locals 0
    .parameter "metadata"

    .prologue
    .line 360
    iput-object p1, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->metadata:Lcom/google/api/client/http/HttpContent;

    .line 361
    return-object p0
.end method

.method public setProgressListener(Lcom/google/api/client/googleapis/MediaHttpUploaderProgressListener;)Lcom/google/api/client/googleapis/MediaHttpUploader;
    .locals 0
    .parameter "progressListener"

    .prologue
    .line 397
    iput-object p1, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->progressListener:Lcom/google/api/client/googleapis/MediaHttpUploaderProgressListener;

    .line 398
    return-object p0
.end method

.method public upload(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;
    .locals 8
    .parameter "initiationRequestUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 190
    iget-object v4, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    const-string v6, "upload can not be called twice for one instance."

    invoke-static {v4, v6}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 194
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/MediaHttpUploader;->executeUploadInitiation(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 195
    .local v0, initialResponse:Lcom/google/api/client/http/HttpResponse;
    new-instance v3, Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/client/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 198
    .local v3, uploadUrl:Lcom/google/api/client/http/GenericUrl;
    iget-object v4, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    invoke-virtual {v4}, Lcom/google/api/client/http/AbstractInputStreamContent;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    .line 203
    :goto_1
    iget-object v4, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Lcom/google/api/client/http/HttpRequestFactory;->buildPutRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v4

    iput-object v4, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    .line 204
    new-instance v4, Lcom/google/api/client/googleapis/MethodOverride;

    invoke-direct {v4}, Lcom/google/api/client/googleapis/MethodOverride;-><init>()V

    iget-object v6, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v4, v6}, Lcom/google/api/client/googleapis/MethodOverride;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 205
    iget-object v4, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v4, v5}, Lcom/google/api/client/http/HttpRequest;->setAllowEmptyContent(Z)Lcom/google/api/client/http/HttpRequest;

    .line 206
    iget-wide v6, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->bytesUploaded:J

    invoke-direct {p0, v6, v7}, Lcom/google/api/client/googleapis/MediaHttpUploader;->setContentAndHeadersOnCurrentRequest(J)V

    .line 207
    iget-boolean v4, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->backOffPolicyEnabled:Z

    if-eqz v4, :cond_0

    .line 210
    iget-object v4, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    new-instance v6, Lcom/google/api/client/googleapis/MediaExponentialBackOffPolicy;

    invoke-direct {v6, p0}, Lcom/google/api/client/googleapis/MediaExponentialBackOffPolicy;-><init>(Lcom/google/api/client/googleapis/MediaHttpUploader;)V

    invoke-virtual {v4, v6}, Lcom/google/api/client/http/HttpRequest;->setBackOffPolicy(Lcom/google/api/client/http/BackOffPolicy;)Lcom/google/api/client/http/HttpRequest;

    .line 212
    :cond_0
    iget-object v4, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v4, v5}, Lcom/google/api/client/http/HttpRequest;->setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;

    .line 213
    iget-object v4, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v4}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 214
    .local v1, response:Lcom/google/api/client/http/HttpResponse;
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 215
    iget-wide v4, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->mediaContentLength:J

    iput-wide v4, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->bytesUploaded:J

    .line 216
    iget-object v4, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 217
    sget-object v4, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;->MEDIA_COMPLETE:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    invoke-direct {p0, v4}, Lcom/google/api/client/googleapis/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;)V

    .line 222
    :cond_1
    return-object v1

    .end local v0           #initialResponse:Lcom/google/api/client/http/HttpResponse;
    .end local v1           #response:Lcom/google/api/client/http/HttpResponse;
    .end local v3           #uploadUrl:Lcom/google/api/client/http/GenericUrl;
    :cond_2
    move v4, v5

    .line 190
    goto :goto_0

    .line 221
    .restart local v0       #initialResponse:Lcom/google/api/client/http/HttpResponse;
    .restart local v1       #response:Lcom/google/api/client/http/HttpResponse;
    .restart local v3       #uploadUrl:Lcom/google/api/client/http/GenericUrl;
    :cond_3
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v4

    const/16 v6, 0x134

    if-ne v4, v6, :cond_1

    .line 226
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/client/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, updatedUploadUrl:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 228
    new-instance v3, Lcom/google/api/client/http/GenericUrl;

    .end local v3           #uploadUrl:Lcom/google/api/client/http/GenericUrl;
    invoke-direct {v3, v2}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 230
    .restart local v3       #uploadUrl:Lcom/google/api/client/http/GenericUrl;
    :cond_4
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/client/http/HttpHeaders;->getRange()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/api/client/googleapis/MediaHttpUploader;->getNextByteIndex(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/api/client/googleapis/MediaHttpUploader;->bytesUploaded:J

    .line 231
    sget-object v4, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;->MEDIA_IN_PROGRESS:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    invoke-direct {p0, v4}, Lcom/google/api/client/googleapis/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;)V

    goto :goto_1
.end method
