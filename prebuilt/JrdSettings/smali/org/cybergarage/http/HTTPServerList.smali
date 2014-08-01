.class public Lorg/cybergarage/http/HTTPServerList;
.super Ljava/util/Vector;
.source "HTTPServerList.java"


# instance fields
.field private binds:[Ljava/net/InetAddress;

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    .line 33
    const/16 v0, 0xfa4

    iput v0, p0, Lorg/cybergarage/http/HTTPServerList;->port:I

    .line 36
    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;I)V
    .locals 1
    .parameter "list"
    .parameter "port"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    .line 33
    const/16 v0, 0xfa4

    iput v0, p0, Lorg/cybergarage/http/HTTPServerList;->port:I

    .line 39
    iput-object p1, p0, Lorg/cybergarage/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    .line 40
    iput p2, p0, Lorg/cybergarage/http/HTTPServerList;->port:I

    .line 41
    return-void
.end method


# virtual methods
.method public addRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 51
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 52
    .local v1, nServers:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 53
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/http/HTTPServer;

    move-result-object v2

    .line 54
    .local v2, server:Lorg/cybergarage/http/HTTPServer;
    invoke-virtual {v2, p1}, Lorg/cybergarage/http/HTTPServer;->addRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v2           #server:Lorg/cybergarage/http/HTTPServer;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 70
    .local v1, nServers:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 71
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/http/HTTPServer;

    move-result-object v2

    .line 72
    .local v2, server:Lorg/cybergarage/http/HTTPServer;
    invoke-virtual {v2}, Lorg/cybergarage/http/HTTPServer;->close()Z

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v2           #server:Lorg/cybergarage/http/HTTPServer;
    :cond_0
    return-void
.end method

.method public getHTTPServer(I)Lorg/cybergarage/http/HTTPServer;
    .locals 1
    .parameter "n"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/http/HTTPServer;

    return-object v0
.end method

.method public open()I
    .locals 9

    .prologue
    .line 77
    iget-object v1, p0, Lorg/cybergarage/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    .line 79
    .local v1, binds:[Ljava/net/InetAddress;
    if-eqz v1, :cond_0

    .line 80
    array-length v7, v1

    new-array v0, v7, [Ljava/lang/String;

    .line 81
    .local v0, bindAddresses:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_1

    .line 82
    aget-object v7, v1, v3

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    .end local v0           #bindAddresses:[Ljava/lang/String;
    .end local v3           #i:I
    :cond_0
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v6

    .line 86
    .local v6, nHostAddrs:I
    new-array v0, v6, [Ljava/lang/String;

    .line 87
    .restart local v0       #bindAddresses:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, n:I
    :goto_1
    if-ge v5, v6, :cond_1

    .line 88
    invoke-static {v5}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    .line 87
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 91
    .end local v5           #n:I
    .end local v6           #nHostAddrs:I
    :cond_1
    const/4 v4, 0x0

    .line 92
    .local v4, j:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    array-length v7, v0

    if-ge v3, v7, :cond_4

    .line 93
    new-instance v2, Lorg/cybergarage/http/HTTPServer;

    invoke-direct {v2}, Lorg/cybergarage/http/HTTPServer;-><init>()V

    .line 94
    .local v2, httpServer:Lorg/cybergarage/http/HTTPServer;
    aget-object v7, v0, v3

    if-eqz v7, :cond_2

    aget-object v7, v0, v3

    iget v8, p0, Lorg/cybergarage/http/HTTPServerList;->port:I

    invoke-virtual {v2, v7, v8}, Lorg/cybergarage/http/HTTPServer;->open(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 95
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->close()V

    .line 96
    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    .line 92
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 98
    :cond_3
    invoke-virtual {p0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 102
    .end local v2           #httpServer:Lorg/cybergarage/http/HTTPServer;
    :cond_4
    return v4
.end method

.method public open(I)Z
    .locals 1
    .parameter "port"

    .prologue
    .line 108
    iput p1, p0, Lorg/cybergarage/http/HTTPServerList;->port:I

    .line 109
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->open()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBindAddresses([Ljava/net/InetAddress;)V
    .locals 0
    .parameter "addrs"

    .prologue
    .line 47
    iput-object p1, p0, Lorg/cybergarage/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    .line 48
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 119
    .local v1, nServers:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 120
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/http/HTTPServer;

    move-result-object v2

    .line 121
    .local v2, server:Lorg/cybergarage/http/HTTPServer;
    invoke-virtual {v2}, Lorg/cybergarage/http/HTTPServer;->start()Z

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v2           #server:Lorg/cybergarage/http/HTTPServer;
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 128
    .local v1, nServers:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 129
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/http/HTTPServer;

    move-result-object v2

    .line 130
    .local v2, server:Lorg/cybergarage/http/HTTPServer;
    invoke-virtual {v2}, Lorg/cybergarage/http/HTTPServer;->stop()Z

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v2           #server:Lorg/cybergarage/http/HTTPServer;
    :cond_0
    return-void
.end method
