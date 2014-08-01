.class public Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
.super Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
.source "GoogleAuthorizationCodeFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private accessType:Ljava/lang/String;

.field private approvalPrompt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;Ljava/lang/Iterable;)V
    .locals 8
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "clientSecrets"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/http/HttpTransport;",
            "Lcom/google/api/client/json/JsonFactory;",
            "Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p4, scopes:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/api/client/auth/oauth2/BearerToken;->authorizationHeaderAccessMethod()Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    move-result-object v1

    new-instance v4, Lcom/google/api/client/http/GenericUrl;

    const-string v0, "https://accounts.google.com/o/oauth2/token"

    invoke-direct {v4, v0}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/google/api/client/auth/oauth2/ClientParametersAuthentication;

    invoke-virtual {p3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->getDetails()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->getDetails()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Lcom/google/api/client/auth/oauth2/ClientParametersAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->getDetails()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->getClientId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https://accounts.google.com/o/oauth2/auth"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;-><init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpExecuteInterceptor;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    .line 223
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 8
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "clientId"
    .parameter "clientSecret"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/http/HttpTransport;",
            "Lcom/google/api/client/json/JsonFactory;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p5, scopes:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/api/client/auth/oauth2/BearerToken;->authorizationHeaderAccessMethod()Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    move-result-object v1

    new-instance v4, Lcom/google/api/client/http/GenericUrl;

    const-string v0, "https://accounts.google.com/o/oauth2/token"

    invoke-direct {v4, v0}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/google/api/client/auth/oauth2/ClientParametersAuthentication;

    invoke-direct {v5, p3, p4}, Lcom/google/api/client/auth/oauth2/ClientParametersAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "https://accounts.google.com/o/oauth2/auth"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;-><init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpExecuteInterceptor;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    .line 203
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->build()Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;
    .locals 13

    .prologue
    .line 227
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->getMethod()Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->getTokenServerUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->getClientAuthentication()Lcom/google/api/client/http/HttpExecuteInterceptor;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->getClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->getAuthorizationServerEncodedUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->getCredentialStore()Lcom/google/api/client/auth/oauth2/CredentialStore;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->getRequestInitializer()Lcom/google/api/client/http/HttpRequestInitializer;

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->getScopes()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->accessType:Ljava/lang/String;

    iget-object v12, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->approvalPrompt:Ljava/lang/String;

    invoke-direct/range {v0 .. v12}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;-><init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpExecuteInterceptor;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/auth/oauth2/CredentialStore;Lcom/google/api/client/http/HttpRequestInitializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAccessType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->accessType:Ljava/lang/String;

    return-object v0
.end method

.method public final getApprovalPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->approvalPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessType(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 0
    .parameter "accessType"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->accessType:Ljava/lang/String;

    .line 315
    return-object p0
.end method

.method public setApprovalPrompt(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 0
    .parameter "approvalPrompt"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->approvalPrompt:Ljava/lang/String;

    .line 282
    return-object p0
.end method

.method public bridge synthetic setCredentialStore(Lcom/google/api/client/auth/oauth2/CredentialStore;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setCredentialStore(Lcom/google/api/client/auth/oauth2/CredentialStore;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCredentialStore(Lcom/google/api/client/auth/oauth2/CredentialStore;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 1
    .parameter "credentialStore"

    .prologue
    .line 243
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setCredentialStore(Lcom/google/api/client/auth/oauth2/CredentialStore;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    return-object v0
.end method

.method public bridge synthetic setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 1
    .parameter "requestInitializer"

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    return-object v0
.end method

.method public bridge synthetic setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setScopes([Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, scopes:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    return-object v0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 1
    .parameter "scopes"

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    return-object v0
.end method
