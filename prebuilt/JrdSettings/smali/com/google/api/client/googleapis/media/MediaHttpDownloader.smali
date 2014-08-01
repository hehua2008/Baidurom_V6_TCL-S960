.class public final Lcom/google/api/client/googleapis/media/MediaHttpDownloader;
.super Ljava/lang/Object;
.source "MediaHttpDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;
    }
.end annotation


# static fields
.field public static final MAXIMUM_CHUNK_SIZE:I = 0x2000000


# instance fields
.field private backOffPolicyEnabled:Z

.field private bytesDownloaded:J

.field private chunkSize:I

.field private directDownloadEnabled:Z

.field private downloadState:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

.field private mediaContentLength:J

.field private progressListener:Lcom/google/api/client/googleapis/media/MediaHttpDownloaderProgressListener;

.field private final requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

.field private final transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 1
    .parameter "transport"
    .parameter "httpRequestInitializer"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->backOffPolicyEnabled:Z

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->directDownloadEnabled:Z

    .line 95
    const/high16 v0, 0x200

    iput v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->chunkSize:I

    .line 104
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->NOT_STARTED:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->downloadState:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    .line 118
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpTransport;

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 119
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    .line 122
    return-void

    .line 119
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    goto :goto_0
.end method

.method private getNextByteIndex(Ljava/lang/String;)J
    .locals 4
    .parameter "rangeHeader"

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 202
    const-wide/16 v0, 0x0

    .line 204
    :goto_0
    return-wide v0

    :cond_0
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method private setMediaContentLength(Ljava/lang/String;)V
    .locals 4
    .parameter "rangeHeader"

    .prologue
    .line 235
    if-nez p1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->mediaContentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 239
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->mediaContentLength:J

    goto :goto_0
.end method

.method private updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;)V
    .locals 1
    .parameter "downloadState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->downloadState:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    .line 342
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->progressListener:Lcom/google/api/client/googleapis/media/MediaHttpDownloaderProgressListener;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->progressListener:Lcom/google/api/client/googleapis/media/MediaHttpDownloaderProgressListener;

    invoke-interface {v0, p0}, Lcom/google/api/client/googleapis/media/MediaHttpDownloaderProgressListener;->progressChanged(Lcom/google/api/client/googleapis/media/MediaHttpDownloader;)V

    .line 345
    :cond_0
    return-void
.end method


# virtual methods
.method public download(Lcom/google/api/client/http/GenericUrl;Ljava/io/OutputStream;)V
    .locals 11
    .parameter "requestUrl"
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->downloadState:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    sget-object v6, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->NOT_STARTED:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 141
    const-string v5, "alt"

    const-string v6, "media"

    invoke-virtual {p1, v5, v6}, Lcom/google/api/client/util/GenericData;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-boolean v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->directDownloadEnabled:Z

    if-eqz v5, :cond_2

    .line 144
    sget-object v5, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->MEDIA_IN_PROGRESS:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    invoke-direct {p0, v5}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;)V

    .line 146
    iget-object v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    invoke-virtual {v5, p1}, Lcom/google/api/client/http/HttpRequestFactory;->buildGetRequest(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v3

    .line 147
    .local v3, request:Lcom/google/api/client/http/HttpRequest;
    invoke-virtual {v3}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v4

    .line 151
    .local v4, response:Lcom/google/api/client/http/HttpResponse;
    :try_start_0
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/client/http/HttpHeaders;->getContentLength()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->mediaContentLength:J

    .line 152
    iget-wide v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->mediaContentLength:J

    iput-wide v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->bytesDownloaded:J

    .line 153
    sget-object v5, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->MEDIA_COMPLETE:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    invoke-direct {p0, v5}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;)V

    .line 154
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/google/api/client/http/AbstractInputStreamContent;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 184
    :goto_1
    return-void

    .line 140
    .end local v3           #request:Lcom/google/api/client/http/HttpRequest;
    .end local v4           #response:Lcom/google/api/client/http/HttpResponse;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 156
    .restart local v3       #request:Lcom/google/api/client/http/HttpRequest;
    .restart local v4       #response:Lcom/google/api/client/http/HttpResponse;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    throw v5

    .line 187
    .local v0, contentRange:Ljava/lang/String;
    .local v1, nextByteIndex:J
    :cond_1
    iput-wide v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->bytesDownloaded:J

    .line 188
    sget-object v5, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->MEDIA_IN_PROGRESS:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    invoke-direct {p0, v5}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;)V

    .line 163
    .end local v0           #contentRange:Ljava/lang/String;
    .end local v1           #nextByteIndex:J
    .end local v3           #request:Lcom/google/api/client/http/HttpRequest;
    .end local v4           #response:Lcom/google/api/client/http/HttpResponse;
    :cond_2
    iget-object v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    invoke-virtual {v5, p1}, Lcom/google/api/client/http/HttpRequestFactory;->buildGetRequest(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v3

    .line 164
    .restart local v3       #request:Lcom/google/api/client/http/HttpRequest;
    invoke-virtual {v3}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->bytesDownloaded:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->bytesDownloaded:J

    iget v9, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->chunkSize:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/api/client/http/HttpHeaders;->setRange(Ljava/lang/String;)V

    .line 167
    iget-boolean v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->backOffPolicyEnabled:Z

    if-eqz v5, :cond_3

    .line 170
    new-instance v5, Lcom/google/api/client/http/ExponentialBackOffPolicy;

    invoke-direct {v5}, Lcom/google/api/client/http/ExponentialBackOffPolicy;-><init>()V

    invoke-virtual {v3, v5}, Lcom/google/api/client/http/HttpRequest;->setBackOffPolicy(Lcom/google/api/client/http/BackOffPolicy;)Lcom/google/api/client/http/HttpRequest;

    .line 173
    :cond_3
    invoke-virtual {v3}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v4

    .line 174
    .restart local v4       #response:Lcom/google/api/client/http/HttpResponse;
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/google/api/client/http/AbstractInputStreamContent;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 176
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/client/http/HttpHeaders;->getContentRange()Ljava/lang/String;

    move-result-object v0

    .line 177
    .restart local v0       #contentRange:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->getNextByteIndex(Ljava/lang/String;)J

    move-result-wide v1

    .line 178
    .restart local v1       #nextByteIndex:J
    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->setMediaContentLength(Ljava/lang/String;)V

    .line 180
    iget-wide v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->mediaContentLength:J

    cmp-long v5, v5, v1

    if-gtz v5, :cond_1

    .line 182
    iget-wide v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->mediaContentLength:J

    iput-wide v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->bytesDownloaded:J

    .line 183
    sget-object v5, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->MEDIA_COMPLETE:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    invoke-direct {p0, v5}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;)V

    goto :goto_1
.end method

.method public getChunkSize()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->chunkSize:I

    return v0
.end method

.method public getDownloadState()Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->downloadState:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    return-object v0
.end method

.method public getNumBytesDownloaded()J
    .locals 2

    .prologue
    .line 332
    iget-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->bytesDownloaded:J

    return-wide v0
.end method

.method public getProgress()D
    .locals 4

    .prologue
    .line 363
    iget-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->mediaContentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->bytesDownloaded:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->mediaContentLength:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public getProgressListener()Lcom/google/api/client/googleapis/media/MediaHttpDownloaderProgressListener;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->progressListener:Lcom/google/api/client/googleapis/media/MediaHttpDownloaderProgressListener;

    return-object v0
.end method

.method public getTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public isBackOffPolicyEnabled()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->backOffPolicyEnabled:Z

    return v0
.end method

.method public isDirectDownloadEnabled()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->directDownloadEnabled:Z

    return v0
.end method

.method public setBackOffPolicyEnabled(Z)Lcom/google/api/client/googleapis/media/MediaHttpDownloader;
    .locals 0
    .parameter "backOffPolicyEnabled"

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->backOffPolicyEnabled:Z

    .line 287
    return-object p0
.end method

.method public setBytesDownloaded(J)Lcom/google/api/client/googleapis/media/MediaHttpDownloader;
    .locals 0
    .parameter "bytesDownloaded"

    .prologue
    .line 223
    iput-wide p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->bytesDownloaded:J

    .line 224
    return-object p0
.end method

.method public setChunkSize(I)Lcom/google/api/client/googleapis/media/MediaHttpDownloader;
    .locals 1
    .parameter "chunkSize"

    .prologue
    .line 313
    if-lez p1, :cond_0

    const/high16 v0, 0x200

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 314
    iput p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->chunkSize:I

    .line 315
    return-object p0

    .line 313
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDirectDownloadEnabled(Z)Lcom/google/api/client/googleapis/media/MediaHttpDownloader;
    .locals 0
    .parameter "directDownloadEnabled"

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->directDownloadEnabled:Z

    .line 261
    return-object p0
.end method

.method public setProgressListener(Lcom/google/api/client/googleapis/media/MediaHttpDownloaderProgressListener;)Lcom/google/api/client/googleapis/media/MediaHttpDownloader;
    .locals 0
    .parameter "progressListener"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->progressListener:Lcom/google/api/client/googleapis/media/MediaHttpDownloaderProgressListener;

    .line 270
    return-object p0
.end method
