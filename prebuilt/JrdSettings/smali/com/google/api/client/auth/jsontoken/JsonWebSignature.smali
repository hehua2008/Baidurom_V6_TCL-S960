.class public Lcom/google/api/client/auth/jsontoken/JsonWebSignature;
.super Lcom/google/api/client/auth/jsontoken/JsonWebToken;
.source "JsonWebSignature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Parser;,
        Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;
    }
.end annotation


# instance fields
.field private final signatureBytes:[B

.field private final signedContentBytes:[B


# direct methods
.method public constructor <init>(Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;[B[B)V
    .locals 0
    .parameter "header"
    .parameter "payload"
    .parameter "signatureBytes"
    .parameter "signedContentBytes"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/auth/jsontoken/JsonWebToken;-><init>(Lcom/google/api/client/auth/jsontoken/JsonWebToken$Header;Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;)V

    .line 65
    iput-object p3, p0, Lcom/google/api/client/auth/jsontoken/JsonWebSignature;->signatureBytes:[B

    .line 66
    iput-object p4, p0, Lcom/google/api/client/auth/jsontoken/JsonWebSignature;->signedContentBytes:[B

    .line 67
    return-void
.end method

.method public static parse(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebSignature;
    .locals 1
    .parameter "jsonFactory"
    .parameter "tokenString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-static {p0}, Lcom/google/api/client/auth/jsontoken/JsonWebSignature;->parser(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Parser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Parser;->parse(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebSignature;

    move-result-object v0

    return-object v0
.end method

.method public static parser(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Parser;
    .locals 1
    .parameter "jsonFactory"

    .prologue
    .line 241
    new-instance v0, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Parser;

    invoke-direct {v0, p0}, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Parser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    return-object v0
.end method


# virtual methods
.method public getHeader()Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Lcom/google/api/client/auth/jsontoken/JsonWebToken;->getHeader()Lcom/google/api/client/auth/jsontoken/JsonWebToken$Header;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;

    return-object v0
.end method

.method public bridge synthetic getHeader()Lcom/google/api/client/auth/jsontoken/JsonWebToken$Header;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/api/client/auth/jsontoken/JsonWebSignature;->getHeader()Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;

    move-result-object v0

    return-object v0
.end method

.method public final getSignatureBytes()[B
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/api/client/auth/jsontoken/JsonWebSignature;->signatureBytes:[B

    return-object v0
.end method

.method public final getSignedContentBytes()[B
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/api/client/auth/jsontoken/JsonWebSignature;->signedContentBytes:[B

    return-object v0
.end method
