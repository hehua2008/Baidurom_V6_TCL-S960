.class public Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;
.super Ljava/lang/Object;
.source "HTTPMUSocket.java"


# instance fields
.field private ssdpMultiGroup:Ljava/net/InetSocketAddress;

.field private ssdpMultiIf:Ljava/net/NetworkInterface;

.field private ssdpMultiSock:Ljava/net/MulticastSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    .line 57
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    .line 58
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "addr"
    .parameter "port"
    .parameter "bindAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    .line 57
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    .line 58
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->open(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "HTTPUSocket open faild!"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 178
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    if-nez v2, :cond_0

    .line 191
    :goto_0
    return v1

    .line 182
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    invoke-virtual {v2, v3, v4}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 183
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 184
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->close()Z

    .line 78
    return-void
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 86
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    if-nez v3, :cond_1

    .line 87
    :cond_0
    const-string v3, ""

    .line 97
    :goto_0
    return-object v3

    .line 88
    :cond_1
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 89
    .local v2, mcastAddr:Ljava/net/InetAddress;
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 90
    .local v1, addrs:Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 92
    .local v0, addr:Ljava/net/InetAddress;
    instance-of v3, v2, Ljava/net/Inet6Address;

    if-eqz v3, :cond_3

    instance-of v3, v0, Ljava/net/Inet6Address;

    if-eqz v3, :cond_3

    .line 93
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 94
    :cond_3
    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2

    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2

    .line 95
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 97
    .end local v0           #addr:Ljava/net/InetAddress;
    :cond_4
    const-string v3, ""

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMulticastAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->getMulticastInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMulticastInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMulticastPort()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public getSocket()Ljava/net/MulticastSocket;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    return-object v0
.end method

.method public open(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .parameter "addr"
    .parameter "port"
    .parameter "bindAddr"

    .prologue
    .line 169
    :try_start_0
    invoke-static {p3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->open(Ljava/lang/String;ILjava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 172
    :goto_0
    return v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 172
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;ILjava/net/InetAddress;)Z
    .locals 6
    .parameter "addr"
    .parameter "port"
    .parameter "bindAddr"

    .prologue
    const/4 v2, 0x1

    .line 150
    :try_start_0
    new-instance v3, Ljava/net/MulticastSocket;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    .line 151
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 152
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 153
    .local v0, bindSockAddr:Ljava/net/InetSocketAddress;
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    invoke-virtual {v3, v0}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 154
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    .line 155
    invoke-static {p3}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v3

    iput-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    .line 156
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    iget-object v4, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    invoke-virtual {v3, v4, v5}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v0           #bindSockAddr:Ljava/net/InetSocketAddress;
    :goto_0
    return v2

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 160
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public post(Lorg/cybergarage/http/HTTPRequest;)Z
    .locals 3
    .parameter "req"

    .prologue
    .line 237
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->send(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public post(Lorg/cybergarage/http/HTTPRequest;Ljava/lang/String;I)Z
    .locals 1
    .parameter "req"
    .parameter "bindAddr"
    .parameter "bindPort"

    .prologue
    .line 232
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->send(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public receive()Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    const/16 v2, 0x400

    new-array v1, v2, [B

    .line 247
    .local v1, ssdvRecvBuf:[B
    new-instance v0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    array-length v2, v1

    invoke-direct {v0, v1, v2}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;-><init>([BI)V

    .line 248
    .local v0, recvPacket:Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->setLocalAddress(Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->setTimeStamp(J)V

    .line 259
    return-object v0

    .line 255
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Multicast socket has already been closed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public send(Ljava/lang/String;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 223
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->send(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .parameter "msg"
    .parameter "bindAddr"
    .parameter "bindPort"

    .prologue
    .line 202
    if-eqz p2, :cond_0

    if-lez p3, :cond_0

    .line 203
    :try_start_0
    new-instance v2, Ljava/net/MulticastSocket;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 204
    .local v2, msock:Ljava/net/MulticastSocket;
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 208
    :goto_0
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    .line 210
    .local v0, dgmPacket:Ljava/net/DatagramPacket;
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getTimeToLive()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 211
    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 212
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 218
    const/4 v3, 0x1

    .end local v0           #dgmPacket:Ljava/net/DatagramPacket;
    .end local v2           #msock:Ljava/net/MulticastSocket;
    :goto_1
    return v3

    .line 206
    :cond_0
    new-instance v2, Ljava/net/MulticastSocket;

    invoke-direct {v2}, Ljava/net/MulticastSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #msock:Ljava/net/MulticastSocket;
    goto :goto_0

    .line 214
    .end local v2           #msock:Ljava/net/MulticastSocket;
    :catch_0
    move-exception v1

    .line 215
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 216
    const/4 v3, 0x0

    goto :goto_1
.end method
