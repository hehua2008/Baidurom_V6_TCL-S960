.class public Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;
.super Lcom/google/api/client/auth/jsontoken/JsonWebSignature;
.source "GoogleIdToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;[B[B)V
    .locals 0
    .parameter "header"
    .parameter "payload"
    .parameter "signatureBytes"
    .parameter "signedContentBytes"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/api/client/auth/jsontoken/JsonWebSignature;-><init>(Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;[B[B)V

    .line 69
    return-void
.end method

.method public static parse(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;
    .locals 6
    .parameter "jsonFactory"
    .parameter "idTokenString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0}, Lcom/google/api/client/auth/jsontoken/JsonWebSignature;->parser(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Parser;

    move-result-object v1

    const-class v2, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;

    invoke-virtual {v1, v2}, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Parser;->setPayloadClass(Ljava/lang/Class;)Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Parser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Parser;->parse(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebSignature;

    move-result-object v0

    .line 56
    .local v0, jws:Lcom/google/api/client/auth/jsontoken/JsonWebSignature;
    new-instance v2, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;

    invoke-virtual {v0}, Lcom/google/api/client/auth/jsontoken/JsonWebSignature;->getHeader()Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/api/client/auth/jsontoken/JsonWebToken;->getPayload()Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;

    invoke-virtual {v0}, Lcom/google/api/client/auth/jsontoken/JsonWebSignature;->getSignatureBytes()[B

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/api/client/auth/jsontoken/JsonWebSignature;->getSignedContentBytes()[B

    move-result-object v5

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;-><init>(Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;[B[B)V

    return-object v2
.end method


# virtual methods
.method public bridge synthetic getPayload()Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;->getPayload()Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/google/api/client/auth/jsontoken/JsonWebToken;->getPayload()Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;

    return-object v0
.end method

.method public verify(Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;)Z
    .locals 1
    .parameter "verifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p1, p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->verify(Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;)Z

    move-result v0

    return v0
.end method
