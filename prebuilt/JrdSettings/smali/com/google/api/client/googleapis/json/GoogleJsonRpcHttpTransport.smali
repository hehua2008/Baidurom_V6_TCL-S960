.class public final Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;
.super Ljava/lang/Object;
.source "GoogleJsonRpcHttpTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;
    }
.end annotation


# static fields
.field private static final JSON_RPC_CONTENT_TYPE:Ljava/lang/String; = "application/json-rpc"


# instance fields
.field public accept:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public contentType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public jsonFactory:Lcom/google/api/client/json/JsonFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public rpcServerUrl:Lcom/google/api/client/http/GenericUrl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public transport:Lcom/google/api/client/http/HttpTransport;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V
    .locals 6
    .parameter "httpTransport"
    .parameter "jsonFactory"

    .prologue
    .line 106
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/http/HttpTransport;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/client/json/JsonFactory;

    sget-object v0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->DEFAULT_SERVER_URL:Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v0}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/json-rpc"

    const-string v5, "application/json-rpc"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "httpTransport"
    .parameter "jsonFactory"
    .parameter "rpcServerUrl"
    .parameter "mimeType"
    .parameter "accept"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, "application/json-rpc"

    iput-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->contentType:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->contentType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->accept:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 124
    iput-object p2, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 125
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v0, p3}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->rpcServerUrl:Lcom/google/api/client/http/GenericUrl;

    .line 126
    iput-object p4, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->contentType:Ljava/lang/String;

    .line 127
    iput-object p5, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->accept:Ljava/lang/String;

    .line 128
    return-void
.end method

.method private internalExecute(Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;
    .locals 5
    .parameter "data"

    .prologue
    .line 384
    new-instance v0, Lcom/google/api/client/http/json/JsonHttpContent;

    iget-object v3, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-direct {v0, v3, p1}, Lcom/google/api/client/http/json/JsonHttpContent;-><init>(Lcom/google/api/client/json/JsonFactory;Ljava/lang/Object;)V

    .line 385
    .local v0, content:Lcom/google/api/client/http/json/JsonHttpContent;
    new-instance v3, Lcom/google/api/client/http/HttpMediaType;

    iget-object v4, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->contentType:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/api/client/http/json/JsonHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/json/JsonHttpContent;

    .line 388
    :try_start_0
    iget-object v3, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->transport:Lcom/google/api/client/http/HttpTransport;

    invoke-virtual {v3}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->rpcServerUrl:Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v3, v4, v0}, Lcom/google/api/client/http/HttpRequestFactory;->buildPostRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v2

    .line 389
    .local v2, httpRequest:Lcom/google/api/client/http/HttpRequest;
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v3

    iget-object v4, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->accept:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/api/client/http/HttpHeaders;->setAccept(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    return-object v2

    .line 391
    .end local v2           #httpRequest:Lcom/google/api/client/http/HttpRequest;
    :catch_0
    move-exception v1

    .line 392
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public buildPostRequest(Lcom/google/api/client/json/rpc2/JsonRpcRequest;)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .parameter "request"

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->internalExecute(Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPostRequest(Ljava/util/List;)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/json/rpc2/JsonRpcRequest;",
            ">;)",
            "Lcom/google/api/client/http/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/client/json/rpc2/JsonRpcRequest;>;"
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->internalExecute(Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public final getAccept()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->accept:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getRpcServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->rpcServerUrl:Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v0}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
