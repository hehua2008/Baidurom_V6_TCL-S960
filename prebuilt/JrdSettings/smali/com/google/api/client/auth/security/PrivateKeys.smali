.class public Lcom/google/api/client/auth/security/PrivateKeys;
.super Ljava/lang/Object;
.source "PrivateKeys.java"


# static fields
.field private static final BEGIN:Ljava/lang/String; = "-----BEGIN PRIVATE KEY-----"

.field private static final END:Ljava/lang/String; = "-----END PRIVATE KEY-----"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method public static loadFromKeyStore(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .parameter "keyStream"
    .parameter "storePass"
    .parameter "alias"
    .parameter "keyPass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/api/client/auth/security/PrivateKeys;->loadFromKeyStore(Ljava/security/KeyStore;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public static loadFromKeyStore(Ljava/security/KeyStore;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .parameter "keyStore"
    .parameter "keyStream"
    .parameter "storePass"
    .parameter "alias"
    .parameter "keyPass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 75
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static loadFromP12File(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2
    .parameter "p12File"
    .parameter "storePass"
    .parameter "alias"
    .parameter "keyPass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const-string v0, "PKCS12"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/api/client/auth/security/PrivateKeys;->loadFromKeyStore(Ljava/security/KeyStore;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public static loadFromPk8File(Ljava/io/File;)Ljava/security/PrivateKey;
    .locals 7
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v2, v5, [B

    .line 84
    .local v2, privKeyBytes:[B
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 86
    .local v1, inputStream:Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V

    .line 90
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 91
    .local v4, str:Ljava/lang/String;
    const-string v5, "-----BEGIN PRIVATE KEY-----"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "-----END PRIVATE KEY-----"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    const-string v5, "-----BEGIN PRIVATE KEY-----"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "-----END PRIVATE KEY-----"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 94
    :cond_0
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 95
    .local v0, fac:Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {v4}, Lcom/google/api/client/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 96
    .local v3, privKeySpec:Ljava/security/spec/EncodedKeySpec;
    invoke-virtual {v0, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v5

    return-object v5

    .line 88
    .end local v0           #fac:Ljava/security/KeyFactory;
    .end local v3           #privKeySpec:Ljava/security/spec/EncodedKeySpec;
    .end local v4           #str:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V

    throw v5
.end method
