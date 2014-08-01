.class public Lorg/cybergarage/upnp/control/ControlRequest;
.super Lorg/cybergarage/soap/SOAPRequest;
.source "ControlRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/cybergarage/soap/SOAPRequest;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 0
    .parameter "httpReq"

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/cybergarage/soap/SOAPRequest;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPRequest;->set(Lorg/cybergarage/http/HTTPRequest;)V

    .line 64
    return-void
.end method


# virtual methods
.method public isActionControl()Z
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ControlRequest;->isQueryControl()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQueryControl()Z
    .locals 1

    .prologue
    .line 72
    const-string v0, "urn:schemas-upnp-org:control-1-0#QueryStateVariable"

    invoke-virtual {p0, v0}, Lorg/cybergarage/soap/SOAPRequest;->isSOAPAction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected setRequestHost(Lorg/cybergarage/upnp/Service;)V
    .locals 11
    .parameter "service"

    .prologue
    const/4 v10, 0x1

    .line 86
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getControlURL()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, ctrlURL:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v8

    invoke-virtual {v8}, Lorg/cybergarage/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, urlBase:Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 92
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 93
    .local v6, url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, basePath:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 95
    .local v0, baseLen:I
    if-lez v0, :cond_1

    .line 96
    if-lt v10, v0, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2f

    if-eq v8, v9, :cond_1

    .line 97
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 104
    .end local v0           #baseLen:I
    .end local v1           #basePath:Ljava/lang/String;
    .end local v6           #url:Ljava/net/URL;
    :cond_1
    :goto_0
    invoke-virtual {p0, v2, v10}, Lorg/cybergarage/http/HTTPRequest;->setURI(Ljava/lang/String;Z)V

    .line 108
    const-string v3, ""

    .line 109
    .local v3, postURL:Ljava/lang/String;
    invoke-static {v2}, Lorg/cybergarage/http/HTTP;->isAbsoluteURL(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v10, :cond_2

    .line 110
    move-object v3, v2

    .line 112
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_4

    .line 113
    :cond_3
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v8

    invoke-virtual {v8}, Lorg/cybergarage/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v3

    .line 117
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_6

    .line 118
    :cond_5
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v8

    invoke-virtual {v8}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v3

    .line 120
    :cond_6
    invoke-static {v3}, Lorg/cybergarage/http/HTTP;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, reqHost:Ljava/lang/String;
    invoke-static {v3}, Lorg/cybergarage/http/HTTP;->getPort(Ljava/lang/String;)I

    move-result v5

    .line 123
    .local v5, reqPort:I
    invoke-virtual {p0, v4, v5}, Lorg/cybergarage/http/HTTPPacket;->setHost(Ljava/lang/String;I)V

    .line 124
    invoke-virtual {p0, v4}, Lorg/cybergarage/http/HTTPRequest;->setRequestHost(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, v5}, Lorg/cybergarage/http/HTTPRequest;->setRequestPort(I)V

    .line 126
    return-void

    .line 100
    .end local v3           #postURL:Ljava/lang/String;
    .end local v4           #reqHost:Ljava/lang/String;
    .end local v5           #reqPort:I
    :catch_0
    move-exception v8

    goto :goto_0
.end method
