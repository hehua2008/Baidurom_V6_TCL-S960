.class public Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;
.super Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
.source "GoogleTokenResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parseIdToken()Lcom/google/api/client/auth/jsontoken/JsonWebSignature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;->parseIdToken()Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;

    move-result-object v0

    return-object v0
.end method

.method public parseIdToken()Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/api/client/json/GenericJson;->getFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->getIdToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;->parse(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;
    .locals 1
    .parameter "accessToken"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    return-object v0
.end method

.method public bridge synthetic setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;->setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;->setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;
    .locals 1
    .parameter "expiresIn"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    return-object v0
.end method

.method public bridge synthetic setIdToken(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;->setIdToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public setIdToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;
    .locals 1
    .parameter "idToken"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->setIdToken(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    return-object v0
.end method

.method public bridge synthetic setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;
    .locals 1
    .parameter "refreshToken"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    return-object v0
.end method

.method public bridge synthetic setScope(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;->setScope(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setScope(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;->setScope(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public setScope(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;
    .locals 1
    .parameter "scope"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->setScope(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    return-object v0
.end method

.method public bridge synthetic setTokenType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;->setTokenType(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTokenType(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;->setTokenType(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public setTokenType(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;
    .locals 1
    .parameter "tokenType"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->setTokenType(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    return-object v0
.end method

.method public verifyIdToken(Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;)Z
    .locals 1
    .parameter "verifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;->parseIdToken()Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->verify(Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;)Z

    move-result v0

    return v0
.end method
