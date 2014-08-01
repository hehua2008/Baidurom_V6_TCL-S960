.class public final Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
.super Lcom/google/api/client/json/GenericJson;
.source "GoogleClientSecrets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Details"
.end annotation


# instance fields
.field private authUri:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "auth_uri"
    .end annotation
.end field

.field private clientId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "client_id"
    .end annotation
.end field

.field private clientSecret:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "client_secret"
    .end annotation
.end field

.field private redirectUris:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "redirect_uris"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tokenUri:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "token_uri"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->authUri:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->redirectUris:Ljava/util/List;

    return-object v0
.end method

.method public getTokenUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->tokenUri:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthUri(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .locals 0
    .parameter "authUri"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->authUri:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .locals 0
    .parameter "clientId"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->clientId:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method public setClientSecret(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .locals 0
    .parameter "clientSecret"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->clientSecret:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public setRedirectUris(Ljava/util/List;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, redirectUris:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->redirectUris:Ljava/util/List;

    .line 138
    return-object p0
.end method

.method public setTokenUri(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .locals 0
    .parameter "tokenUri"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->tokenUri:Ljava/lang/String;

    .line 160
    return-object p0
.end method
