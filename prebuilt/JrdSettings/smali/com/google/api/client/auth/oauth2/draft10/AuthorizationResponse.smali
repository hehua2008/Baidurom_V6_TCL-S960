.class public Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse;
.super Lcom/google/api/client/json/GenericJson;
.source "AuthorizationResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "access_token"
    .end annotation
.end field

.field public code:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public error:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public errorDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "error_description"
    .end annotation
.end field

.field public errorUri:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "error_uri"
    .end annotation
.end field

.field public expiresIn:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "expires_in"
    .end annotation
.end field

.field public scope:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public state:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "redirectUrl"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 174
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, uri:Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/google/api/client/http/UrlEncodedParser;->parse(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/google/api/client/http/UrlEncodedParser;->parse(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    return-void

    .line 178
    .end local v1           #uri:Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public final getErrorCodeIfKnown()Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse;->error:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;->valueOf(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    .line 191
    :catch_0
    move-exception v0

    .line 195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
