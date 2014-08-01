.class public Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
.super Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;
.source "SSDPNotifySocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private controlPoint:Lorg/cybergarage/upnp/ControlPoint;

.field private deviceNotifyThread:Ljava/lang/Thread;

.field private useIPv6Address:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "bindAddr"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;-><init>()V

    .line 73
    iput-object v2, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->controlPoint:Lorg/cybergarage/upnp/ControlPoint;

    .line 105
    iput-object v2, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->deviceNotifyThread:Ljava/lang/Thread;

    .line 59
    const-string v0, "239.255.255.250"

    .line 60
    .local v0, addr:Ljava/lang/String;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->useIPv6Address:Z

    .line 61
    invoke-static {p1}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 62
    invoke-static {}, Lorg/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    .line 63
    iput-boolean v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->useIPv6Address:Z

    .line 65
    :cond_0
    const/16 v1, 0x76c

    invoke-virtual {p0, v0, v1, p1}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->open(Ljava/lang/String;ILjava/lang/String;)Z

    .line 66
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 67
    return-void
.end method


# virtual methods
.method public getControlPoint()Lorg/cybergarage/upnp/ControlPoint;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->controlPoint:Lorg/cybergarage/upnp/ControlPoint;

    return-object v0
.end method

.method public post(Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z
    .locals 3
    .parameter "req"

    .prologue
    .line 94
    const-string v0, "239.255.255.250"

    .line 95
    .local v0, ssdpAddr:Ljava/lang/String;
    iget-boolean v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->useIPv6Address:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 96
    invoke-static {}, Lorg/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_0
    const/16 v1, 0x76c

    invoke-virtual {p1, v0, v1}, Lorg/cybergarage/http/HTTPPacket;->setHost(Ljava/lang/String;I)V

    .line 98
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->post(Lorg/cybergarage/http/HTTPRequest;)Z

    move-result v1

    return v1
.end method

.method public run()V
    .locals 8

    .prologue
    .line 109
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 111
    .local v5, thisThread:Ljava/lang/Thread;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->getControlPoint()Lorg/cybergarage/upnp/ControlPoint;

    move-result-object v0

    .line 113
    .local v0, ctrlPoint:Lorg/cybergarage/upnp/ControlPoint;
    :cond_0
    :goto_0
    iget-object v6, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->deviceNotifyThread:Ljava/lang/Thread;

    if-ne v6, v5, :cond_1

    .line 114
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 117
    const/4 v3, 0x0

    .line 119
    .local v3, packet:Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    :try_start_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receive()Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 126
    if-eqz v3, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->getMulticastInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 131
    .local v2, maddr:Ljava/net/InetAddress;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getHostInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 132
    .local v4, pmaddr:Ljava/net/InetAddress;
    invoke-virtual {v2, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalidate Multicast Recieved from IP "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    .end local v2           #maddr:Ljava/net/InetAddress;
    .end local v4           #pmaddr:Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 140
    .end local v3           #packet:Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    :cond_1
    return-void

    .line 137
    .restart local v2       #maddr:Ljava/net/InetAddress;
    .restart local v3       #packet:Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    .restart local v4       #pmaddr:Ljava/net/InetAddress;
    :cond_2
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, v3}, Lorg/cybergarage/upnp/ControlPoint;->notifyReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    goto :goto_0
.end method

.method public setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V
    .locals 0
    .parameter "ctrlp"

    .prologue
    .line 77
    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->controlPoint:Lorg/cybergarage/upnp/ControlPoint;

    .line 78
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    const/16 v4, 0x3a

    .line 143
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Cyber.SSDPNotifySocket/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, name:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, localAddr:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 147
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->getMulticastAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->getMulticastPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 152
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->deviceNotifyThread:Ljava/lang/Thread;

    .line 153
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->deviceNotifyThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 154
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->close()Z

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->deviceNotifyThread:Ljava/lang/Thread;

    .line 162
    return-void
.end method
