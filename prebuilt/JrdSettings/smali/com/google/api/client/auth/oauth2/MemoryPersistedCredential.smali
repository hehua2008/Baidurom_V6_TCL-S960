.class Lcom/google/api/client/auth/oauth2/MemoryPersistedCredential;
.super Ljava/lang/Object;
.source "MemoryPersistedCredential.java"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private expirationTimeMillis:Ljava/lang/Long;

.field private refreshToken:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method load(Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 1
    .parameter "credential"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/MemoryPersistedCredential;->accessToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/api/client/auth/oauth2/Credential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 56
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/MemoryPersistedCredential;->refreshToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/api/client/auth/oauth2/Credential;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 57
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/MemoryPersistedCredential;->expirationTimeMillis:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/api/client/auth/oauth2/Credential;->setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 58
    return-void
.end method

.method store(Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 1
    .parameter "credential"

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/Credential;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/MemoryPersistedCredential;->accessToken:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/Credential;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/MemoryPersistedCredential;->refreshToken:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/Credential;->getExpirationTimeMilliseconds()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/MemoryPersistedCredential;->expirationTimeMillis:Ljava/lang/Long;

    .line 44
    return-void
.end method
