.class public Lorg/cybergarage/upnp/ssdp/HTTPUSocket;
.super Ljava/lang/Object;
.source "HTTPUSocket.java"


# instance fields
.field private localAddr:Ljava/lang/String;

.field private ssdpUniSock:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->open()Z

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "bindPort"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 65
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->open(I)Z

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "bindAddr"
    .parameter "bindPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 58
    invoke-virtual {p0, p1, p2}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->open(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "HTTPUSocket open faild!"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 177
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    if-nez v2, :cond_0

    .line 189
    :goto_0
    return v1

    .line 181
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 182
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 186
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->close()Z

    .line 71
    return-void
.end method

.method public getDatagramSocket()Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 97
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUDPSocket()Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method public open()Z
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->close()Z

    .line 109
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 113
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public open(I)Z
    .locals 5
    .parameter "bindPort"

    .prologue
    const/4 v2, 0x1

    .line 155
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->close()Z

    .line 158
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 159
    .local v0, bindSock:Ljava/net/InetSocketAddress;
    new-instance v3, Ljava/net/DatagramSocket;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    .line 160
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 161
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v0}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v0           #bindSock:Ljava/net/InetSocketAddress;
    :goto_0
    return v2

    .line 163
    :catch_0
    move-exception v1

    .line 165
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;I)Z
    .locals 3
    .parameter "bindAddr"
    .parameter "bindPort"

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->close()Z

    .line 125
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 126
    .local v0, bindInetAddr:Ljava/net/InetSocketAddress;
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->setLocalAddress(Ljava/lang/String;)V

    .line 150
    const/4 v2, 0x1

    .end local v0           #bindInetAddr:Ljava/net/InetSocketAddress;
    :goto_0
    return v2

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 130
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public post(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5
    .parameter "addr"
    .parameter "port"
    .parameter "msg"

    .prologue
    .line 199
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 200
    .local v2, inetAddr:Ljava/net/InetAddress;
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v3, v4, v2, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 201
    .local v0, dgmPacket:Ljava/net/DatagramPacket;
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    const/4 v3, 0x1

    .end local v0           #dgmPacket:Ljava/net/DatagramPacket;
    .end local v2           #inetAddr:Ljava/net/InetAddress;
    :goto_0
    return v3

    .line 203
    :catch_0
    move-exception v1

    .line 206
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 207
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 208
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public receive()Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    .locals 5

    .prologue
    .line 219
    const/16 v3, 0x400

    new-array v2, v3, [B

    .line 220
    .local v2, ssdvRecvBuf:[B
    new-instance v1, Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    array-length v3, v2

    invoke-direct {v1, v2, v3}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;-><init>([BI)V

    .line 221
    .local v1, recvPacket:Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->setLocalAddress(Ljava/lang/String;)V

    .line 223
    :try_start_0
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->setTimeStamp(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v1           #recvPacket:Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    :goto_0
    return-object v1

    .line 226
    .restart local v1       #recvPacket:Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLocalAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 81
    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 82
    return-void
.end method
