.class public Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;
.super Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
.source "AuthorizationCodeRequestUrl.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "authorizationServerEncodedUrl"
    .parameter "clientId"

    .prologue
    .line 60
    const-string v0, "code"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 61
    return-void
.end method


# virtual methods
.method public setClientId(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;
    .locals 1
    .parameter "clientId"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->setClientId(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    return-object v0
.end method

.method public bridge synthetic setClientId(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;->setClientId(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;
    .locals 1
    .parameter "redirectUri"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    return-object v0
.end method

.method public bridge synthetic setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;->setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public setResponseTypes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, responseTypes:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->setResponseTypes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    return-object v0
.end method

.method public varargs setResponseTypes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;
    .locals 1
    .parameter "responseTypes"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->setResponseTypes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    return-object v0
.end method

.method public bridge synthetic setResponseTypes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;->setResponseTypes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setResponseTypes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;->setResponseTypes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, scopes:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    return-object v0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;
    .locals 1
    .parameter "scopes"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    return-object v0
.end method

.method public bridge synthetic setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;->setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;->setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public setState(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;
    .locals 1
    .parameter "state"

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->setState(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    return-object v0
.end method

.method public bridge synthetic setState(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;->setState(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    move-result-object v0

    return-object v0
.end method
