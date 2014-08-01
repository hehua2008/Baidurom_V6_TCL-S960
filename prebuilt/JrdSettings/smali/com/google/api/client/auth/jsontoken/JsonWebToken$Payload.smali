.class public Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;
.super Lcom/google/api/client/json/GenericJson;
.source "JsonWebToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/auth/jsontoken/JsonWebToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Payload"
.end annotation


# instance fields
.field private audience:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "aud"
    .end annotation
.end field

.field private final clock:Lcom/google/api/client/util/Clock;

.field private expirationTimeSeconds:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "exp"
    .end annotation
.end field

.field private issuedAtTimeSeconds:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "iat"
    .end annotation
.end field

.field private issuer:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "iss"
    .end annotation
.end field

.field private jwtId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "jti"
    .end annotation
.end field

.field private notBeforeTimeSeconds:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "nbf"
    .end annotation
.end field

.field private principal:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "prn"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "typ"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/google/api/client/util/Clock;->SYSTEM:Lcom/google/api/client/util/Clock;

    invoke-direct {p0, v0}, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;-><init>(Lcom/google/api/client/util/Clock;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/util/Clock;)V
    .locals 1
    .parameter "clock"

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 157
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/Clock;

    iput-object v0, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->clock:Lcom/google/api/client/util/Clock;

    .line 158
    return-void
.end method


# virtual methods
.method public getAudience()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->audience:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTimeSeconds()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->expirationTimeSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public getIssuedAtTimeSeconds()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->issuedAtTimeSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->issuer:Ljava/lang/String;

    return-object v0
.end method

.method public getJwtId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->jwtId:Ljava/lang/String;

    return-object v0
.end method

.method public getNotBeforeTimeSeconds()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->notBeforeTimeSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public getPrincipal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->principal:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isValidTime(J)Z
    .locals 6
    .parameter "acceptableTimeSkewSeconds"

    .prologue
    const-wide/16 v4, 0x3e8

    .line 307
    iget-object v2, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->clock:Lcom/google/api/client/util/Clock;

    invoke-interface {v2}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 308
    .local v0, now:J
    iget-object v2, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->expirationTimeSeconds:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->expirationTimeSeconds:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, p1

    mul-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->issuedAtTimeSeconds:Ljava/lang/Long;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->issuedAtTimeSeconds:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, p1

    mul-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setAudience(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;
    .locals 0
    .parameter "audience"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->audience:Ljava/lang/String;

    .line 242
    return-object p0
.end method

.method public setExpirationTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;
    .locals 0
    .parameter "expirationTimeSeconds"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->expirationTimeSeconds:Ljava/lang/Long;

    .line 174
    return-object p0
.end method

.method public setIssuedAtTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;
    .locals 0
    .parameter "issuedAtTimeSeconds"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->issuedAtTimeSeconds:Ljava/lang/Long;

    .line 208
    return-object p0
.end method

.method public setIssuer(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;
    .locals 0
    .parameter "issuer"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->issuer:Ljava/lang/String;

    .line 225
    return-object p0
.end method

.method public setJwtId(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;
    .locals 0
    .parameter "jwtId"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->jwtId:Ljava/lang/String;

    .line 273
    return-object p0
.end method

.method public setNotBeforeTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;
    .locals 0
    .parameter "notBeforeTimeSeconds"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->notBeforeTimeSeconds:Ljava/lang/Long;

    .line 191
    return-object p0
.end method

.method public setPrincipal(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;
    .locals 0
    .parameter "principal"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->principal:Ljava/lang/String;

    .line 257
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;
    .locals 0
    .parameter "type"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->type:Ljava/lang/String;

    .line 290
    return-object p0
.end method
