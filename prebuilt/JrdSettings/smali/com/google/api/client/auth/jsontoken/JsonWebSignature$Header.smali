.class public Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;
.super Lcom/google/api/client/auth/jsontoken/JsonWebToken$Header;
.source "JsonWebSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/auth/jsontoken/JsonWebSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field private algorithm:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "alg"
    .end annotation
.end field

.field private jwkUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "jku"
    .end annotation
.end field

.field private keyId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "kid"
    .end annotation
.end field

.field private x509Thumbprint:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x5t"
    .end annotation
.end field

.field private x509Url:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x5u"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Header;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getJwkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;->jwkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getX509Thumbprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;->x509Thumbprint:Ljava/lang/String;

    return-object v0
.end method

.method public getX509Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;->x509Url:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;
    .locals 0
    .parameter "algorithm"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;->algorithm:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public setJwkUrl(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;
    .locals 0
    .parameter "jwkUrl"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;->jwkUrl:Ljava/lang/String;

    .line 153
    return-object p0
.end method

.method public setKeyId(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;
    .locals 0
    .parameter "keyId"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;->keyId:Ljava/lang/String;

    .line 170
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;
    .locals 0
    .parameter "type"

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Header;->setType(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebToken$Header;

    .line 117
    return-object p0
.end method

.method public bridge synthetic setType(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebToken$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;->setType(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;

    move-result-object v0

    return-object v0
.end method

.method public setX509Thumbprint(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;
    .locals 0
    .parameter "x509Thumbprint"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;->x509Thumbprint:Ljava/lang/String;

    .line 208
    return-object p0
.end method

.method public setX509Url(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;
    .locals 0
    .parameter "x509Url"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;->x509Url:Ljava/lang/String;

    .line 189
    return-object p0
.end method
