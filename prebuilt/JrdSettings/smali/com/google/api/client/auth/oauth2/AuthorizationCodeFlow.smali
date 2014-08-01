.class public Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;
.super Ljava/lang/Object;
.source "AuthorizationCodeFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    }
.end annotation


# instance fields
.field private final authorizationServerEncodedUrl:Ljava/lang/String;

.field private final clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

.field private final clientId:Ljava/lang/String;

.field private final clock:Lcom/google/api/client/util/Clock;

.field private final credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private final method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

.field private final requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

.field private scopes:Ljava/lang/String;

.field private final tokenServerEncodedUrl:Ljava/lang/String;

.field private final transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpExecuteInterceptor;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/auth/oauth2/CredentialStore;Lcom/google/api/client/http/HttpRequestInitializer;Ljava/lang/String;)V
    .locals 12
    .parameter "method"
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "tokenServerUrl"
    .parameter "clientAuthentication"
    .parameter "clientId"
    .parameter "authorizationServerEncodedUrl"
    .parameter "credentialStore"
    .parameter "requestInitializer"
    .parameter "scopes"

    .prologue
    .line 117
    sget-object v11, Lcom/google/api/client/util/Clock;->SYSTEM:Lcom/google/api/client/util/Clock;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;-><init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpExecuteInterceptor;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/auth/oauth2/CredentialStore;Lcom/google/api/client/http/HttpRequestInitializer;Ljava/lang/String;Lcom/google/api/client/util/Clock;)V

    .line 119
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpExecuteInterceptor;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/auth/oauth2/CredentialStore;Lcom/google/api/client/http/HttpRequestInitializer;Ljava/lang/String;Lcom/google/api/client/util/Clock;)V
    .locals 1
    .parameter "method"
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "tokenServerUrl"
    .parameter "clientAuthentication"
    .parameter "clientId"
    .parameter "authorizationServerEncodedUrl"
    .parameter "credentialStore"
    .parameter "requestInitializer"
    .parameter "scopes"
    .parameter "clock"

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    .line 149
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpTransport;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 150
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 151
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v0}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->tokenServerEncodedUrl:Ljava/lang/String;

    .line 152
    iput-object p5, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 153
    invoke-static {p6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clientId:Ljava/lang/String;

    .line 154
    invoke-static {p7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->authorizationServerEncodedUrl:Ljava/lang/String;

    .line 155
    iput-object p9, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    .line 156
    iput-object p8, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;

    .line 157
    iput-object p10, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->scopes:Ljava/lang/String;

    .line 158
    invoke-static {p11}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/Clock;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clock:Lcom/google/api/client/util/Clock;

    .line 159
    return-void
.end method

.method private newCredential(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 3
    .parameter "userId"

    .prologue
    .line 262
    new-instance v1, Lcom/google/api/client/auth/oauth2/Credential$Builder;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    invoke-direct {v1, v2}, Lcom/google/api/client/auth/oauth2/Credential$Builder;-><init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;)V

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->transport:Lcom/google/api/client/http/HttpTransport;

    invoke-virtual {v1, v2}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-virtual {v1, v2}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->tokenServerEncodedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setTokenServerEncodedUrl(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    invoke-virtual {v1, v2}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    invoke-virtual {v1, v2}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clock:Lcom/google/api/client/util/Clock;

    invoke-virtual {v1, v2}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setClock(Lcom/google/api/client/util/Clock;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    move-result-object v0

    .line 268
    .local v0, builder:Lcom/google/api/client/auth/oauth2/Credential$Builder;
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;

    if-eqz v1, :cond_0

    .line 269
    new-instance v1, Lcom/google/api/client/auth/oauth2/CredentialStoreRefreshListener;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;

    invoke-direct {v1, p1, v2}, Lcom/google/api/client/auth/oauth2/CredentialStoreRefreshListener;-><init>(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/CredentialStore;)V

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->addRefreshListener(Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    .line 271
    :cond_0
    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->build()Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createAndStoreCredential(Lcom/google/api/client/auth/oauth2/TokenResponse;Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 2
    .parameter "response"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-direct {p0, p2}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->newCredential(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/api/client/auth/oauth2/Credential;->setFromTokenResponse(Lcom/google/api/client/auth/oauth2/TokenResponse;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    .line 227
    .local v0, credential:Lcom/google/api/client/auth/oauth2/Credential;
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;

    invoke-interface {v1, p2, v0}, Lcom/google/api/client/auth/oauth2/CredentialStore;->store(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential;)V

    .line 230
    :cond_0
    return-object v0
.end method

.method public final getAuthorizationServerEncodedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->authorizationServerEncodedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientAuthentication()Lcom/google/api/client/http/HttpExecuteInterceptor;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    return-object v0
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public final getClock()Lcom/google/api/client/util/Clock;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clock:Lcom/google/api/client/util/Clock;

    return-object v0
.end method

.method public final getCredentialStore()Lcom/google/api/client/auth/oauth2/CredentialStore;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;

    return-object v0
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public final getMethod()Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    return-object v0
.end method

.method public final getRequestInitializer()Lcom/google/api/client/http/HttpRequestInitializer;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    return-object v0
.end method

.method public final getScopes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->scopes:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokenServerEncodedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->tokenServerEncodedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public loadCredential(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 3
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 253
    :cond_0
    :goto_0
    return-object v0

    .line 249
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->newCredential(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    .line 250
    .local v0, credential:Lcom/google/api/client/auth/oauth2/Credential;
    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;

    invoke-interface {v2, p1, v0}, Lcom/google/api/client/auth/oauth2/CredentialStore;->load(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 251
    goto :goto_0
.end method

.method public newAuthorizationUrl()Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;
    .locals 4

    .prologue
    .line 182
    new-instance v0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->authorizationServerEncodedUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clientId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->scopes:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;->setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public newTokenRequest(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;
    .locals 5
    .parameter "authorizationCode"

    .prologue
    .line 206
    new-instance v0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->transport:Lcom/google/api/client/http/HttpTransport;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    new-instance v3, Lcom/google/api/client/http/GenericUrl;

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->tokenServerEncodedUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->scopes:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method
