.class public Lorg/cybergarage/http/HTTPSocket;
.super Ljava/lang/Object;
.source "HTTPSocket.java"


# instance fields
.field private sockIn:Ljava/io/InputStream;

.field private sockOut:Ljava/io/OutputStream;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1
    .parameter "socket"

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lorg/cybergarage/http/HTTPSocket;->socket:Ljava/net/Socket;

    .line 94
    iput-object v0, p0, Lorg/cybergarage/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 95
    iput-object v0, p0, Lorg/cybergarage/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    .line 44
    invoke-direct {p0, p1}, Lorg/cybergarage/http/HTTPSocket;->setSocket(Ljava/net/Socket;)V

    .line 45
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPSocket;->open()Z

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/HTTPSocket;)V
    .locals 1
    .parameter "socket"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lorg/cybergarage/http/HTTPSocket;->socket:Ljava/net/Socket;

    .line 94
    iput-object v0, p0, Lorg/cybergarage/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 95
    iput-object v0, p0, Lorg/cybergarage/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    .line 50
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/http/HTTPSocket;->setSocket(Ljava/net/Socket;)V

    .line 51
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/http/HTTPSocket;->setInputStream(Ljava/io/InputStream;)V

    .line 52
    invoke-direct {p1}, Lorg/cybergarage/http/HTTPSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/http/HTTPSocket;->setOutputStream(Ljava/io/OutputStream;)V

    .line 53
    return-void
.end method

.method private getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/cybergarage/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method private post(Lorg/cybergarage/http/HTTPResponse;Ljava/io/InputStream;JJZ)Z
    .locals 18
    .parameter "httpRes"
    .parameter "in"
    .parameter "contentOffset"
    .parameter "contentLength"
    .parameter "isOnlyHeader"

    .prologue
    .line 204
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/cybergarage/http/HTTPPacket;->setDate(Ljava/util/Calendar;)V

    .line 206
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/http/HTTPSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 209
    .local v7, out:Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/http/HTTPPacket;->setContentLength(J)V

    .line 211
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/http/HTTPResponse;->getHeader()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/io/OutputStream;->write([B)V

    .line 212
    const-string v14, "\r\n"

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/io/OutputStream;->write([B)V

    .line 214
    const/4 v14, 0x1

    move/from16 v0, p7

    if-ne v0, v14, :cond_0

    .line 215
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 216
    const/4 v14, 0x1

    .line 257
    :goto_0
    return v14

    .line 219
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/http/HTTPPacket;->isChunked()Z

    move-result v6

    .line 221
    .local v6, isChunkedResponse:Z
    const-wide/16 v14, 0x0

    cmp-long v14, v14, p3

    if-gez v14, :cond_1

    .line 222
    invoke-virtual/range {p2 .. p4}, Ljava/io/InputStream;->skip(J)J

    .line 224
    :cond_1
    invoke-static {}, Lorg/cybergarage/http/HTTP;->getChunkSize()I

    move-result v4

    .line 225
    .local v4, chunkSize:I
    new-array v8, v4, [B

    .line 226
    .local v8, readBuf:[B
    const-wide/16 v9, 0x0

    .line 227
    .local v9, readCnt:J
    int-to-long v14, v4

    cmp-long v14, v14, p5

    if-gez v14, :cond_4

    int-to-long v12, v4

    .line 228
    .local v12, readSize:J
    :goto_1
    const/4 v14, 0x0

    long-to-int v15, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    .line 229
    .local v11, readLen:I
    :goto_2
    if-lez v11, :cond_6

    cmp-long v14, v9, p5

    if-gez v14, :cond_6

    .line 230
    const/4 v14, 0x1

    if-ne v6, v14, :cond_2

    .line 232
    int-to-long v14, v11

    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, chunSizeBuf:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/io/OutputStream;->write([B)V

    .line 234
    const-string v14, "\r\n"

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/io/OutputStream;->write([B)V

    .line 236
    .end local v3           #chunSizeBuf:Ljava/lang/String;
    :cond_2
    const/4 v14, 0x0

    invoke-virtual {v7, v8, v14, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 237
    const/4 v14, 0x1

    if-ne v6, v14, :cond_3

    .line 238
    const-string v14, "\r\n"

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/io/OutputStream;->write([B)V

    .line 239
    :cond_3
    int-to-long v14, v11

    add-long/2addr v9, v14

    .line 240
    int-to-long v14, v4

    sub-long v16, p5, v9

    cmp-long v14, v14, v16

    if-gez v14, :cond_5

    int-to-long v12, v4

    .line 241
    :goto_3
    const/4 v14, 0x0

    long-to-int v15, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    goto :goto_2

    .end local v11           #readLen:I
    .end local v12           #readSize:J
    :cond_4
    move-wide/from16 v12, p5

    .line 227
    goto :goto_1

    .line 240
    .restart local v11       #readLen:I
    .restart local v12       #readSize:J
    :cond_5
    sub-long v12, p5, v9

    goto :goto_3

    .line 244
    :cond_6
    const/4 v14, 0x1

    if-ne v6, v14, :cond_7

    .line 245
    const-string v14, "0"

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/io/OutputStream;->write([B)V

    .line 246
    const-string v14, "\r\n"

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/io/OutputStream;->write([B)V

    .line 249
    :cond_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 251
    .end local v4           #chunkSize:I
    .end local v6           #isChunkedResponse:Z
    .end local v8           #readBuf:[B
    .end local v9           #readCnt:J
    .end local v11           #readLen:I
    .end local v12           #readSize:J
    :catch_0
    move-exception v5

    .line 253
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 254
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private post(Lorg/cybergarage/http/HTTPResponse;[BJJZ)Z
    .locals 7
    .parameter "httpRes"
    .parameter "content"
    .parameter "contentOffset"
    .parameter "contentLength"
    .parameter "isOnlyHeader"

    .prologue
    const/4 v4, 0x1

    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/cybergarage/http/HTTPPacket;->setDate(Ljava/util/Calendar;)V

    .line 161
    invoke-direct {p0}, Lorg/cybergarage/http/HTTPSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 164
    .local v3, out:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1, p5, p6}, Lorg/cybergarage/http/HTTPPacket;->setContentLength(J)V

    .line 166
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPResponse;->getHeader()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 167
    const-string v5, "\r\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 168
    if-ne p7, v4, :cond_0

    .line 169
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 198
    :goto_0
    return v4

    .line 173
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPPacket;->isChunked()Z

    move-result v2

    .line 175
    .local v2, isChunkedResponse:Z
    if-ne v2, v4, :cond_1

    .line 177
    invoke-static {p5, p6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, chunSizeBuf:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 179
    const-string v5, "\r\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 182
    .end local v0           #chunSizeBuf:Ljava/lang/String;
    :cond_1
    long-to-int v5, p3

    long-to-int v6, p5

    invoke-virtual {v3, p2, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 184
    if-ne v2, v4, :cond_2

    .line 185
    const-string v5, "\r\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 186
    const-string v5, "0"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 187
    const-string v5, "\r\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 190
    :cond_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    .end local v2           #isChunkedResponse:Z
    :catch_0
    move-exception v1

    .line 194
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 195
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 99
    iput-object p1, p0, Lorg/cybergarage/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 100
    return-void
.end method

.method private setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 109
    iput-object p1, p0, Lorg/cybergarage/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    .line 110
    return-void
.end method

.method private setSocket(Ljava/net/Socket;)V
    .locals 0
    .parameter "socket"

    .prologue
    .line 68
    iput-object p1, p0, Lorg/cybergarage/http/HTTPSocket;->socket:Ljava/net/Socket;

    .line 69
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 2

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lorg/cybergarage/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lorg/cybergarage/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 140
    :cond_0
    iget-object v1, p0, Lorg/cybergarage/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lorg/cybergarage/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 142
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 147
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPSocket;->close()Z

    .line 58
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/cybergarage/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/cybergarage/http/HTTPSocket;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public open()Z
    .locals 3

    .prologue
    .line 123
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    .line 125
    .local v1, sock:Ljava/net/Socket;
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 126
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 128
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public post(Lorg/cybergarage/http/HTTPResponse;JJZ)Z
    .locals 8
    .parameter "httpRes"
    .parameter "contentOffset"
    .parameter "contentLength"
    .parameter "isOnlyHeader"

    .prologue
    .line 263
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPPacket;->hasContentInputStream()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 264
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPPacket;->getContentInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/cybergarage/http/HTTPSocket;->post(Lorg/cybergarage/http/HTTPResponse;Ljava/io/InputStream;JJZ)Z

    move-result v0

    .line 265
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPPacket;->getContent()[B

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/cybergarage/http/HTTPSocket;->post(Lorg/cybergarage/http/HTTPResponse;[BJJZ)Z

    move-result v0

    goto :goto_0
.end method
