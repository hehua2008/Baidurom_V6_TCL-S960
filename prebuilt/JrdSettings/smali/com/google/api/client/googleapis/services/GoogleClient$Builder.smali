.class public Lcom/google/api/client/googleapis/services/GoogleClient$Builder;
.super Lcom/google/api/client/http/json/JsonHttpClient$Builder;
.source "GoogleClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/services/GoogleClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;)V
    .locals 0
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "baseUrl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 262
    invoke-direct {p0, p1, p2, p3}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;)V

    .line 263
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 0
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "rootUrl"
    .parameter "servicePath"
    .parameter "httpRequestInitializer"

    .prologue
    .line 278
    invoke-direct/range {p0 .. p5}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpRequestInitializer;)V

    .line 279
    return-void
.end method


# virtual methods
.method public build()Lcom/google/api/client/googleapis/services/GoogleClient;
    .locals 9

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->isBaseUrlUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Lcom/google/api/client/googleapis/services/GoogleClient;

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->getJsonHttpRequestInitializer()Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->getHttpRequestInitializer()Lcom/google/api/client/http/HttpRequestInitializer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->getObjectParser()Lcom/google/api/client/json/JsonObjectParser;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->getBaseUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->getApplicationName()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/googleapis/services/GoogleClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/api/client/googleapis/services/GoogleClient;

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->getJsonHttpRequestInitializer()Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->getHttpRequestInitializer()Lcom/google/api/client/http/HttpRequestInitializer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->getObjectParser()Lcom/google/api/client/json/JsonObjectParser;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->getRootUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->getServicePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->getApplicationName()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/google/api/client/googleapis/services/GoogleClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic build()Lcom/google/api/client/http/json/JsonHttpClient;
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->build()Lcom/google/api/client/googleapis/services/GoogleClient;

    move-result-object v0

    return-object v0
.end method
