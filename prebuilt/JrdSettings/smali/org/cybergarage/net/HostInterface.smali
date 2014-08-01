.class public Lorg/cybergarage/net/HostInterface;
.super Ljava/lang/Object;
.source "HostInterface.java"


# static fields
.field public static final IPV4_BITMASK:I = 0x1

.field public static final IPV6_BITMASK:I = 0x10

.field public static final LOCAL_BITMASK:I = 0x100

.field public static USE_LOOPBACK_ADDR:Z

.field public static USE_ONLY_IPV4_ADDR:Z

.field public static USE_ONLY_IPV6_ADDR:Z

.field private static ifAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-boolean v0, Lorg/cybergarage/net/HostInterface;->USE_LOOPBACK_ADDR:Z

    .line 46
    sput-boolean v0, Lorg/cybergarage/net/HostInterface;->USE_ONLY_IPV4_ADDR:Z

    .line 47
    sput-boolean v0, Lorg/cybergarage/net/HostInterface;->USE_ONLY_IPV6_ADDR:Z

    .line 53
    const-string v0, ""

    sput-object v0, Lorg/cybergarage/net/HostInterface;->ifAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getHostAddress(I)Ljava/lang/String;
    .locals 8
    .parameter "n"

    .prologue
    .line 173
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->hasAssignedInterface()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 174
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v2

    .line 198
    :goto_0
    return-object v2

    .line 176
    :cond_0
    const/4 v3, 0x0

    .line 178
    .local v3, hostAddrCnt:I
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v5

    .line 179
    .local v5, nis:Ljava/util/Enumeration;
    :cond_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 180
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 181
    .local v4, ni:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 182
    .local v1, addrs:Ljava/util/Enumeration;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 183
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 184
    .local v0, addr:Ljava/net/InetAddress;
    invoke-static {v0}, Lorg/cybergarage/net/HostInterface;->isUsableAddress(Ljava/net/InetAddress;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 186
    if-ge v3, p0, :cond_3

    .line 187
    add-int/lit8 v3, v3, 0x1

    .line 188
    goto :goto_1

    .line 190
    :cond_3
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 193
    .local v2, host:Ljava/lang/String;
    goto :goto_0

    .line 197
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v1           #addrs:Ljava/util/Enumeration;
    .end local v2           #host:Ljava/lang/String;
    .end local v4           #ni:Ljava/net/NetworkInterface;
    .end local v5           #nis:Ljava/util/Enumeration;
    :catch_0
    move-exception v6

    .line 198
    :cond_4
    const-string v2, ""

    goto :goto_0
.end method

.method public static final getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "host"
    .parameter "port"
    .parameter "uri"

    .prologue
    .line 287
    move-object v0, p0

    .line 288
    .local v0, hostAddr:Ljava/lang/String;
    invoke-static {p0}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final getIPv4Address()Ljava/lang/String;
    .locals 5

    .prologue
    .line 261
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v1

    .line 262
    .local v1, addrCnt:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 263
    invoke-static {v2}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, addr:Ljava/lang/String;
    invoke-static {v0}, Lorg/cybergarage/net/HostInterface;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 267
    .end local v0           #addr:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 262
    .restart local v0       #addr:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v0           #addr:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static final getIPv6Address()Ljava/lang/String;
    .locals 5

    .prologue
    .line 272
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v1

    .line 273
    .local v1, addrCnt:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 274
    invoke-static {v2}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, addr:Ljava/lang/String;
    invoke-static {v0}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 278
    .end local v0           #addr:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 273
    .restart local v0       #addr:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    .end local v0           #addr:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static final getInetAddress(I[Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 9
    .parameter "ipfilter"
    .parameter "interfaces"

    .prologue
    .line 131
    if-eqz p1, :cond_5

    .line 132
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 133
    .local v5, iflist:Ljava/util/Vector;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, p1

    if-ge v4, v8, :cond_1

    .line 136
    :try_start_0
    aget-object v8, p1, v4

    invoke-static {v8}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 140
    .local v6, ni:Ljava/net/NetworkInterface;
    if-eqz v6, :cond_0

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v6           #ni:Ljava/net/NetworkInterface;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v3

    .line 138
    .local v3, e:Ljava/net/SocketException;
    goto :goto_1

    .line 143
    .end local v3           #e:Ljava/net/SocketException;
    :cond_1
    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v7

    .line 151
    .end local v4           #i:I
    .end local v5           #iflist:Ljava/util/Vector;
    .local v7, nis:Ljava/util/Enumeration;
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v1, addresses:Ljava/util/ArrayList;
    :cond_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 153
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 154
    .restart local v6       #ni:Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 155
    .local v2, addrs:Ljava/util/Enumeration;
    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 156
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 157
    .local v0, addr:Ljava/net/InetAddress;
    and-int/lit16 v8, p0, 0x100

    if-nez v8, :cond_4

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_3

    .line 160
    :cond_4
    and-int/lit8 v8, p0, 0x1

    if-eqz v8, :cond_6

    instance-of v8, v0, Ljava/net/Inet4Address;

    if-eqz v8, :cond_6

    .line 161
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 146
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v1           #addresses:Ljava/util/ArrayList;
    .end local v2           #addrs:Ljava/util/Enumeration;
    .end local v6           #ni:Ljava/net/NetworkInterface;
    .end local v7           #nis:Ljava/util/Enumeration;
    :cond_5
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .restart local v7       #nis:Ljava/util/Enumeration;
    goto :goto_2

    .line 147
    .end local v7           #nis:Ljava/util/Enumeration;
    :catch_1
    move-exception v3

    .line 148
    .restart local v3       #e:Ljava/net/SocketException;
    const/4 v8, 0x0

    .line 167
    .end local v3           #e:Ljava/net/SocketException;
    :goto_4
    return-object v8

    .line 162
    .restart local v0       #addr:Ljava/net/InetAddress;
    .restart local v1       #addresses:Ljava/util/ArrayList;
    .restart local v2       #addrs:Ljava/util/Enumeration;
    .restart local v6       #ni:Ljava/net/NetworkInterface;
    .restart local v7       #nis:Ljava/util/Enumeration;
    :cond_6
    and-int/lit8 v8, p0, 0x10

    if-eqz v8, :cond_3

    instance-of v8, v0, Ljava/net/InetAddress;

    if-eqz v8, :cond_3

    .line 163
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 167
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v2           #addrs:Ljava/util/Enumeration;
    .end local v6           #ni:Ljava/net/NetworkInterface;
    :cond_7
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/net/InetAddress;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/net/InetAddress;

    check-cast v8, [Ljava/net/InetAddress;

    goto :goto_4
.end method

.method public static final getInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/cybergarage/net/HostInterface;->ifAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static final getNHostAddresses()I
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 98
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->hasAssignedInterface()Z

    move-result v6

    if-ne v6, v3, :cond_1

    .line 118
    .local v3, nHostAddrs:I
    :cond_0
    :goto_0
    return v3

    .line 101
    .end local v3           #nHostAddrs:I
    :cond_1
    const/4 v3, 0x0

    .line 103
    .restart local v3       #nHostAddrs:I
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v5

    .line 104
    .local v5, nis:Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 105
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 106
    .local v4, ni:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 107
    .local v1, addrs:Ljava/util/Enumeration;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 108
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 109
    .local v0, addr:Ljava/net/InetAddress;
    invoke-static {v0}, Lorg/cybergarage/net/HostInterface;->isUsableAddress(Ljava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    .line 111
    add-int/lit8 v3, v3, 0x1

    .line 112
    goto :goto_1

    .line 115
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v1           #addrs:Ljava/util/Enumeration;
    .end local v4           #ni:Ljava/net/NetworkInterface;
    .end local v5           #nis:Ljava/util/Enumeration;
    :catch_0
    move-exception v2

    .line 116
    .local v2, e:Ljava/lang/Exception;
    invoke-static {v2}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static final hasAssignedInterface()Z
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lorg/cybergarage/net/HostInterface;->ifAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final hasIPv4Addresses()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 235
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v1

    .line 236
    .local v1, addrCnt:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 237
    invoke-static {v2}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, addr:Ljava/lang/String;
    invoke-static {v0}, Lorg/cybergarage/net/HostInterface;->isIPv4Address(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 241
    .end local v0           #addr:Ljava/lang/String;
    :goto_1
    return v3

    .line 236
    .restart local v0       #addr:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    .end local v0           #addr:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static final hasIPv6Addresses()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 246
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v1

    .line 247
    .local v1, addrCnt:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 248
    invoke-static {v2}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, addr:Ljava/lang/String;
    invoke-static {v0}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 252
    .end local v0           #addr:Ljava/lang/String;
    :goto_1
    return v3

    .line 247
    .restart local v0       #addr:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    .end local v0           #addr:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static final isIPv4Address(Ljava/lang/String;)Z
    .locals 3
    .parameter "host"

    .prologue
    const/4 v1, 0x0

    .line 220
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 221
    .local v0, addr:Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 222
    const/4 v1, 0x1

    .line 226
    .end local v0           #addr:Ljava/net/InetAddress;
    :cond_0
    :goto_0
    return v1

    .line 225
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static final isIPv6Address(Ljava/lang/String;)Z
    .locals 3
    .parameter "host"

    .prologue
    const/4 v1, 0x0

    .line 208
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 209
    .local v0, addr:Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 210
    const/4 v1, 0x1

    .line 214
    .end local v0           #addr:Ljava/net/InetAddress;
    :cond_0
    :goto_0
    return v1

    .line 213
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static final isUsableAddress(Ljava/net/InetAddress;)Z
    .locals 3
    .parameter "addr"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 81
    sget-boolean v2, Lorg/cybergarage/net/HostInterface;->USE_LOOPBACK_ADDR:Z

    if-nez v2, :cond_1

    .line 82
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    sget-boolean v2, Lorg/cybergarage/net/HostInterface;->USE_ONLY_IPV4_ADDR:Z

    if-ne v2, v1, :cond_2

    .line 86
    instance-of v2, p0, Ljava/net/Inet6Address;

    if-nez v2, :cond_0

    .line 89
    :cond_2
    sget-boolean v2, Lorg/cybergarage/net/HostInterface;->USE_ONLY_IPV6_ADDR:Z

    if-ne v2, v1, :cond_3

    .line 90
    instance-of v2, p0, Ljava/net/Inet4Address;

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public static final setInterface(Ljava/lang/String;)V
    .locals 0
    .parameter "ifaddr"

    .prologue
    .line 60
    sput-object p0, Lorg/cybergarage/net/HostInterface;->ifAddress:Ljava/lang/String;

    .line 61
    return-void
.end method
