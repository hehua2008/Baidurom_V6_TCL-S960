.class public Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;
.super Lcom/google/api/client/auth/oauth2/TokenRequest;
.source "AuthorizationCodeTokenRequest.java"


# instance fields
.field private code:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private redirectUri:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "redirect_uri"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Ljava/lang/String;)V
    .locals 1
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "tokenServerUrl"
    .parameter "code"

    .prologue
    .line 100
    const-string v0, "authorization_code"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/api/client/auth/oauth2/TokenRequest;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p4}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setCode(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    .line 102
    return-void
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getRedirectUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->redirectUri:Ljava/lang/String;

    return-object v0
.end method

.method public setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;
    .locals 1
    .parameter "clientAuthentication"

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    return-object v0
.end method

.method public bridge synthetic setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;
    .locals 1
    .parameter "code"

    .prologue
    .line 150
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->code:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public setGrantType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;
    .locals 1
    .parameter "grantType"

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setGrantType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    return-object v0
.end method

.method public bridge synthetic setGrantType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setGrantType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;
    .locals 0
    .parameter "redirectUri"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->redirectUri:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;
    .locals 1
    .parameter "requestInitializer"

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    return-object v0
.end method

.method public bridge synthetic setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, scopes:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    return-object v0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;
    .locals 1
    .parameter "scopes"

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    return-object v0
.end method

.method public bridge synthetic setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;
    .locals 1
    .parameter "tokenServerUrl"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    return-object v0
.end method

.method public bridge synthetic setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method
