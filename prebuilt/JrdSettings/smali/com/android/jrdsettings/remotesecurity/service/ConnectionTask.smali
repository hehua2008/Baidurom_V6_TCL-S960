.class public Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;
.super Ljava/lang/Object;
.source "ConnectionTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final DATA_BUFFER_LEN:I = 0x200

.field private static final TAG:Ljava/lang/String; = "ConnectionTask"


# instance fields
.field protected conn:Ljava/net/HttpURLConnection;

.field protected connectionType:I

.field protected context:Landroid/content/Context;

.field protected dataBuf:[B

.field protected httpCallback:Lcom/android/jrdsettings/remotesecurity/service/IHttpCallback;

.field protected httpUrl:Ljava/lang/String;

.field protected picHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field protected requestType:I

.field protected responseCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/jrdsettings/remotesecurity/service/IHttpCallback;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "httpCallback"
    .parameter "httpUrl"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->requestType:I

    .line 74
    iput v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->connectionType:I

    .line 79
    iput-object v1, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->dataBuf:[B

    .line 89
    iput-object v1, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->picHashMap:Ljava/util/HashMap;

    .line 125
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->context:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->httpCallback:Lcom/android/jrdsettings/remotesecurity/service/IHttpCallback;

    .line 127
    iput-object p3, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->httpUrl:Ljava/lang/String;

    .line 128
    return-void
.end method

.method private setConnError(ILjava/lang/String;)V
    .locals 0
    .parameter "responseCode"
    .parameter "exception"

    .prologue
    .line 492
    return-void
.end method


# virtual methods
.method protected clearNet()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :cond_0
    iput-object v1, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->conn:Ljava/net/HttpURLConnection;

    .line 466
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 463
    iput-object v1, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->conn:Ljava/net/HttpURLConnection;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->conn:Ljava/net/HttpURLConnection;

    throw v0
.end method

.method protected doTask()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/Error;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 203
    const-string v0, "ConnectionTask"

    const-string v1, "doTask"

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->connectionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->httpConnetionProcess()V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->connectionType:I

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->httpsConnetionProcess()V

    goto :goto_0
.end method

.method public getHttpUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->httpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNewHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 10

    .prologue
    .line 548
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 549
    .local v5, trustStore:Ljava/security/KeyStore;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 551
    new-instance v4, Lcom/android/jrdsettings/remotesecurity/service/MySSLSocketFactory;

    invoke-direct {v4, v5}, Lcom/android/jrdsettings/remotesecurity/service/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 552
    .local v4, sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 554
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 555
    .local v2, params:Lorg/apache/http/params/HttpParams;
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 556
    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 558
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 559
    .local v3, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 561
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v6, v7, v4, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 563
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 566
    .local v0, ccm:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    .end local v0           #ccm:Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2           #params:Lorg/apache/http/params/HttpParams;
    .end local v3           #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4           #sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v5           #trustStore:Ljava/security/KeyStore;
    :goto_0
    return-object v6

    .line 568
    :catch_0
    move-exception v1

    .line 570
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method

.method protected handlerError(Ljava/lang/Error;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 236
    iget v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->responseCode:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->setConnError(ILjava/lang/String;)V

    .line 237
    return-void
.end method

.method protected handlerException(Ljava/lang/Exception;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 225
    iget v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->responseCode:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->setConnError(ILjava/lang/String;)V

    .line 226
    return-void
.end method

.method protected httpConnetionProcess()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/Error;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 250
    const-string v1, "ConnectionTask"

    const-string v2, "httpConnetionProcess"

    invoke-static {v1, v2}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->httpUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, url:Ljava/net/URL;
    const-string v1, "ConnectionTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "httpUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->httpUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->conn:Ljava/net/HttpURLConnection;

    .line 260
    iget v1, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->requestType:I

    if-nez v1, :cond_1

    .line 262
    const-string v1, "ConnectionTask"

    const-string v2, "setRequestMethod=POST"

    invoke-static {v1, v2}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->conn:Ljava/net/HttpURLConnection;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 271
    :goto_0
    iget v1, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->requestType:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->dataBuf:[B

    if-eqz v1, :cond_0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->responseCode:I

    .line 276
    const-string v1, "ConnectionTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->responseCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->readData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->clearNet()V

    .line 303
    return-void

    .line 267
    :cond_1
    :try_start_1
    const-string v1, "ConnectionTask"

    const-string v2, "setRequestMethod=GET"

    invoke-static {v1, v2}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->conn:Ljava/net/HttpURLConnection;

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 301
    .end local v0           #url:Ljava/net/URL;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->clearNet()V

    throw v1
.end method

.method protected httpsConnetionProcess()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/Error;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 316
    const-string v6, "ConnectionTask"

    const-string v7, "httpsConnetionProcess"

    invoke-static {v6, v7}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, ""

    .line 320
    .local v0, data:Ljava/lang/String;
    iget v6, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->requestType:I

    if-nez v6, :cond_4

    .line 323
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://remotesecurity.alcatelonetouch.com/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->httpUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 324
    .local v2, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v6, "ConnectionTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "urlhttps://remotesecurity.alcatelonetouch.com/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->httpUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->picHashMap:Ljava/util/HashMap;

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->dataBuf:[B

    if-eqz v6, :cond_3

    .line 330
    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v7, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->dataBuf:[B

    invoke-direct {v6, v7}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v2, v6}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 359
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 362
    .local v5, response:Lorg/apache/http/HttpResponse;
    const-string v6, "ConnectionTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "response.getStatusLine().getStatusCode()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    .line 366
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-static {v6, v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 380
    .end local v2           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->httpCallback:Lcom/android/jrdsettings/remotesecurity/service/IHttpCallback;

    if-eqz v6, :cond_2

    .line 382
    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->httpCallback:Lcom/android/jrdsettings/remotesecurity/service/IHttpCallback;

    invoke-interface {v6, v0}, Lcom/android/jrdsettings/remotesecurity/service/IHttpCallback;->onReceiveData(Ljava/lang/String;)V

    .line 385
    :cond_2
    const-string v6, "ConnectionTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "returns="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void

    .line 332
    .restart local v2       #httpPost:Lorg/apache/http/client/methods/HttpPost;
    :cond_3
    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->picHashMap:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->dataBuf:[B

    if-eqz v6, :cond_0

    .line 334
    const-string v6, "ConnectionTask"

    const-string v7, "upload file"

    invoke-static {v6, v7}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v3, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v3}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 336
    .local v3, multipartEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    new-instance v4, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->dataBuf:[B

    const-string v7, ""

    invoke-direct {v4, v6, v7}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;)V

    .line 337
    .local v4, parbByteArrayBody:Lorg/apache/http/entity/mime/content/ByteArrayBody;
    const-string v6, "pic.json"

    invoke-virtual {v3, v6, v4}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 349
    new-instance v4, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    .end local v4           #parbByteArrayBody:Lorg/apache/http/entity/mime/content/ByteArrayBody;
    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->picHashMap:Ljava/util/HashMap;

    const-string v7, "front.jpg"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    const-string v7, "front.jpg"

    invoke-direct {v4, v6, v7}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;)V

    .line 350
    .restart local v4       #parbByteArrayBody:Lorg/apache/http/entity/mime/content/ByteArrayBody;
    const-string v6, "front.jpg"

    invoke-virtual {v3, v6, v4}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 351
    new-instance v4, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    .end local v4           #parbByteArrayBody:Lorg/apache/http/entity/mime/content/ByteArrayBody;
    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->picHashMap:Ljava/util/HashMap;

    const-string v7, "back.jpg"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    const-string v7, "back.jpg"

    invoke-direct {v4, v6, v7}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;)V

    .line 352
    .restart local v4       #parbByteArrayBody:Lorg/apache/http/entity/mime/content/ByteArrayBody;
    const-string v6, "back.jpg"

    invoke-virtual {v3, v6, v4}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 354
    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_0

    .line 369
    .end local v3           #multipartEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v4           #parbByteArrayBody:Lorg/apache/http/entity/mime/content/ByteArrayBody;
    :catch_0
    move-exception v1

    .line 371
    .local v1, ex:Ljava/lang/Exception;
    const-string v6, "ConnectionTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 375
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    :cond_4
    iget v6, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->requestType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    goto/16 :goto_1
.end method

.method protected readData()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/io/UnsupportedEncodingException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 402
    const-string v7, "ConnectionTask"

    const-string v8, "readData() ~~~~~"

    invoke-static {v7, v8}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v7, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 405
    .local v6, is:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 408
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 409
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 410
    .local v2, ch:I
    const/4 v4, 0x0

    .line 411
    .local v4, data:[B
    const/16 v7, 0x200

    :try_start_1
    new-array v3, v7, [B

    .line 412
    .local v3, d:[B
    :goto_0
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_1

    .line 414
    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 423
    .end local v3           #d:[B
    :catch_0
    move-exception v5

    move-object v0, v1

    .line 425
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #ch:I
    .end local v4           #data:[B
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    .local v5, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v7, "ConnectionTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readData e"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 429
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 432
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 433
    const/4 v0, 0x0

    .line 434
    const/4 v6, 0x0

    .line 438
    .end local v5           #e:Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 416
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #ch:I
    .restart local v3       #d:[B
    .restart local v4       #data:[B
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 418
    iget-object v7, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->httpCallback:Lcom/android/jrdsettings/remotesecurity/service/IHttpCallback;

    if-eqz v7, :cond_2

    .line 420
    iget-object v7, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->httpCallback:Lcom/android/jrdsettings/remotesecurity/service/IHttpCallback;

    new-instance v8, Ljava/lang/String;

    const-string v9, "utf-8"

    invoke-direct {v8, v4, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v7, v8}, Lcom/android/jrdsettings/remotesecurity/service/IHttpCallback;->onReceiveData(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 429
    :cond_2
    if-eqz v1, :cond_4

    .line 431
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 432
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 433
    const/4 v0, 0x0

    .line 434
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    goto :goto_2

    .line 429
    .end local v2           #ch:I
    .end local v3           #d:[B
    .end local v4           #data:[B
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v0, :cond_3

    .line 431
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 432
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 433
    const/4 v0, 0x0

    .line 434
    const/4 v6, 0x0

    :cond_3
    throw v7

    .line 429
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #ch:I
    .restart local v4       #data:[B
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 423
    .end local v2           #ch:I
    .end local v4           #data:[B
    :catch_1
    move-exception v5

    goto :goto_1

    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #ch:I
    .restart local v3       #d:[B
    .restart local v4       #data:[B
    :cond_4
    move-object v0, v1

    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method public run()V
    .locals 4

    .prologue
    .line 135
    const-string v2, "ConnectionTask"

    const-string v3, "run"

    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->doTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_8

    .line 188
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->clearNet()V

    .line 191
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v1

    .line 143
    .local v1, se:Ljava/lang/SecurityException;
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->handlerException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->clearNet()V

    goto :goto_0

    .line 145
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 188
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->clearNet()V

    goto :goto_0

    .line 149
    :catch_2
    move-exception v2

    .line 188
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->clearNet()V

    goto :goto_0

    .line 153
    :catch_3
    move-exception v0

    .line 156
    .local v0, e:Ljava/net/SocketException;
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->handlerException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->clearNet()V

    goto :goto_0

    .line 158
    .end local v0           #e:Ljava/net/SocketException;
    :catch_4
    move-exception v0

    .line 161
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :try_start_3
    iget v2, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->responseCode:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->setConnError(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->clearNet()V

    goto :goto_0

    .line 163
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_5
    move-exception v0

    .line 166
    .local v0, e:Lorg/json/JSONException;
    :try_start_4
    iget v2, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->responseCode:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->setConnError(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->clearNet()V

    goto :goto_0

    .line 168
    .end local v0           #e:Lorg/json/JSONException;
    :catch_6
    move-exception v0

    .line 171
    .local v0, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->handlerException(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 188
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->clearNet()V

    goto :goto_0

    .line 173
    .end local v0           #e:Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->handlerException(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 188
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->clearNet()V

    goto :goto_0

    .line 180
    .end local v0           #e:Ljava/lang/Exception;
    :catch_8
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/Error;
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->handlerError(Ljava/lang/Error;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 188
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->clearNet()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Error;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->clearNet()V

    throw v2
.end method

.method public setConnetionType(I)V
    .locals 0
    .parameter "connetionType"

    .prologue
    .line 535
    iput p1, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->connectionType:I

    .line 536
    return-void
.end method

.method public setDataBuf([B)V
    .locals 0
    .parameter "dataBuf"

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->dataBuf:[B

    .line 503
    return-void
.end method

.method protected setError(ILjava/lang/String;)V
    .locals 0
    .parameter "responseCode"
    .parameter "exception"

    .prologue
    .line 479
    return-void
.end method

.method public setPicHashMap(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .prologue
    .line 586
    .local p1, picHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->picHashMap:Ljava/util/HashMap;

    .line 587
    return-void
.end method

.method public setRequestType(I)V
    .locals 0
    .parameter "requestType"

    .prologue
    .line 524
    iput p1, p0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->requestType:I

    .line 525
    return-void
.end method
