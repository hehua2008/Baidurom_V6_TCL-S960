.class public Lcom/google/api/client/auth/oauth2/Credential;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Lcom/google/api/client/http/HttpExecuteInterceptor;
.implements Lcom/google/api/client/http/HttpRequestInitializer;
.implements Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/oauth2/Credential$Builder;,
        Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;
    }
.end annotation


# static fields
.field static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private final clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

.field private final clock:Lcom/google/api/client/util/Clock;

.field private expirationTimeMilliseconds:Ljava/lang/Long;

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

.field private final refreshListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;",
            ">;"
        }
    .end annotation
.end field

.field private refreshToken:Ljava/lang/String;

.field private final requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

.field private final tokenServerEncodedUrl:Ljava/lang/String;

.field private final transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/google/api/client/auth/oauth2/Credential;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/auth/oauth2/Credential;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;)V
    .locals 8
    .parameter "method"

    .prologue
    const/4 v2, 0x0

    .line 176
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/auth/oauth2/Credential;-><init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Lcom/google/api/client/http/HttpExecuteInterceptor;Lcom/google/api/client/http/HttpRequestInitializer;Ljava/util/List;)V

    .line 177
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Lcom/google/api/client/http/HttpExecuteInterceptor;Lcom/google/api/client/http/HttpRequestInitializer;Ljava/util/List;)V
    .locals 9
    .parameter "method"
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "tokenServerEncodedUrl"
    .parameter "clientAuthentication"
    .parameter "requestInitializer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;",
            "Lcom/google/api/client/http/HttpTransport;",
            "Lcom/google/api/client/json/JsonFactory;",
            "Ljava/lang/String;",
            "Lcom/google/api/client/http/HttpExecuteInterceptor;",
            "Lcom/google/api/client/http/HttpRequestInitializer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p7, refreshListeners:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;>;"
    sget-object v8, Lcom/google/api/client/util/Clock;->SYSTEM:Lcom/google/api/client/util/Clock;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/api/client/auth/oauth2/Credential;-><init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Lcom/google/api/client/http/HttpExecuteInterceptor;Lcom/google/api/client/http/HttpRequestInitializer;Ljava/util/List;Lcom/google/api/client/util/Clock;)V

    .line 202
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Lcom/google/api/client/http/HttpExecuteInterceptor;Lcom/google/api/client/http/HttpRequestInitializer;Ljava/util/List;Lcom/google/api/client/util/Clock;)V
    .locals 1
    .parameter "method"
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "tokenServerEncodedUrl"
    .parameter "clientAuthentication"
    .parameter "requestInitializer"
    .parameter
    .parameter "clock"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;",
            "Lcom/google/api/client/http/HttpTransport;",
            "Lcom/google/api/client/json/JsonFactory;",
            "Ljava/lang/String;",
            "Lcom/google/api/client/http/HttpExecuteInterceptor;",
            "Lcom/google/api/client/http/HttpRequestInitializer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;",
            ">;",
            "Lcom/google/api/client/util/Clock;",
            ")V"
        }
    .end annotation

    .prologue
    .line 227
    .local p7, refreshListeners:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    .line 228
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    .line 229
    iput-object p2, p0, Lcom/google/api/client/auth/oauth2/Credential;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 230
    iput-object p3, p0, Lcom/google/api/client/auth/oauth2/Credential;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 231
    iput-object p4, p0, Lcom/google/api/client/auth/oauth2/Credential;->tokenServerEncodedUrl:Ljava/lang/String;

    .line 232
    iput-object p5, p0, Lcom/google/api/client/auth/oauth2/Credential;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 233
    iput-object p6, p0, Lcom/google/api/client/auth/oauth2/Credential;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    .line 234
    if-nez p7, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshListeners:Ljava/util/List;

    .line 237
    invoke-static {p8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/Clock;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->clock:Lcom/google/api/client/util/Clock;

    .line 238
    return-void

    .line 234
    :cond_0
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected executeRefreshToken()Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 588
    const/4 v0, 0x0

    .line 590
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->transport:Lcom/google/api/client/http/HttpTransport;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/Credential;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    new-instance v3, Lcom/google/api/client/http/GenericUrl;

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/Credential;->tokenServerEncodedUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshToken:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/TokenRequest;->execute()Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->accessToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getClientAuthentication()Lcom/google/api/client/http/HttpExecuteInterceptor;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    return-object v0
.end method

.method public final getClock()Lcom/google/api/client/util/Clock;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->clock:Lcom/google/api/client/util/Clock;

    return-object v0
.end method

.method public final getExpirationTimeMilliseconds()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->expirationTimeMilliseconds:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getExpiresInSeconds()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->expirationTimeMilliseconds:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 447
    const/4 v0, 0x0

    .line 451
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v0

    .line 449
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->expirationTimeMilliseconds:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/Credential;->clock:Lcom/google/api/client/util/Clock;

    invoke-interface {v2}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 451
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public final getMethod()Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    return-object v0
.end method

.method public final getRefreshListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshListeners:Ljava/util/List;

    return-object v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getRequestInitializer()Lcom/google/api/client/http/HttpRequestInitializer;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    return-object v0
.end method

.method public final getTokenServerEncodedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->tokenServerEncodedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z
    .locals 5
    .parameter "request"
    .parameter "response"
    .parameter "supportsRetry"

    .prologue
    const/4 v2, 0x0

    .line 286
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v1

    const/16 v3, 0x191

    if-ne v1, v3, :cond_2

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :try_start_1
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->accessToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/Credential;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    invoke-interface {v3, p1}, Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;->getAccessTokenFromRequest(Lcom/google/api/client/http/HttpRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/Credential;->refreshToken()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 294
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 300
    :goto_1
    return v1

    :cond_1
    move v1, v2

    .line 291
    goto :goto_0

    .line 294
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, exception:Ljava/io/IOException;
    sget-object v1, Lcom/google/api/client/auth/oauth2/Credential;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "unable to refresh token"

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0           #exception:Ljava/io/IOException;
    :cond_2
    move v1, v2

    .line 300
    goto :goto_1
.end method

.method public initialize(Lcom/google/api/client/http/HttpRequest;)V
    .locals 0
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/HttpRequest;->setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;

    .line 305
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/HttpRequest;->setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)Lcom/google/api/client/http/HttpRequest;

    .line 306
    return-void
.end method

.method public intercept(Lcom/google/api/client/http/HttpRequest;)V
    .locals 5
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 257
    :try_start_0
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/Credential;->getExpiresInSeconds()Ljava/lang/Long;

    move-result-object v0

    .line 259
    .local v0, expiresIn:Ljava/lang/Long;
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->accessToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3c

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/Credential;->refreshToken()Z

    .line 261
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->accessToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 270
    :goto_0
    return-void

    .line 266
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/Credential;->accessToken:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;->intercept(Lcom/google/api/client/http/HttpRequest;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0           #expiresIn:Ljava/lang/Long;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final refreshToken()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 505
    iget-object v7, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 508
    :try_start_0
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/Credential;->executeRefreshToken()Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-result-object v4

    .line 509
    .local v4, tokenResponse:Lcom/google/api/client/auth/oauth2/TokenResponse;
    if-eqz v4, :cond_4

    .line 510
    invoke-virtual {p0, v4}, Lcom/google/api/client/auth/oauth2/Credential;->setFromTokenResponse(Lcom/google/api/client/auth/oauth2/TokenResponse;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 511
    iget-object v7, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;

    .line 512
    .local v2, refreshListener:Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;
    invoke-interface {v2, p0, v4}, Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;->onTokenResponse(Lcom/google/api/client/auth/oauth2/Credential;Lcom/google/api/client/auth/oauth2/TokenResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/api/client/auth/oauth2/TokenResponseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 516
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #refreshListener:Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;
    .end local v4           #tokenResponse:Lcom/google/api/client/auth/oauth2/TokenResponse;
    :catch_0
    move-exception v0

    .line 517
    .local v0, e:Lcom/google/api/client/auth/oauth2/TokenResponseException;
    const/16 v7, 0x190

    :try_start_1
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponseException;->getStatusCode()I

    move-result v8

    if-gt v7, v8, :cond_2

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponseException;->getStatusCode()I

    move-result v7

    const/16 v8, 0x1f4

    if-ge v7, v8, :cond_2

    move v3, v5

    .line 519
    .local v3, statusCode4xx:Z
    :goto_1
    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/TokenResponseException;->getDetails()Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    .line 522
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/google/api/client/auth/oauth2/Credential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 523
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/google/api/client/auth/oauth2/Credential;->setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 525
    :cond_0
    iget-object v5, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;

    .line 526
    .restart local v2       #refreshListener:Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;
    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/TokenResponseException;->getDetails()Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    move-result-object v5

    invoke-interface {v2, p0, v5}, Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;->onTokenErrorResponse(Lcom/google/api/client/auth/oauth2/Credential;Lcom/google/api/client/auth/oauth2/TokenErrorResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 534
    .end local v0           #e:Lcom/google/api/client/auth/oauth2/TokenResponseException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #refreshListener:Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;
    .end local v3           #statusCode4xx:Z
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #tokenResponse:Lcom/google/api/client/auth/oauth2/TokenResponse;
    :cond_1
    iget-object v6, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #tokenResponse:Lcom/google/api/client/auth/oauth2/TokenResponse;
    :goto_3
    return v5

    .restart local v0       #e:Lcom/google/api/client/auth/oauth2/TokenResponseException;
    :cond_2
    move v3, v6

    .line 517
    goto :goto_1

    .line 528
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #statusCode4xx:Z
    :cond_3
    if-eqz v3, :cond_4

    .line 529
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 534
    .end local v0           #e:Lcom/google/api/client/auth/oauth2/TokenResponseException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #statusCode4xx:Z
    :cond_4
    iget-object v5, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v5, v6

    goto :goto_3
.end method

.method public setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 2
    .parameter "accessToken"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 331
    :try_start_0
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/Credential;->accessToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 335
    return-object p0

    .line 333
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 2
    .parameter "expirationTimeMilliseconds"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 432
    :try_start_0
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/Credential;->expirationTimeMilliseconds:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 436
    return-object p0

    .line 434
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 6
    .parameter "expiresIn"

    .prologue
    .line 468
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/api/client/auth/oauth2/Credential;->setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->clock:Lcom/google/api/client/util/Clock;

    invoke-interface {v0}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public setFromTokenResponse(Lcom/google/api/client/auth/oauth2/TokenResponse;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 1
    .parameter "tokenResponse"

    .prologue
    .line 555
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/auth/oauth2/Credential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 558
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/auth/oauth2/Credential;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 561
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->getExpiresInSeconds()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/auth/oauth2/Credential;->setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 562
    return-object p0
.end method

.method public setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 2
    .parameter "refreshToken"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 398
    if-eqz p1, :cond_0

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->transport:Lcom/google/api/client/http/HttpTransport;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->tokenServerEncodedUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Please use the Builder and call setJsonFactory, setTransport, setClientAuthentication and setTokenServerUrl/setTokenServerEncodedUrl"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 404
    :cond_0
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 408
    return-object p0

    .line 399
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 406
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
