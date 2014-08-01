.class public final Lcom/google/api/client/http/apache/ApacheHttpTransport;
.super Lcom/google/api/client/http/HttpTransport;
.source "ApacheHttpTransport.java"


# instance fields
.field private final httpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/google/api/client/http/apache/ApacheHttpTransport;->newDefaultHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/api/client/http/apache/ApacheHttpTransport;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 3
    .parameter "httpClient"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/api/client/http/HttpTransport;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 101
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 102
    .local v0, params:Lorg/apache/http/params/HttpParams;
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 103
    const-string v1, "http.protocol.handle-redirects"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 104
    return-void
.end method

.method public static newDefaultHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 127
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 128
    .local v2, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v2, v8}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 129
    const/16 v4, 0x2000

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 130
    const/16 v4, 0xc8

    invoke-static {v2, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 131
    new-instance v4, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v2, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 133
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 134
    .local v3, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 135
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 136
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 137
    .local v0, connectionManager:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 138
    .local v1, defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v4, v8, v8}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v1, v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 139
    return-object v1
.end method


# virtual methods
.method public bridge synthetic buildDeleteRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/apache/ApacheHttpTransport;->buildDeleteRequest(Ljava/lang/String;)Lcom/google/api/client/http/apache/ApacheHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildDeleteRequest(Ljava/lang/String;)Lcom/google/api/client/http/apache/ApacheHttpRequest;
    .locals 3
    .parameter "url"

    .prologue
    .line 154
    new-instance v0, Lcom/google/api/client/http/apache/ApacheHttpRequest;

    iget-object v1, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport;->httpClient:Lorg/apache/http/client/HttpClient;

    new-instance v2, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/apache/ApacheHttpRequest;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object v0
.end method

.method public bridge synthetic buildGetRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/apache/ApacheHttpTransport;->buildGetRequest(Ljava/lang/String;)Lcom/google/api/client/http/apache/ApacheHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildGetRequest(Ljava/lang/String;)Lcom/google/api/client/http/apache/ApacheHttpRequest;
    .locals 3
    .parameter "url"

    .prologue
    .line 159
    new-instance v0, Lcom/google/api/client/http/apache/ApacheHttpRequest;

    iget-object v1, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport;->httpClient:Lorg/apache/http/client/HttpClient;

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/apache/ApacheHttpRequest;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object v0
.end method

.method public bridge synthetic buildHeadRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/apache/ApacheHttpTransport;->buildHeadRequest(Ljava/lang/String;)Lcom/google/api/client/http/apache/ApacheHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildHeadRequest(Ljava/lang/String;)Lcom/google/api/client/http/apache/ApacheHttpRequest;
    .locals 3
    .parameter "url"

    .prologue
    .line 164
    new-instance v0, Lcom/google/api/client/http/apache/ApacheHttpRequest;

    iget-object v1, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport;->httpClient:Lorg/apache/http/client/HttpClient;

    new-instance v2, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/apache/ApacheHttpRequest;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object v0
.end method

.method public bridge synthetic buildPatchRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/apache/ApacheHttpTransport;->buildPatchRequest(Ljava/lang/String;)Lcom/google/api/client/http/apache/ApacheHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPatchRequest(Ljava/lang/String;)Lcom/google/api/client/http/apache/ApacheHttpRequest;
    .locals 3
    .parameter "url"

    .prologue
    .line 169
    new-instance v0, Lcom/google/api/client/http/apache/ApacheHttpRequest;

    iget-object v1, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport;->httpClient:Lorg/apache/http/client/HttpClient;

    new-instance v2, Lcom/google/api/client/http/apache/HttpPatch;

    invoke-direct {v2, p1}, Lcom/google/api/client/http/apache/HttpPatch;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/apache/ApacheHttpRequest;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object v0
.end method

.method public bridge synthetic buildPostRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/apache/ApacheHttpTransport;->buildPostRequest(Ljava/lang/String;)Lcom/google/api/client/http/apache/ApacheHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPostRequest(Ljava/lang/String;)Lcom/google/api/client/http/apache/ApacheHttpRequest;
    .locals 3
    .parameter "url"

    .prologue
    .line 174
    new-instance v0, Lcom/google/api/client/http/apache/ApacheHttpRequest;

    iget-object v1, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport;->httpClient:Lorg/apache/http/client/HttpClient;

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/apache/ApacheHttpRequest;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object v0
.end method

.method public bridge synthetic buildPutRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/apache/ApacheHttpTransport;->buildPutRequest(Ljava/lang/String;)Lcom/google/api/client/http/apache/ApacheHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPutRequest(Ljava/lang/String;)Lcom/google/api/client/http/apache/ApacheHttpRequest;
    .locals 3
    .parameter "url"

    .prologue
    .line 179
    new-instance v0, Lcom/google/api/client/http/apache/ApacheHttpRequest;

    iget-object v1, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport;->httpClient:Lorg/apache/http/client/HttpClient;

    new-instance v2, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/apache/ApacheHttpRequest;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport;->httpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 191
    return-void
.end method

.method public supportsHead()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public supportsPatch()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method
