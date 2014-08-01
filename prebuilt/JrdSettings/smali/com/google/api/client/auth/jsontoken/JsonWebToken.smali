.class public Lcom/google/api/client/auth/jsontoken/JsonWebToken;
.super Ljava/lang/Object;
.source "JsonWebToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;,
        Lcom/google/api/client/auth/jsontoken/JsonWebToken$Header;
    }
.end annotation


# instance fields
.field private final header:Lcom/google/api/client/auth/jsontoken/JsonWebToken$Header;

.field private final payload:Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;


# direct methods
.method public constructor <init>(Lcom/google/api/client/auth/jsontoken/JsonWebToken$Header;Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;)V
    .locals 1
    .parameter "header"
    .parameter "payload"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Header;

    iput-object v0, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken;->header:Lcom/google/api/client/auth/jsontoken/JsonWebToken$Header;

    .line 46
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;

    iput-object v0, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken;->payload:Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;

    .line 47
    return-void
.end method


# virtual methods
.method public getHeader()Lcom/google/api/client/auth/jsontoken/JsonWebToken$Header;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken;->header:Lcom/google/api/client/auth/jsontoken/JsonWebToken$Header;

    return-object v0
.end method

.method public getPayload()Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken;->payload:Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;

    return-object v0
.end method
