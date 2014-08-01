.class public Lorg/cybergarage/http/HTTPRequest;
.super Lorg/cybergarage/http/HTTPPacket;
.source "HTTPRequest.java"


# instance fields
.field private httpSocket:Lorg/cybergarage/http/HTTPSocket;

.field private method:Ljava/lang/String;

.field private postSocket:Ljava/net/Socket;

.field private requestHost:Ljava/lang/String;

.field private requestPort:I

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Lorg/cybergarage/http/HTTPPacket;-><init>()V

    .line 103
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->method:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 226
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lorg/cybergarage/http/HTTPRequest;->requestPort:I

    .line 254
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->httpSocket:Lorg/cybergarage/http/HTTPSocket;

    .line 394
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 85
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1}, Lorg/cybergarage/http/HTTPPacket;-><init>(Ljava/io/InputStream;)V

    .line 103
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->method:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 226
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lorg/cybergarage/http/HTTPRequest;->requestPort:I

    .line 254
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->httpSocket:Lorg/cybergarage/http/HTTPSocket;

    .line 394
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/HTTPSocket;)V
    .locals 1
    .parameter "httpSock"

    .prologue
    .line 95
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/http/HTTPRequest;-><init>(Ljava/io/InputStream;)V

    .line 96
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPRequest;->setSocket(Lorg/cybergarage/http/HTTPSocket;)V

    .line 97
    return-void
.end method


# virtual methods
.method public getFirstLineString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getHTTPVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->hasFirstLine()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 306
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lorg/cybergarage/http/HTTPPacket;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 321
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 323
    .local v1, str:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getFirstLineString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderString()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, headerString:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getSocket()Lorg/cybergarage/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getSocket()Lorg/cybergarage/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->method:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->method:Ljava/lang/String;

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParameterList()Lorg/cybergarage/http/ParameterList;
    .locals 10

    .prologue
    .line 188
    new-instance v5, Lorg/cybergarage/http/ParameterList;

    invoke-direct {v5}, Lorg/cybergarage/http/ParameterList;-><init>()V

    .line 189
    .local v5, paramList:Lorg/cybergarage/http/ParameterList;
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, uri:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 204
    :cond_0
    return-object v5

    .line 192
    :cond_1
    const/16 v8, 0x3f

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 193
    .local v4, paramIdx:I
    if-ltz v4, :cond_0

    .line 195
    :goto_0
    if-lez v4, :cond_0

    .line 196
    const/16 v8, 0x3d

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 197
    .local v0, eqIdx:I
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, name:Ljava/lang/String;
    const/16 v8, 0x26

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 199
    .local v2, nextParamIdx:I
    add-int/lit8 v9, v0, 0x1

    if-lez v2, :cond_2

    move v8, v2

    :goto_1
    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, value:Ljava/lang/String;
    new-instance v3, Lorg/cybergarage/http/Parameter;

    invoke-direct {v3, v1, v7}, Lorg/cybergarage/http/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .local v3, param:Lorg/cybergarage/http/Parameter;
    invoke-virtual {v5, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 202
    move v4, v2

    .line 203
    goto :goto_0

    .line 199
    .end local v3           #param:Lorg/cybergarage/http/Parameter;
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_1
.end method

.method public getParameterValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 209
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getParameterList()Lorg/cybergarage/http/ParameterList;

    move-result-object v0

    .line 210
    .local v0, paramList:Lorg/cybergarage/http/ParameterList;
    invoke-virtual {v0, p1}, Lorg/cybergarage/http/ParameterList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRequestHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->requestHost:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestPort()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lorg/cybergarage/http/HTTPRequest;->requestPort:I

    return v0
.end method

.method public getSocket()Lorg/cybergarage/http/HTTPSocket;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->httpSocket:Lorg/cybergarage/http/HTTPSocket;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 179
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isGetRequest()Z
    .locals 1

    .prologue
    .line 127
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHeadRequest()Z
    .locals 1

    .prologue
    .line 137
    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isKeepAlive()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 337
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->isCloseConnection()Z

    move-result v4

    if-ne v4, v3, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v2

    .line 339
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->isKeepAliveConnection()Z

    move-result v4

    if-ne v4, v3, :cond_2

    move v2, v3

    .line 340
    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getHTTPVersion()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, httpVer:Ljava/lang/String;
    const-string v4, "1.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    move v1, v3

    .line 343
    .local v1, isHTTP10:Z
    :goto_1
    if-eq v1, v3, :cond_0

    move v2, v3

    .line 345
    goto :goto_0

    .end local v1           #isHTTP10:Z
    :cond_3
    move v1, v2

    .line 342
    goto :goto_1
.end method

.method public isMethod(Ljava/lang/String;)Z
    .locals 2
    .parameter "method"

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, headerMethod:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 121
    const/4 v1, 0x0

    .line 122
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isNotifyRequest()Z
    .locals 1

    .prologue
    .line 152
    const-string v0, "NOTIFY"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPostRequest()Z
    .locals 1

    .prologue
    .line 132
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSOAPAction()Z
    .locals 1

    .prologue
    .line 219
    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSubscribeRequest()Z
    .locals 1

    .prologue
    .line 142
    const-string v0, "SUBSCRIBE"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUnsubscribeRequest()Z
    .locals 1

    .prologue
    .line 147
    const-string v0, "UNSUBSCRIBE"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parseRequestLine(Ljava/lang/String;)Z
    .locals 3
    .parameter "lineStr"

    .prologue
    const/4 v1, 0x0

    .line 286
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, " "

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .local v0, st:Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v1

    .line 289
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cybergarage/http/HTTPRequest;->setMethod(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cybergarage/http/HTTPRequest;->setURI(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cybergarage/http/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 296
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public post(Ljava/lang/String;I)Lorg/cybergarage/http/HTTPResponse;
    .locals 1
    .parameter "host"
    .parameter "port"

    .prologue
    .line 479
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/cybergarage/http/HTTPRequest;->post(Ljava/lang/String;IZ)Lorg/cybergarage/http/HTTPResponse;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;IZ)Lorg/cybergarage/http/HTTPResponse;
    .locals 14
    .parameter "host"
    .parameter "port"
    .parameter "isKeepAlive"

    .prologue
    .line 398
    new-instance v5, Lorg/cybergarage/http/HTTPResponse;

    invoke-direct {v5}, Lorg/cybergarage/http/HTTPResponse;-><init>()V

    .line 400
    .local v5, httpRes:Lorg/cybergarage/http/HTTPResponse;
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->setHost(Ljava/lang/String;)V

    .line 402
    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_8

    const-string v11, "Keep-Alive"

    :goto_0
    invoke-virtual {p0, v11}, Lorg/cybergarage/http/HTTPPacket;->setConnection(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->isHeadRequest()Z

    move-result v8

    .line 406
    .local v8, isHeaderRequest:Z
    const/4 v9, 0x0

    .line 407
    .local v9, out:Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 410
    .local v6, in:Ljava/io/InputStream;
    :try_start_0
    iget-object v11, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    if-nez v11, :cond_0

    .line 412
    new-instance v11, Ljava/net/Socket;

    invoke-direct {v11}, Ljava/net/Socket;-><init>()V

    iput-object v11, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 413
    iget-object v11, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    new-instance v12, Ljava/net/InetSocketAddress;

    move/from16 v0, p2

    invoke-direct {v12, p1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v13, 0xdac

    invoke-virtual {v11, v12, v13}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 416
    :cond_0
    iget-object v11, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 417
    new-instance v10, Ljava/io/PrintStream;

    invoke-direct {v10, v9}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 418
    .local v10, pout:Ljava/io/PrintStream;
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 419
    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->isChunked()Z

    move-result v7

    .line 423
    .local v7, isChunkedRequest:Z
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getContentString()Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, content:Ljava/lang/String;
    const/4 v3, 0x0

    .line 425
    .local v3, contentLength:I
    if-eqz v2, :cond_1

    .line 426
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 428
    :cond_1
    if-lez v3, :cond_3

    .line 429
    const/4 v11, 0x1

    if-ne v7, v11, :cond_2

    .line 431
    int-to-long v11, v3

    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, chunSizeBuf:Ljava/lang/String;
    invoke-virtual {v10, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 433
    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 435
    .end local v1           #chunSizeBuf:Ljava/lang/String;
    :cond_2
    invoke-virtual {v10, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 436
    const/4 v11, 0x1

    if-ne v7, v11, :cond_3

    .line 437
    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 440
    :cond_3
    const/4 v11, 0x1

    if-ne v7, v11, :cond_4

    .line 441
    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 442
    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 445
    :cond_4
    invoke-virtual {v10}, Ljava/io/PrintStream;->flush()V

    .line 447
    iget-object v11, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 448
    invoke-virtual {v5, v6, v8}, Lorg/cybergarage/http/HTTPPacket;->set(Ljava/io/InputStream;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 458
    if-nez p3, :cond_7

    .line 460
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 462
    :goto_1
    if-eqz v6, :cond_5

    .line 464
    :try_start_2
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 466
    :cond_5
    :goto_2
    if-eqz v9, :cond_6

    .line 468
    :try_start_3
    iget-object v11, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d

    .line 470
    :cond_6
    :goto_3
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 474
    .end local v2           #content:Ljava/lang/String;
    .end local v3           #contentLength:I
    .end local v7           #isChunkedRequest:Z
    .end local v10           #pout:Ljava/io/PrintStream;
    :cond_7
    :goto_4
    return-object v5

    .line 402
    .end local v6           #in:Ljava/io/InputStream;
    .end local v8           #isHeaderRequest:Z
    .end local v9           #out:Ljava/io/OutputStream;
    :cond_8
    const-string v11, "close"

    goto/16 :goto_0

    .line 449
    .restart local v6       #in:Ljava/io/InputStream;
    .restart local v8       #isHeaderRequest:Z
    .restart local v9       #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    .line 450
    .local v4, e:Ljava/net/SocketException;
    const/16 v11, 0x1f4

    :try_start_4
    invoke-virtual {v5, v11}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 451
    invoke-static {v4}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 458
    if-nez p3, :cond_7

    .line 460
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 462
    :goto_5
    if-eqz v6, :cond_9

    .line 464
    :try_start_6
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 466
    :cond_9
    :goto_6
    if-eqz v9, :cond_a

    .line 468
    :try_start_7
    iget-object v11, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    .line 470
    :cond_a
    :goto_7
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    goto :goto_4

    .line 452
    .end local v4           #e:Ljava/net/SocketException;
    :catch_1
    move-exception v4

    .line 455
    .local v4, e:Ljava/io/IOException;
    const/16 v11, 0x1f4

    :try_start_8
    invoke-virtual {v5, v11}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 456
    invoke-static {v4}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 458
    if-nez p3, :cond_7

    .line 460
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 462
    :goto_8
    if-eqz v6, :cond_b

    .line 464
    :try_start_a
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 466
    :cond_b
    :goto_9
    if-eqz v9, :cond_c

    .line 468
    :try_start_b
    iget-object v11, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 470
    :cond_c
    :goto_a
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    goto :goto_4

    .line 458
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    if-nez p3, :cond_f

    .line 460
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 462
    :goto_b
    if-eqz v6, :cond_d

    .line 464
    :try_start_d
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 466
    :cond_d
    :goto_c
    if-eqz v9, :cond_e

    .line 468
    :try_start_e
    iget-object v12, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v12}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 470
    :cond_e
    :goto_d
    const/4 v12, 0x0

    iput-object v12, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    :cond_f
    throw v11

    .line 461
    .restart local v2       #content:Ljava/lang/String;
    .restart local v3       #contentLength:I
    .restart local v7       #isChunkedRequest:Z
    .restart local v10       #pout:Ljava/io/PrintStream;
    :catch_2
    move-exception v11

    goto :goto_1

    .line 465
    :catch_3
    move-exception v11

    goto :goto_2

    .line 461
    .end local v2           #content:Ljava/lang/String;
    .end local v3           #contentLength:I
    .end local v7           #isChunkedRequest:Z
    .end local v10           #pout:Ljava/io/PrintStream;
    .local v4, e:Ljava/net/SocketException;
    :catch_4
    move-exception v11

    goto :goto_5

    .line 465
    :catch_5
    move-exception v11

    goto :goto_6

    .line 461
    .local v4, e:Ljava/io/IOException;
    :catch_6
    move-exception v11

    goto :goto_8

    .line 465
    :catch_7
    move-exception v11

    goto :goto_9

    .line 461
    .end local v4           #e:Ljava/io/IOException;
    :catch_8
    move-exception v12

    goto :goto_b

    .line 465
    :catch_9
    move-exception v12

    goto :goto_c

    .line 469
    :catch_a
    move-exception v12

    goto :goto_d

    .restart local v4       #e:Ljava/io/IOException;
    :catch_b
    move-exception v11

    goto :goto_a

    .local v4, e:Ljava/net/SocketException;
    :catch_c
    move-exception v11

    goto :goto_7

    .end local v4           #e:Ljava/net/SocketException;
    .restart local v2       #content:Ljava/lang/String;
    .restart local v3       #contentLength:I
    .restart local v7       #isChunkedRequest:Z
    .restart local v10       #pout:Ljava/io/PrintStream;
    :catch_d
    move-exception v11

    goto :goto_3
.end method

.method public post(Lorg/cybergarage/http/HTTPResponse;)Z
    .locals 18
    .parameter "httpRes"

    .prologue
    .line 363
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/HTTPRequest;->getSocket()Lorg/cybergarage/http/HTTPSocket;

    move-result-object v8

    .line 364
    .local v8, httpSock:Lorg/cybergarage/http/HTTPSocket;
    const-wide/16 v10, 0x0

    .line 365
    .local v10, offset:J
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/http/HTTPPacket;->getContentLength()J

    move-result-wide v6

    .line 366
    .local v6, length:J
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/HTTPPacket;->hasContentRange()Z

    move-result v1

    const/4 v9, 0x1

    if-ne v1, v9, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/http/HTTPResponse;->getStatusCode()I

    move-result v1

    const/16 v9, 0x1a0

    if-eq v1, v9, :cond_4

    .line 367
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/HTTPPacket;->getContentRangeForAndroid()[J

    move-result-object v1

    const/4 v9, 0x0

    aget-wide v2, v1, v9

    .line 368
    .local v2, firstPos:J
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/HTTPPacket;->getContentRangeForAndroid()[J

    move-result-object v1

    const/4 v9, 0x1

    aget-wide v4, v1, v9

    .line 371
    .local v4, lastPos:J
    const-wide/16 v12, 0x0

    cmp-long v1, v4, v12

    if-gtz v1, :cond_0

    .line 372
    const-wide/16 v12, 0x1

    sub-long v4, v6, v12

    .line 373
    :cond_0
    cmp-long v1, v2, v6

    if-gtz v1, :cond_1

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 374
    :cond_1
    const/16 v1, 0x1a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/cybergarage/http/HTTPRequest;->returnResponse(I)Z

    move-result v15

    .line 387
    .end local v2           #firstPos:J
    .end local v4           #lastPos:J
    :cond_2
    :goto_0
    return v15

    .restart local v2       #firstPos:J
    .restart local v4       #lastPos:J
    :cond_3
    move-object/from16 v1, p1

    .line 375
    invoke-virtual/range {v1 .. v7}, Lorg/cybergarage/http/HTTPPacket;->setContentRange(JJJ)V

    .line 376
    const/16 v1, 0xce

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 378
    move-wide v10, v2

    .line 379
    sub-long v12, v4, v2

    const-wide/16 v16, 0x1

    add-long v6, v12, v16

    .line 384
    .end local v2           #firstPos:J
    .end local v4           #lastPos:J
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/HTTPRequest;->isHeadRequest()Z

    move-result v14

    move-object/from16 v9, p1

    move-wide v12, v6

    invoke-virtual/range {v8 .. v14}, Lorg/cybergarage/http/HTTPSocket;->post(Lorg/cybergarage/http/HTTPResponse;JJZ)Z

    move-result v15

    .line 385
    .local v15, ret:Z
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/http/HTTPPacket;->isKeepAliveConnection()Z

    move-result v1

    if-nez v1, :cond_2

    .line 386
    invoke-virtual {v8}, Lorg/cybergarage/http/HTTPSocket;->close()Z

    goto :goto_0
.end method

.method public print()V
    .locals 2

    .prologue
    .line 531
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method public read()Z
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getSocket()Lorg/cybergarage/http/HTTPSocket;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->read(Lorg/cybergarage/http/HTTPSocket;)Z

    move-result v0

    return v0
.end method

.method public returnBadRequest()Z
    .locals 1

    .prologue
    .line 511
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->returnResponse(I)Z

    move-result v0

    return v0
.end method

.method public returnOK()Z
    .locals 1

    .prologue
    .line 506
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->returnResponse(I)Z

    move-result v0

    return v0
.end method

.method public returnResponse(I)Z
    .locals 3
    .parameter "statusCode"

    .prologue
    .line 498
    new-instance v0, Lorg/cybergarage/http/HTTPResponse;

    invoke-direct {v0}, Lorg/cybergarage/http/HTTPResponse;-><init>()V

    .line 499
    .local v0, httpRes:Lorg/cybergarage/http/HTTPResponse;
    invoke-virtual {v0, p1}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 500
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/http/HTTPPacket;->setContentLength(J)V

    .line 501
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    move-result v1

    return v1
.end method

.method public set(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 1
    .parameter "httpReq"

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->set(Lorg/cybergarage/http/HTTPPacket;)V

    .line 489
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getSocket()Lorg/cybergarage/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->setSocket(Lorg/cybergarage/http/HTTPSocket;)V

    .line 490
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 107
    iput-object p1, p0, Lorg/cybergarage/http/HTTPRequest;->method:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setRequestHost(Ljava/lang/String;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 230
    iput-object p1, p0, Lorg/cybergarage/http/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setRequestPort(I)V
    .locals 0
    .parameter "host"

    .prologue
    .line 242
    iput p1, p0, Lorg/cybergarage/http/HTTPRequest;->requestPort:I

    .line 243
    return-void
.end method

.method public setSocket(Lorg/cybergarage/http/HTTPSocket;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 258
    iput-object p1, p0, Lorg/cybergarage/http/HTTPRequest;->httpSocket:Lorg/cybergarage/http/HTTPSocket;

    .line 259
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPRequest;->setURI(Ljava/lang/String;Z)V

    .line 173
    return-void
.end method

.method public setURI(Ljava/lang/String;Z)V
    .locals 1
    .parameter "value"
    .parameter "isCheckRelativeURL"

    .prologue
    .line 163
    iput-object p1, p0, Lorg/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 164
    if-nez p2, :cond_0

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    invoke-static {v0}, Lorg/cybergarage/http/HTTP;->toRelativeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 520
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 522
    .local v0, str:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 523
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 524
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getContentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
