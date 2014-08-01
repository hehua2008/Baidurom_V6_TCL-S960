.class final Lcom/google/api/client/auth/oauth2/BearerToken$FormEncodedBodyAccessMethod;
.super Ljava/lang/Object;
.source "BearerToken.java"

# interfaces
.implements Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/auth/oauth2/BearerToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FormEncodedBodyAccessMethod"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method private static getData(Lcom/google/api/client/http/HttpRequest;)Ljava/util/Map;
    .locals 1
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/http/HttpRequest;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {p0}, Lcom/google/api/client/http/UrlEncodedContent;->getContent(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/UrlEncodedContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/UrlEncodedContent;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccessTokenFromRequest(Lcom/google/api/client/http/HttpRequest;)Ljava/lang/String;
    .locals 3
    .parameter "request"

    .prologue
    .line 85
    invoke-static {p1}, Lcom/google/api/client/auth/oauth2/BearerToken$FormEncodedBodyAccessMethod;->getData(Lcom/google/api/client/http/HttpRequest;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "access_token"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, bodyParam:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public intercept(Lcom/google/api/client/http/HttpRequest;Ljava/lang/String;)V
    .locals 2
    .parameter "request"
    .parameter "accessToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getMethod()Lcom/google/api/client/http/HttpMethod;

    move-result-object v0

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->GET:Lcom/google/api/client/http/HttpMethod;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "HTTP GET method is not supported"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 81
    invoke-static {p1}, Lcom/google/api/client/auth/oauth2/BearerToken$FormEncodedBodyAccessMethod;->getData(Lcom/google/api/client/http/HttpRequest;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "access_token"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
