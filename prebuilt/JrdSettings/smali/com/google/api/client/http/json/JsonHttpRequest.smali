.class public Lcom/google/api/client/http/json/JsonHttpRequest;
.super Lcom/google/api/client/util/GenericData;
.source "JsonHttpRequest.java"


# instance fields
.field private final client:Lcom/google/api/client/http/json/JsonHttpClient;

.field private final content:Ljava/lang/Object;

.field private enableGZipContent:Z

.field private lastResponseHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private final method:Lcom/google/api/client/http/HttpMethod;

.field private requestHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private final uriTemplate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/json/JsonHttpClient;Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "client"
    .parameter "method"
    .parameter "uriTemplate"
    .parameter "content"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 49
    new-instance v0, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->enableGZipContent:Z

    .line 70
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/json/JsonHttpClient;

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->client:Lcom/google/api/client/http/json/JsonHttpClient;

    .line 71
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpMethod;

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    .line 72
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->uriTemplate:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->content:Ljava/lang/Object;

    .line 74
    return-void
.end method


# virtual methods
.method public buildHttpRequest()Lcom/google/api/client/http/HttpRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v1, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->client:Lcom/google/api/client/http/json/JsonHttpClient;

    iget-object v2, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpRequest;->buildHttpRequestUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v3

    iget-object v4, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->content:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/api/client/http/json/JsonHttpClient;->buildHttpRequest(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 179
    .local v0, request:Lcom/google/api/client/http/HttpRequest;
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpRequest;->getRequestHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/client/util/GenericData;->putAll(Ljava/util/Map;)V

    .line 180
    return-object v0
.end method

.method public final buildHttpRequestUrl()Lcom/google/api/client/http/GenericUrl;
    .locals 4

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpRequest;->getClient()Lcom/google/api/client/http/json/JsonHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/json/JsonHttpClient;->isBaseUrlUsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpRequest;->getClient()Lcom/google/api/client/http/json/JsonHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/json/JsonHttpClient;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, baseUrl:Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/google/api/client/http/GenericUrl;

    iget-object v2, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->uriTemplate:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v2, p0, v3}, Lcom/google/api/client/http/UriTemplate;->expand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 165
    .end local v0           #baseUrl:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpRequest;->getClient()Lcom/google/api/client/http/json/JsonHttpClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/json/JsonHttpClient;->getRootUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpRequest;->getClient()Lcom/google/api/client/http/json/JsonHttpClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/json/JsonHttpClient;->getServicePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #baseUrl:Ljava/lang/String;
    goto :goto_0
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
    .line 251
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpRequest;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 252
    .local v0, response:Lcom/google/api/client/http/HttpResponse;
    invoke-virtual {v0, p1}, Lcom/google/api/client/http/HttpResponse;->download(Ljava/io/OutputStream;)V

    .line 253
    return-void
.end method

.method public executeAsInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpRequest;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 235
    .local v0, response:Lcom/google/api/client/http/HttpResponse;
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public executeUnparsed()Lcom/google/api/client/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpRequest;->buildHttpRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 206
    .local v0, request:Lcom/google/api/client/http/HttpRequest;
    iget-boolean v2, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->enableGZipContent:Z

    invoke-virtual {v0, v2}, Lcom/google/api/client/http/HttpRequest;->setEnableGZipContent(Z)Lcom/google/api/client/http/HttpRequest;

    .line 207
    iget-object v2, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->client:Lcom/google/api/client/http/json/JsonHttpClient;

    invoke-virtual {v2, v0}, Lcom/google/api/client/http/json/JsonHttpClient;->executeUnparsed(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 208
    .local v1, response:Lcom/google/api/client/http/HttpResponse;
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    iput-object v2, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->lastResponseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 209
    return-object v1
.end method

.method public final getClient()Lcom/google/api/client/http/json/JsonHttpClient;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->client:Lcom/google/api/client/http/json/JsonHttpClient;

    return-object v0
.end method

.method public final getEnableGZipContent()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->enableGZipContent:Z

    return v0
.end method

.method public final getJsonContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->content:Ljava/lang/Object;

    return-object v0
.end method

.method public final getLastResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->lastResponseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public final getMethod()Lcom/google/api/client/http/HttpMethod;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    return-object v0
.end method

.method public final getRequestHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public final getUriTemplate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->uriTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public setEnableGZipContent(Z)Lcom/google/api/client/http/json/JsonHttpRequest;
    .locals 0
    .parameter "enableGZipContent"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->enableGZipContent:Z

    .line 88
    return-object p0
.end method

.method public setRequestHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/json/JsonHttpRequest;
    .locals 0
    .parameter "headers"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 133
    return-object p0
.end method
