.class public Lcom/google/api/client/http/json/JsonHttpClient;
.super Ljava/lang/Object;
.source "JsonHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    }
.end annotation


# static fields
.field static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final applicationName:Ljava/lang/String;

.field private final baseUrl:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final baseUrlUsed:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private jsonHttpParser:Lcom/google/api/client/http/json/JsonHttpParser;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final jsonHttpRequestInitializer:Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

.field private final jsonObjectParser:Lcom/google/api/client/json/JsonObjectParser;

.field private final requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

.field private final rootUrl:Ljava/lang/String;

.field private final servicePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/google/api/client/http/json/JsonHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/json/JsonHttpClient;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "transport"
    .parameter "jsonHttpRequestInitializer"
    .parameter "httpRequestInitializer"
    .parameter "jsonFactory"
    .parameter "jsonObjectParser"
    .parameter "baseUrl"
    .parameter "applicationName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput-object p2, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonHttpRequestInitializer:Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    .line 344
    invoke-static {p6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->baseUrl:Ljava/lang/String;

    .line 345
    const-string v0, "/"

    invoke-virtual {p6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 346
    iput-object p7, p0, Lcom/google/api/client/http/json/JsonHttpClient;->applicationName:Ljava/lang/String;

    .line 347
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 348
    iput-object p5, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonObjectParser:Lcom/google/api/client/json/JsonObjectParser;

    .line 349
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    if-nez p3, :cond_0

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->baseUrlUsed:Z

    .line 353
    iput-object v1, p0, Lcom/google/api/client/http/json/JsonHttpClient;->rootUrl:Ljava/lang/String;

    .line 354
    iput-object v1, p0, Lcom/google/api/client/http/json/JsonHttpClient;->servicePath:Ljava/lang/String;

    .line 355
    return-void

    .line 350
    :cond_0
    invoke-virtual {p1, p3}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "transport"
    .parameter "jsonHttpRequestInitializer"
    .parameter "httpRequestInitializer"
    .parameter "jsonFactory"
    .parameter "jsonObjectParser"
    .parameter "rootUrl"
    .parameter "servicePath"
    .parameter "applicationName"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p2, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonHttpRequestInitializer:Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    .line 386
    const-string v0, "root URL cannot be null."

    invoke-static {p6, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->rootUrl:Ljava/lang/String;

    .line 387
    const-string v0, "/"

    invoke-virtual {p6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "root URL must end with a \"/\"."

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 388
    const-string v0, "service path cannot be null"

    invoke-static {p7, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 390
    const-string v0, "/"

    invoke-virtual {v0, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "service path must equal \"/\" if it is of length 1."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 392
    const-string p7, ""

    .line 397
    :cond_0
    :goto_0
    iput-object p7, p0, Lcom/google/api/client/http/json/JsonHttpClient;->servicePath:Ljava/lang/String;

    .line 398
    iput-object p8, p0, Lcom/google/api/client/http/json/JsonHttpClient;->applicationName:Ljava/lang/String;

    .line 399
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 400
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iput-object p5, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonObjectParser:Lcom/google/api/client/json/JsonObjectParser;

    .line 402
    if-nez p3, :cond_3

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->baseUrl:Ljava/lang/String;

    .line 405
    iput-boolean v2, p0, Lcom/google/api/client/http/json/JsonHttpClient;->baseUrlUsed:Z

    .line 406
    return-void

    .line 393
    :cond_1
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 394
    const-string v0, "/"

    invoke-virtual {p7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/"

    invoke-virtual {p7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    const-string v1, "service path must end with a \"/\" and not begin with a \"/\"."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    .line 402
    :cond_3
    invoke-virtual {p1, p3}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    goto :goto_1
.end method

.method protected constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "transport"
    .parameter "jsonHttpRequestInitializer"
    .parameter "httpRequestInitializer"
    .parameter "jsonFactory"
    .parameter "baseUrl"
    .parameter "applicationName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 309
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/json/JsonHttpClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V
    .locals 7
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "baseUrl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 262
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/http/json/JsonHttpClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 9
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "rootUrl"
    .parameter "servicePath"
    .parameter "httpRequestInitializer"

    .prologue
    const/4 v2, 0x0

    .line 283
    move-object v0, p0

    move-object v1, p1

    move-object v3, p5

    move-object v4, p2

    move-object v5, v2

    move-object v6, p3

    move-object v7, p4

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/api/client/http/json/JsonHttpClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method


# virtual methods
.method protected buildHttpRequest(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;
    .locals 4
    .parameter "method"
    .parameter "url"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    iget-object v2, p0, Lcom/google/api/client/http/json/JsonHttpClient;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 429
    .local v0, httpRequest:Lcom/google/api/client/http/HttpRequest;
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->getJsonObjectParser()Lcom/google/api/client/json/JsonObjectParser;

    move-result-object v1

    .line 431
    .local v1, parser:Lcom/google/api/client/json/JsonObjectParser;
    if-eqz v1, :cond_2

    .line 432
    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->setParser(Lcom/google/api/client/util/ObjectParser;)V

    .line 436
    :goto_0
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 437
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->getApplicationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)V

    .line 439
    :cond_0
    if-eqz p3, :cond_1

    .line 440
    invoke-virtual {p0, p3}, Lcom/google/api/client/http/json/JsonHttpClient;->createSerializer(Ljava/lang/Object;)Lcom/google/api/client/http/json/JsonHttpContent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 442
    :cond_1
    return-object v0

    .line 434
    :cond_2
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->getJsonHttpParser()Lcom/google/api/client/http/json/JsonHttpParser;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/api/client/http/HttpRequest;->addParser(Lcom/google/api/client/http/HttpParser;)V

    goto :goto_0
.end method

.method protected createParser()Lcom/google/api/client/http/json/JsonHttpParser;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 196
    new-instance v0, Lcom/google/api/client/http/json/JsonHttpParser;

    iget-object v1, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-direct {v0, v1}, Lcom/google/api/client/http/json/JsonHttpParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    return-object v0
.end method

.method protected createSerializer(Ljava/lang/Object;)Lcom/google/api/client/http/json/JsonHttpContent;
    .locals 2
    .parameter "body"

    .prologue
    .line 215
    new-instance v0, Lcom/google/api/client/http/json/JsonHttpContent;

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/api/client/http/json/JsonHttpContent;-><init>(Lcom/google/api/client/json/JsonFactory;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected executeAsInputStream(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 2
    .parameter "method"
    .parameter "url"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/api/client/http/json/JsonHttpClient;->executeUnparsed(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Ljava/lang/Object;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 530
    .local v0, response:Lcom/google/api/client/http/HttpResponse;
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method protected executeUnparsed(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Ljava/lang/Object;)Lcom/google/api/client/http/HttpResponse;
    .locals 2
    .parameter "method"
    .parameter "url"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/api/client/http/json/JsonHttpClient;->buildHttpRequest(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 473
    .local v0, request:Lcom/google/api/client/http/HttpRequest;
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/json/JsonHttpClient;->executeUnparsed(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method protected executeUnparsed(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;
    .locals 1
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public final getBaseUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->baseUrlUsed:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->baseUrl:Ljava/lang/String;

    .line 123
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/api/client/http/json/JsonHttpClient;->rootUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/http/json/JsonHttpClient;->servicePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public final getJsonHttpParser()Lcom/google/api/client/http/json/JsonHttpParser;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonHttpParser:Lcom/google/api/client/http/json/JsonHttpParser;

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->createParser()Lcom/google/api/client/http/json/JsonHttpParser;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonHttpParser:Lcom/google/api/client/http/json/JsonHttpParser;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonHttpParser:Lcom/google/api/client/http/json/JsonHttpParser;

    return-object v0
.end method

.method public final getJsonHttpRequestInitializer()Lcom/google/api/client/http/json/JsonHttpRequestInitializer;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonHttpRequestInitializer:Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    return-object v0
.end method

.method public final getJsonObjectParser()Lcom/google/api/client/json/JsonObjectParser;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonObjectParser:Lcom/google/api/client/json/JsonObjectParser;

    return-object v0
.end method

.method public final getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    return-object v0
.end method

.method public final getRootUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->baseUrlUsed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "root URL cannot be used if base URL is used."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->rootUrl:Ljava/lang/String;

    return-object v0

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getServicePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->baseUrlUsed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "service path cannot be used if base URL is used."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->servicePath:Ljava/lang/String;

    return-object v0

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V
    .locals 1
    .parameter "jsonHttpRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->getJsonHttpRequestInitializer()Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->getJsonHttpRequestInitializer()Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/api/client/http/json/JsonHttpRequestInitializer;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 245
    :cond_0
    return-void
.end method

.method protected final isBaseUrlUsed()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->baseUrlUsed:Z

    return v0
.end method
