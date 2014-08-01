.class public Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest$GoogleAssertionGrant;
.super Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$AssertionGrant;
.source "GoogleAccessTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GoogleAssertionGrant"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$AssertionGrant;-><init>()V

    .line 179
    invoke-static {p0}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest;->init(Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "assertionType"
    .parameter "assertion"

    .prologue
    .line 191
    const-string v3, "https://accounts.google.com/o/oauth2/token"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$AssertionGrant;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {p0}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest;->init(Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;)V

    .line 193
    return-void
.end method
