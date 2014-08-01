.class public Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;
.super Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;
.source "GoogleIdToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Payload"
.end annotation


# instance fields
.field private accessTokenHash:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "token_hash"
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "email"
    .end annotation
.end field

.field private emailVerified:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "verified_email"
    .end annotation
.end field

.field private hostedDomain:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "hd"
    .end annotation
.end field

.field private issuee:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "cid"
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/google/api/client/util/Clock;->SYSTEM:Lcom/google/api/client/util/Clock;

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;-><init>(Lcom/google/api/client/util/Clock;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/util/Clock;)V
    .locals 0
    .parameter "clock"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;-><init>(Lcom/google/api/client/util/Clock;)V

    .line 124
    return-void
.end method


# virtual methods
.method public getAccessTokenHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;->accessTokenHash:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailVerified()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;->emailVerified:Z

    return v0
.end method

.method public getHostedDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;->hostedDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getIssuee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;->issuee:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessTokenHash(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;
    .locals 0
    .parameter "accessTokenHash"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;->accessTokenHash:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;
    .locals 0
    .parameter "email"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;->email:Ljava/lang/String;

    .line 200
    return-object p0
.end method

.method public setEmailVerified(Z)Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;
    .locals 0
    .parameter "emailVerified"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;->emailVerified:Z

    .line 227
    return-object p0
.end method

.method public setHostedDomain(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;
    .locals 0
    .parameter "hostedDomain"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;->hostedDomain:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public setIssuee(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;
    .locals 0
    .parameter "issuee"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;->issuee:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;
    .locals 0
    .parameter "userId"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;->userId:Ljava/lang/String;

    .line 134
    return-object p0
.end method
