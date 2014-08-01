.class public Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
.super Lorg/cybergarage/upnp/ssdp/HTTPUSocket;
.source "SSDPSearchResponseSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private controlPoint:Lorg/cybergarage/upnp/ControlPoint;

.field private deviceSearchResponseThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;-><init>()V

    .line 48
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->controlPoint:Lorg/cybergarage/upnp/ControlPoint;

    .line 64
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    .line 35
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "bindAddr"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->controlPoint:Lorg/cybergarage/upnp/ControlPoint;

    .line 64
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    .line 41
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getControlPoint()Lorg/cybergarage/upnp/ControlPoint;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->controlPoint:Lorg/cybergarage/upnp/ControlPoint;

    return-object v0
.end method

.method public post(Ljava/lang/String;ILorg/cybergarage/upnp/ssdp/SSDPSearchRequest;)Z
    .locals 1
    .parameter "addr"
    .parameter "port"
    .parameter "req"

    .prologue
    .line 116
    invoke-virtual {p3}, Lorg/cybergarage/http/HTTPRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->post(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public post(Ljava/lang/String;ILorg/cybergarage/upnp/ssdp/SSDPSearchResponse;)Z
    .locals 1
    .parameter "addr"
    .parameter "port"
    .parameter "res"

    .prologue
    .line 107
    invoke-virtual {p3}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->post(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 70
    .local v2, thisThread:Ljava/lang/Thread;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->getControlPoint()Lorg/cybergarage/upnp/ControlPoint;

    move-result-object v0

    .line 72
    .local v0, ctrlPoint:Lorg/cybergarage/upnp/ControlPoint;
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    if-ne v3, v2, :cond_1

    .line 73
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 74
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->receive()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v1

    .line 75
    .local v1, packet:Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    if-nez v1, :cond_2

    .line 80
    .end local v1           #packet:Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    :cond_1
    return-void

    .line 77
    .restart local v1       #packet:Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    :cond_2
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->searchResponseReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    goto :goto_0
.end method

.method public setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V
    .locals 0
    .parameter "ctrlp"

    .prologue
    .line 52
    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->controlPoint:Lorg/cybergarage/upnp/ControlPoint;

    .line 53
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 84
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "Cyber.SSDPSearchResponseSocket/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, name:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v2

    .line 87
    .local v2, s:Ljava/net/DatagramSocket;
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 88
    .local v0, localAddr:Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 92
    :cond_0
    new-instance v3, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    .line 93
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 94
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    .line 99
    return-void
.end method
