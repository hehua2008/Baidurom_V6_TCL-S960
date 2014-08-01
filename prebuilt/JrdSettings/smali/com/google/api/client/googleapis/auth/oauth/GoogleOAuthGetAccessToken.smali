.class public final Lcom/google/api/client/googleapis/auth/oauth/GoogleOAuthGetAccessToken;
.super Lcom/google/api/client/auth/oauth/OAuthGetAccessToken;
.source "GoogleOAuthGetAccessToken.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "https://www.google.com/accounts/OAuthGetAccessToken"

    invoke-direct {p0, v0}, Lcom/google/api/client/auth/oauth/OAuthGetAccessToken;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static revokeAccessToken(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/auth/oauth/OAuthParameters;)V
    .locals 4
    .parameter "transport"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v1

    new-instance v2, Lcom/google/api/client/http/GenericUrl;

    const-string v3, "https://www.google.com/accounts/AuthSubRevokeToken"

    invoke-direct {v2, v3}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/HttpRequestFactory;->buildGetRequest(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 61
    .local v0, request:Lcom/google/api/client/http/HttpRequest;
    invoke-virtual {p1, v0}, Lcom/google/api/client/auth/oauth/OAuthParameters;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 62
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 63
    return-void
.end method
