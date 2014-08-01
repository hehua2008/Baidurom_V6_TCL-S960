.class public Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl;
.super Lcom/google/api/client/http/GenericUrl;
.source "AuthorizationRequestUrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public clientId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "client_id"
    .end annotation
.end field

.field public redirectUri:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "redirect_uri"
    .end annotation
.end field

.field public responseType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "response_type"
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
    .locals 1
    .parameter "encodedAuthorizationServerUrl"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 94
    const-string v0, "code"

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl;->responseType:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "encodedAuthorizationServerUrl"
    .parameter "clientId"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl;-><init>(Ljava/lang/String;)V

    .line 140
    iput-object p2, p0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl;->clientId:Ljava/lang/String;

    .line 141
    return-void
.end method
