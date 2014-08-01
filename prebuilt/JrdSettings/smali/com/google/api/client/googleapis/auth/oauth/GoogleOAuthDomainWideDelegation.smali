.class public final Lcom/google/api/client/googleapis/auth/oauth/GoogleOAuthDomainWideDelegation;
.super Ljava/lang/Object;
.source "GoogleOAuthDomainWideDelegation.java"

# interfaces
.implements Lcom/google/api/client/http/HttpExecuteInterceptor;
.implements Lcom/google/api/client/http/HttpRequestInitializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/oauth/GoogleOAuthDomainWideDelegation$Url;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public parameters:Lcom/google/api/client/auth/oauth/OAuthParameters;

.field public requestorId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public initialize(Lcom/google/api/client/http/HttpRequest;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 88
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/HttpRequest;->setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;

    .line 89
    return-void
.end method

.method public intercept(Lcom/google/api/client/http/HttpRequest;)V
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v0

    const-string v1, "xoauth_requestor_id"

    iget-object v2, p0, Lcom/google/api/client/googleapis/auth/oauth/GoogleOAuthDomainWideDelegation;->requestorId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth/GoogleOAuthDomainWideDelegation;->parameters:Lcom/google/api/client/auth/oauth/OAuthParameters;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth/GoogleOAuthDomainWideDelegation;->parameters:Lcom/google/api/client/auth/oauth/OAuthParameters;

    invoke-virtual {v0, p1}, Lcom/google/api/client/auth/oauth/OAuthParameters;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 96
    :cond_0
    return-void
.end method
