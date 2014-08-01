.class final Lcom/google/api/client/http/LogContent;
.super Ljava/lang/Object;
.source "LogContent.java"

# interfaces
.implements Lcom/google/api/client/http/HttpContent;


# instance fields
.field private final contentEncoding:Ljava/lang/String;

.field private final contentLength:J

.field private final contentLoggingLimit:I

.field private final contentType:Ljava/lang/String;

.field private final httpContent:Lcom/google/api/client/http/HttpContent;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpContent;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0
    .parameter "httpContent"
    .parameter "contentType"
    .parameter "contentEncoding"
    .parameter "contentLength"
    .parameter "contentLoggingLimit"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/api/client/http/LogContent;->httpContent:Lcom/google/api/client/http/HttpContent;

    .line 51
    iput-object p2, p0, Lcom/google/api/client/http/LogContent;->contentType:Ljava/lang/String;

    .line 52
    iput-wide p4, p0, Lcom/google/api/client/http/LogContent;->contentLength:J

    .line 53
    iput-object p3, p0, Lcom/google/api/client/http/LogContent;->contentEncoding:Ljava/lang/String;

    .line 54
    iput p6, p0, Lcom/google/api/client/http/LogContent;->contentLoggingLimit:I

    .line 55
    return-void
.end method


# virtual methods
.method getContentLoggingLimit()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/google/api/client/http/LogContent;->contentLoggingLimit:I

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/api/client/http/LogContent;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/google/api/client/http/LogContent;->contentLength:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/api/client/http/LogContent;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public retrySupported()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/api/client/http/LogContent;->httpContent:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v0}, Lcom/google/api/client/http/HttpContent;->retrySupported()Z

    move-result v0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/google/api/client/util/LoggingOutputStream;

    sget-object v1, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    iget v3, p0, Lcom/google/api/client/http/LogContent;->contentLoggingLimit:I

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/api/client/util/LoggingOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    .line 61
    .local v0, loggableOutputStream:Lcom/google/api/client/util/LoggingOutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/google/api/client/http/LogContent;->httpContent:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v1, v0}, Lcom/google/api/client/http/HttpContent;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {v0}, Lcom/google/api/client/util/LoggingOutputStream;->getLogStream()Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->close()V

    .line 66
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 67
    return-void

    .line 64
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/api/client/util/LoggingOutputStream;->getLogStream()Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->close()V

    throw v1
.end method
