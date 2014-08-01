.class public Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;
.super Lcom/google/api/client/http/GenericUrl;
.source "AuthorizationCodeResponseUrl.java"


# instance fields
.field private code:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private error:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private errorDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "error_description"
    .end annotation
.end field

.field private errorUri:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "error_uri"
    .end annotation
.end field

.field private state:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "encodedResponseUrl"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0, p1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;->code:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;->error:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    :goto_1
    if-eq v0, v3, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 103
    return-void

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;->errorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;->errorUri:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;
    .locals 0
    .parameter "code"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;->code:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public setError(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;
    .locals 0
    .parameter "error"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;->error:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public setErrorDescription(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;
    .locals 0
    .parameter "errorDescription"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;->errorDescription:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public setErrorUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;
    .locals 0
    .parameter "errorUri"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;->errorUri:Ljava/lang/String;

    .line 218
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;
    .locals 0
    .parameter "state"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;->state:Ljava/lang/String;

    .line 144
    return-object p0
.end method
