.class public Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest$GoogleRefreshTokenGrant;
.super Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;
.source "GoogleAccessTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GoogleRefreshTokenGrant"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;-><init>()V

    .line 132
    invoke-static {p0}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest;->init(Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "clientId"
    .parameter "clientSecret"
    .parameter "refreshToken"

    .prologue
    .line 144
    const-string v3, "https://accounts.google.com/o/oauth2/token"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {p0}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest;->init(Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;)V

    .line 146
    return-void
.end method
