.class public Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
.super Lcom/google/api/client/http/GenericUrl;
.source "AuthorizationRequestUrl.java"


# instance fields
.field private clientId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "client_id"
    .end annotation
.end field

.field private redirectUri:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "redirect_uri"
    .end annotation
.end field

.field private responseTypes:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "response_type"
    .end annotation
.end field

.field private scopes:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "scope"
    .end annotation
.end field

.field private state:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 1
    .parameter "authorizationServerEncodedUrl"
    .parameter "clientId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p3, responseTypes:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/google/api/client/http/GenericUrl;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 101
    invoke-virtual {p0, p2}, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->setClientId(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;

    .line 102
    invoke-virtual {p0, p3}, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->setResponseTypes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;

    .line 103
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRedirectUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->redirectUri:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseTypes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->responseTypes:Ljava/lang/String;

    return-object v0
.end method

.method public final getScopes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->scopes:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .locals 1
    .parameter "clientId"

    .prologue
    .line 233
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->clientId:Ljava/lang/String;

    .line 234
    return-object p0
.end method

.method public setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .locals 0
    .parameter "redirectUri"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->redirectUri:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public setResponseTypes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, responseTypes:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->responseTypes:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public varargs setResponseTypes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .locals 1
    .parameter "responseTypes"

    .prologue
    .line 128
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->setResponseTypes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, scopes:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->scopes:Ljava/lang/String;

    .line 216
    return-object p0

    .line 215
    :cond_0
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .locals 1
    .parameter "scopes"

    .prologue
    .line 198
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public setState(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .locals 0
    .parameter "state"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->state:Ljava/lang/String;

    .line 260
    return-object p0
.end method
