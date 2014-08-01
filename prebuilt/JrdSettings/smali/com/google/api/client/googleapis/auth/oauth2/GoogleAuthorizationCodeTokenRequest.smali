.class public Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;
.super Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;
.source "GoogleAuthorizationCodeTokenRequest.java"


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "clientId"
    .parameter "clientSecret"
    .parameter "code"
    .parameter "redirectUri"

    .prologue
    .line 95
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    const-string v1, "https://accounts.google.com/o/oauth2/token"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0, p5}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/google/api/client/auth/oauth2/ClientParametersAuthentication;

    invoke-direct {v0, p3, p4}, Lcom/google/api/client/auth/oauth2/ClientParametersAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    .line 97
    invoke-virtual {p0, p6}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;->setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    .line 98
    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;->execute()Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/TokenRequest;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    const-class v1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    return-object v0
.end method

.method public bridge synthetic setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;
    .locals 1
    .parameter "clientAuthentication"

    .prologue
    .line 129
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    return-object v0
.end method

.method public bridge synthetic setCode(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;->setCode(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;
    .locals 1
    .parameter "code"

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setCode(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    return-object v0
.end method

.method public bridge synthetic setGrantType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;->setGrantType(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setGrantType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;->setGrantType(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setGrantType(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;
    .locals 1
    .parameter "grantType"

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setGrantType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    return-object v0
.end method

.method public bridge synthetic setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;->setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;
    .locals 1
    .parameter "redirectUri"

    .prologue
    .line 141
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    return-object v0
.end method

.method public bridge synthetic setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;
    .locals 1
    .parameter "requestInitializer"

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    return-object v0
.end method

.method public bridge synthetic setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;->setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;->setScopes([Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;->setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;->setScopes([Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, scopes:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    return-object v0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;
    .locals 1
    .parameter "scopes"

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    return-object v0
.end method

.method public bridge synthetic setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;->setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;->setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;
    .locals 1
    .parameter "tokenServerUrl"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    return-object v0
.end method
