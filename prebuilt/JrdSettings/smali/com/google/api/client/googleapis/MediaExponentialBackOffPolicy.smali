.class Lcom/google/api/client/googleapis/MediaExponentialBackOffPolicy;
.super Lcom/google/api/client/http/ExponentialBackOffPolicy;
.source "MediaExponentialBackOffPolicy.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final uploader:Lcom/google/api/client/googleapis/MediaHttpUploader;


# direct methods
.method constructor <init>(Lcom/google/api/client/googleapis/MediaHttpUploader;)V
    .locals 0
    .parameter "uploader"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/api/client/http/ExponentialBackOffPolicy;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/api/client/googleapis/MediaExponentialBackOffPolicy;->uploader:Lcom/google/api/client/googleapis/MediaHttpUploader;

    .line 43
    return-void
.end method


# virtual methods
.method public getNextBackOffMillis()J
    .locals 3

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/google/api/client/googleapis/MediaExponentialBackOffPolicy;->uploader:Lcom/google/api/client/googleapis/MediaHttpUploader;

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/MediaHttpUploader;->serverErrorCallback()V

    .line 59
    invoke-super {p0}, Lcom/google/api/client/http/ExponentialBackOffPolicy;->getNextBackOffMillis()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 60
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
