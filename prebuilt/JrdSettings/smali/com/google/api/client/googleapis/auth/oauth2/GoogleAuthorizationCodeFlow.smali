.class public Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;
.super Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;
.source "GoogleAuthorizationCodeFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    }
.end annotation


# instance fields
.field private final accessType:Ljava/lang/String;

.field private final approvalPrompt:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpExecuteInterceptor;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/auth/oauth2/CredentialStore;Lcom/google/api/client/http/HttpRequestInitializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
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
    .parameter "accessType"
    .parameter "approvalPrompt"

    .prologue
    .line 112
    invoke-direct/range {p0 .. p10}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;-><init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpExecuteInterceptor;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/auth/oauth2/CredentialStore;Lcom/google/api/client/http/HttpRequestInitializer;Ljava/lang/String;)V

    .line 122
    iput-object p11, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;->accessType:Ljava/lang/String;

    .line 123
    iput-object p12, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;->approvalPrompt:Ljava/lang/String;

    .line 124
    return-void
.end method


# virtual methods
.method public final getAccessType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;->accessType:Ljava/lang/String;

    return-object v0
.end method

.method public final getApprovalPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;->approvalPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic newAuthorizationUrl()Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;->newAuthorizationUrl()Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public newAuthorizationUrl()Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeRequestUrl;
    .locals 4

    .prologue
    .line 143
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeRequestUrl;

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->getClientId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->getScopes()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeRequestUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)V

    iget-object v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;->accessType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeRequestUrl;->setAccessType(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeRequestUrl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;->approvalPrompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeRequestUrl;->setApprovalPrompt(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newTokenRequest(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;->newTokenRequest(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public newTokenRequest(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;
    .locals 7
    .parameter "authorizationCode"

    .prologue
    .line 130
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    const-string v6, ""

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->getClientAuthentication()Lcom/google/api/client/http/HttpExecuteInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->getRequestInitializer()Lcom/google/api/client/http/HttpRequestInitializer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->getScopes()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;->setScopes([Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    move-result-object v0

    return-object v0
.end method
