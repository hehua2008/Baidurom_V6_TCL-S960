.class public final Lcom/google/api/client/auth/oauth/OAuthRsaSigner;
.super Ljava/lang/Object;
.source "OAuthRsaSigner.java"

# interfaces
.implements Lcom/google/api/client/auth/oauth/OAuthSigner;


# instance fields
.field public privateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "signatureBaseString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 45
    const-string v1, "SHA1withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 46
    .local v0, signer:Ljava/security/Signature;
    iget-object v1, p0, Lcom/google/api/client/auth/oauth/OAuthRsaSigner;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 47
    invoke-static {p1}, Lcom/google/api/client/util/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 48
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/api/client/util/Base64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSignatureMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "RSA-SHA1"

    return-object v0
.end method
