.class public Lorg/cybergarage/upnp/control/ActionRequest;
.super Lorg/cybergarage/upnp/control/ControlRequest;
.source "ActionRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/cybergarage/upnp/control/ControlRequest;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 0
    .parameter "httpReq"

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/cybergarage/upnp/control/ControlRequest;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPRequest;->set(Lorg/cybergarage/http/HTTPRequest;)V

    .line 39
    return-void
.end method

.method private createContentNode(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/Action;Lorg/cybergarage/upnp/ArgumentList;)Lorg/cybergarage/xml/Node;
    .locals 8
    .parameter "service"
    .parameter "action"
    .parameter "argList"

    .prologue
    .line 116
    invoke-virtual {p2}, Lorg/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, actionName:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, serviceType:Ljava/lang/String;
    new-instance v1, Lorg/cybergarage/xml/Node;

    invoke-direct {v1}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 120
    .local v1, actionNode:Lorg/cybergarage/xml/Node;
    const-string v7, "u"

    invoke-virtual {v1, v7, v0}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v7, "u"

    invoke-virtual {v1, v7, v6}, Lorg/cybergarage/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v3

    .line 124
    .local v3, argListCnt:I
    const/4 v5, 0x0

    .local v5, n:I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 125
    invoke-virtual {p3, v5}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    .line 126
    .local v2, arg:Lorg/cybergarage/upnp/Argument;
    new-instance v4, Lorg/cybergarage/xml/Node;

    invoke-direct {v4}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 127
    .local v4, argNode:Lorg/cybergarage/xml/Node;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, v4}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 124
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 132
    .end local v2           #arg:Lorg/cybergarage/upnp/Argument;
    .end local v4           #argNode:Lorg/cybergarage/xml/Node;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ActionRequest;->getActionNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 58
    .local v2, node:Lorg/cybergarage/xml/Node;
    if-nez v2, :cond_0

    .line 59
    const-string v3, ""

    .line 66
    :goto_0
    return-object v3

    .line 60
    :cond_0
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 62
    const-string v3, ""

    goto :goto_0

    .line 63
    :cond_1
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 64
    .local v0, idx:I
    if-gez v0, :cond_2

    .line 65
    const-string v3, ""

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getActionNode()Lorg/cybergarage/xml/Node;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPRequest;->getBodyNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 48
    .local v0, bodyNode:Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-object v1

    .line 50
    :cond_1
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->hasNodes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public getArgumentList()Lorg/cybergarage/upnp/ArgumentList;
    .locals 7

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ActionRequest;->getActionNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 72
    .local v0, actNode:Lorg/cybergarage/xml/Node;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v5

    .line 73
    .local v5, nArgNodes:I
    new-instance v2, Lorg/cybergarage/upnp/ArgumentList;

    invoke-direct {v2}, Lorg/cybergarage/upnp/ArgumentList;-><init>()V

    .line 74
    .local v2, argList:Lorg/cybergarage/upnp/ArgumentList;
    const/4 v4, 0x0

    .local v4, n:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 75
    new-instance v1, Lorg/cybergarage/upnp/Argument;

    invoke-direct {v1}, Lorg/cybergarage/upnp/Argument;-><init>()V

    .line 76
    .local v1, arg:Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v0, v4}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v3

    .line 77
    .local v3, argNode:Lorg/cybergarage/xml/Node;
    invoke-virtual {v3}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/cybergarage/upnp/Argument;->setName(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v3}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    .end local v1           #arg:Lorg/cybergarage/upnp/Argument;
    .end local v3           #argNode:Lorg/cybergarage/xml/Node;
    :cond_0
    return-object v2
.end method

.method public post()Lorg/cybergarage/upnp/control/ActionResponse;
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getRequestHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getRequestPort()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/cybergarage/soap/SOAPRequest;->postMessage(Ljava/lang/String;I)Lorg/cybergarage/soap/SOAPResponse;

    move-result-object v0

    .line 142
    .local v0, soapRes:Lorg/cybergarage/soap/SOAPResponse;
    new-instance v1, Lorg/cybergarage/upnp/control/ActionResponse;

    invoke-direct {v1, v0}, Lorg/cybergarage/upnp/control/ActionResponse;-><init>(Lorg/cybergarage/soap/SOAPResponse;)V

    return-object v1
.end method

.method public setRequest(Lorg/cybergarage/upnp/Action;Lorg/cybergarage/upnp/ArgumentList;)V
    .locals 9
    .parameter "action"
    .parameter "argList"

    .prologue
    .line 90
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getService()Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 92
    .local v4, service:Lorg/cybergarage/upnp/Service;
    invoke-virtual {p0, v4}, Lorg/cybergarage/upnp/control/ControlRequest;->setRequestHost(Lorg/cybergarage/upnp/Service;)V

    .line 94
    invoke-static {}, Lorg/cybergarage/soap/SOAP;->createEnvelopeBodyNode()Lorg/cybergarage/xml/Node;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/cybergarage/soap/SOAPRequest;->setEnvelopeNode(Lorg/cybergarage/xml/Node;)V

    .line 95
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPRequest;->getEnvelopeNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    .line 96
    .local v3, envNode:Lorg/cybergarage/xml/Node;
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPRequest;->getBodyNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 97
    .local v2, bodyNode:Lorg/cybergarage/xml/Node;
    invoke-direct {p0, v4, p1, p2}, Lorg/cybergarage/upnp/control/ActionRequest;->createContentNode(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/Action;Lorg/cybergarage/upnp/ArgumentList;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 98
    .local v1, argNode:Lorg/cybergarage/xml/Node;
    invoke-virtual {v2, v1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 99
    invoke-virtual {p0, v3}, Lorg/cybergarage/soap/SOAPRequest;->setContent(Lorg/cybergarage/xml/Node;)V

    .line 101
    invoke-virtual {v4}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, serviceType:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, actionName:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, soapAction:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lorg/cybergarage/soap/SOAPRequest;->setSOAPAction(Ljava/lang/String;)V

    .line 108
    return-void
.end method
