.class public final Lcom/google/api/client/auth/oauth/OAuthHmacSigner;
.super Ljava/lang/Object;
.source "OAuthHmacSigner.java"

# interfaces
.implements Lcom/google/api/client/auth/oauth/OAuthSigner;


# instance fields
.field public clientSharedSecret:Ljava/lang/String;

.field public tokenSharedSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "signatureBaseString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v2, keyBuf:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/google/api/client/auth/oauth/OAuthHmacSigner;->clientSharedSecret:Ljava/lang/String;

    .line 48
    .local v0, clientSharedSecret:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 49
    invoke-static {v0}, Lcom/google/api/client/auth/oauth/OAuthParameters;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :cond_0
    const/16 v6, 0x26

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    iget-object v5, p0, Lcom/google/api/client/auth/oauth/OAuthHmacSigner;->tokenSharedSecret:Ljava/lang/String;

    .line 53
    .local v5, tokenSharedSecret:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 54
    invoke-static {v5}, Lcom/google/api/client/auth/oauth/OAuthParameters;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, key:Ljava/lang/String;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v1}, Lcom/google/api/client/util/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "HmacSHA1"

    invoke-direct {v4, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 59
    .local v4, secretKey:Ljavax/crypto/SecretKey;
    const-string v6, "HmacSHA1"

    invoke-static {v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 60
    .local v3, mac:Ljavax/crypto/Mac;
    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 61
    invoke-static {p1}, Lcom/google/api/client/util/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/api/client/util/Base64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public getSignatureMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "HMAC-SHA1"

    return-object v0
.end method
