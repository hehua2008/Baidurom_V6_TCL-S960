.class public Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;
.super Ljava/lang/Object;
.source "GoogleIdTokenVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;
    }
.end annotation


# static fields
.field private static final MAX_AGE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private clientIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final clock:Lcom/google/api/client/util/Clock;

.field private expirationTimeMilliseconds:J

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private publicKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field private final transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-string v0, "\\s*max-age\\s*=\\s*(\\d+)\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->MAX_AGE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V
    .locals 1
    .parameter "transport"
    .parameter "jsonFactory"

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;-><init>(Ljava/util/Set;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V
    .locals 1
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "clientId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    if-nez p3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;-><init>(Ljava/util/Set;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V

    .line 122
    return-void

    .line 120
    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/util/Set;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V
    .locals 1
    .parameter
    .parameter "transport"
    .parameter "jsonFactory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/api/client/http/HttpTransport;",
            "Lcom/google/api/client/json/JsonFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, clientIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/google/api/client/util/Clock;->SYSTEM:Lcom/google/api/client/util/Clock;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;-><init>(Ljava/util/Set;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/util/Clock;)V

    .line 146
    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/util/Clock;)V
    .locals 1
    .parameter
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "clock"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/api/client/http/HttpTransport;",
            "Lcom/google/api/client/json/JsonFactory;",
            "Lcom/google/api/client/util/Clock;",
            ")V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, clientIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->lock:Ljava/util/concurrent/locks/Lock;

    .line 159
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->clientIds:Ljava/util/Set;

    .line 161
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpTransport;

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 162
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 163
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/Clock;

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->clock:Lcom/google/api/client/util/Clock;

    .line 164
    return-void

    .line 159
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final getClientId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->clientIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getClientIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->clientIds:Ljava/util/Set;

    return-object v0
.end method

.method public final getExpirationTimeMilliseconds()J
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->expirationTimeMilliseconds:J

    return-wide v0
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public final getPublicKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Ljava/util/List;

    return-object v0
.end method

.method public loadPublicCerts()Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 326
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Ljava/util/List;

    .line 328
    const-string v12, "X509"

    invoke-static {v12}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    .line 329
    .local v6, factory:Ljava/security/cert/CertificateFactory;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->transport:Lcom/google/api/client/http/HttpTransport;

    invoke-virtual {v12}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v12

    new-instance v13, Lcom/google/api/client/http/GenericUrl;

    const-string v14, "https://www.googleapis.com/oauth2/v1/certs"

    invoke-direct {v13, v14}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/google/api/client/http/HttpRequestFactory;->buildGetRequest(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v4

    .line 332
    .local v4, certsResponse:Lcom/google/api/client/http/HttpResponse;
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/api/client/http/HttpHeaders;->getCacheControl()Ljava/lang/String;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v8, v2

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v1, v2, v7

    .line 333
    .local v1, arg:Ljava/lang/String;
    sget-object v12, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->MAX_AGE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 334
    .local v9, m:Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 335
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->clock:Lcom/google/api/client/util/Clock;

    invoke-interface {v12}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->expirationTimeMilliseconds:J

    .line 340
    .end local v1           #arg:Ljava/lang/String;
    .end local v9           #m:Ljava/util/regex/Matcher;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;

    move-result-object v10

    .line 341
    .local v10, parser:Lcom/google/api/client/json/JsonParser;
    invoke-virtual {v10}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v5

    .line 343
    .local v5, currentToken:Lcom/google/api/client/json/JsonToken;
    if-nez v5, :cond_1

    .line 344
    invoke-virtual {v10}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v5

    .line 346
    :cond_1
    sget-object v12, Lcom/google/api/client/json/JsonToken;->START_OBJECT:Lcom/google/api/client/json/JsonToken;

    if-ne v5, v12, :cond_3

    const/4 v12, 0x1

    :goto_1
    invoke-static {v12}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 348
    :goto_2
    :try_start_1
    invoke-virtual {v10}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v12

    sget-object v13, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    if-eq v12, v13, :cond_4

    .line 349
    invoke-virtual {v10}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    .line 350
    invoke-virtual {v10}, Lcom/google/api/client/json/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, certValue:Ljava/lang/String;
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-static {v3}, Lcom/google/api/client/util/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v6, v12}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 353
    .local v11, x509Cert:Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Ljava/util/List;

    invoke-virtual {v11}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 357
    .end local v3           #certValue:Ljava/lang/String;
    .end local v11           #x509Cert:Ljava/security/cert/X509Certificate;
    :catchall_0
    move-exception v12

    :try_start_2
    invoke-virtual {v10}, Lcom/google/api/client/json/JsonParser;->close()V

    throw v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 361
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #certsResponse:Lcom/google/api/client/http/HttpResponse;
    .end local v5           #currentToken:Lcom/google/api/client/json/JsonToken;
    .end local v6           #factory:Ljava/security/cert/CertificateFactory;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v10           #parser:Lcom/google/api/client/json/JsonParser;
    :catchall_1
    move-exception v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v12

    .line 332
    .restart local v1       #arg:Ljava/lang/String;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #certsResponse:Lcom/google/api/client/http/HttpResponse;
    .restart local v6       #factory:Ljava/security/cert/CertificateFactory;
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    .restart local v9       #m:Ljava/util/regex/Matcher;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 346
    .end local v1           #arg:Ljava/lang/String;
    .end local v9           #m:Ljava/util/regex/Matcher;
    .restart local v5       #currentToken:Lcom/google/api/client/json/JsonToken;
    .restart local v10       #parser:Lcom/google/api/client/json/JsonParser;
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 355
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Ljava/util/List;

    invoke-static {v12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 357
    :try_start_4
    invoke-virtual {v10}, Lcom/google/api/client/json/JsonParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 361
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0
.end method

.method public verify(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;
    .locals 2
    .parameter "idTokenString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-static {v1, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;->parse(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;

    move-result-object v0

    .line 225
    .local v0, idToken:Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;
    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->verify(Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0           #idToken:Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;
    :goto_0
    return-object v0

    .restart local v0       #idToken:Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public verify(Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;)Z
    .locals 1
    .parameter "idToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->clientIds:Ljava/util/Set;

    invoke-virtual {p0, v0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->verify(Ljava/util/Set;Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;)Z

    move-result v0

    return v0
.end method

.method public verify(Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;Ljava/lang/String;)Z
    .locals 1
    .parameter "idToken"
    .parameter "clientId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->verify(Ljava/util/Set;Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;)Z

    move-result v0

    return v0

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public verify(Ljava/util/Set;Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;)Z
    .locals 11
    .parameter
    .parameter "idToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, clientIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 280
    invoke-virtual {p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;->getPayload()Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;

    move-result-object v3

    .line 281
    .local v3, payload:Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;
    const-wide/16 v7, 0x12c

    invoke-virtual {v3, v7, v8}, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->isValidTime(J)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "accounts.google.com"

    invoke-virtual {v3}, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->getIssuer()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v3}, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->getAudience()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;->getIssuee()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v6

    .line 288
    :cond_1
    invoke-virtual {p2}, Lcom/google/api/client/auth/jsontoken/JsonWebSignature;->getHeader()Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;

    move-result-object v1

    .line 289
    .local v1, header:Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;
    invoke-virtual {v1}, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, algorithm:Ljava/lang/String;
    const-string v7, "RS256"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 291
    iget-object v7, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 294
    :try_start_0
    iget-object v7, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Ljava/util/List;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->clock:Lcom/google/api/client/util/Clock;

    invoke-interface {v7}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0x493e0

    add-long/2addr v7, v9

    iget-wide v9, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->expirationTimeMilliseconds:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    .line 296
    :cond_2
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->loadPublicCerts()Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;

    .line 298
    :cond_3
    const-string v7, "SHA256withRSA"

    invoke-static {v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 299
    .local v5, signer:Ljava/security/Signature;
    iget-object v7, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/PublicKey;

    .line 300
    .local v4, publicKey:Ljava/security/PublicKey;
    invoke-virtual {v5, v4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 301
    invoke-virtual {p2}, Lcom/google/api/client/auth/jsontoken/JsonWebSignature;->getSignedContentBytes()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/Signature;->update([B)V

    .line 302
    invoke-virtual {p2}, Lcom/google/api/client/auth/jsontoken/JsonWebSignature;->getSignatureBytes()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_4

    .line 303
    const/4 v6, 0x1

    .line 307
    iget-object v7, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v4           #publicKey:Ljava/security/PublicKey;
    :cond_5
    iget-object v7, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #signer:Ljava/security/Signature;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6
.end method
