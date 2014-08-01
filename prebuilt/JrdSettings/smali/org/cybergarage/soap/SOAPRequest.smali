.class public Lorg/cybergarage/soap/SOAPRequest;
.super Lorg/cybergarage/http/HTTPRequest;
.source "SOAPRequest.java"


# static fields
.field private static final SOAPACTION:Ljava/lang/String; = "SOAPACTION"


# instance fields
.field private rootNode:Lorg/cybergarage/xml/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/cybergarage/http/HTTPRequest;-><init>()V

    .line 43
    const-string v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->setContentType(Ljava/lang/String;)V

    .line 44
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->setMethod(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 0
    .parameter "httpReq"

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/cybergarage/http/HTTPRequest;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPRequest;->set(Lorg/cybergarage/http/HTTPRequest;)V

    .line 50
    return-void
.end method

.method private declared-synchronized getRootNode()Lorg/cybergarage/xml/Node;
    .locals 5

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lorg/cybergarage/soap/SOAPRequest;->rootNode:Lorg/cybergarage/xml/Node;

    if-eqz v4, :cond_0

    .line 120
    iget-object v4, p0, Lorg/cybergarage/soap/SOAPRequest;->rootNode:Lorg/cybergarage/xml/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_0
    monitor-exit p0

    return-object v4

    .line 123
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getContent()[B

    move-result-object v0

    .line 124
    .local v0, content:[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 125
    .local v1, contentIn:Ljava/io/ByteArrayInputStream;
    invoke-static {}, Lorg/cybergarage/soap/SOAP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v3

    .line 126
    .local v3, parser:Lorg/cybergarage/xml/Parser;
    invoke-virtual {v3, v1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;

    move-result-object v4

    iput-object v4, p0, Lorg/cybergarage/soap/SOAPRequest;->rootNode:Lorg/cybergarage/xml/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    .end local v0           #content:[B
    .end local v1           #contentIn:Ljava/io/ByteArrayInputStream;
    .end local v3           #parser:Lorg/cybergarage/xml/Parser;
    :goto_1
    :try_start_2
    iget-object v4, p0, Lorg/cybergarage/soap/SOAPRequest;->rootNode:Lorg/cybergarage/xml/Node;

    goto :goto_0

    .line 128
    :catch_0
    move-exception v2

    .line 129
    .local v2, e:Lorg/cybergarage/xml/ParserException;
    invoke-static {v2}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 119
    .end local v2           #e:Lorg/cybergarage/xml/ParserException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private setRootNode(Lorg/cybergarage/xml/Node;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 114
    iput-object p1, p0, Lorg/cybergarage/soap/SOAPRequest;->rootNode:Lorg/cybergarage/xml/Node;

    .line 115
    return-void
.end method


# virtual methods
.method public getBodyNode()Lorg/cybergarage/xml/Node;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPRequest;->getEnvelopeNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 152
    .local v0, envNode:Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-object v1

    .line 154
    :cond_1
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->hasNodes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public getEnvelopeNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Lorg/cybergarage/soap/SOAPRequest;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public getSOAPAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSOAPAction(Ljava/lang/String;)Z
    .locals 5
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    const-string v4, "SOAPACTION"

    invoke-virtual {p0, v4}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, headerValue:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v2

    .line 71
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_2

    move v2, v3

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPRequest;->getSOAPAction()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, soapAction:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public postMessage(Ljava/lang/String;I)Lorg/cybergarage/soap/SOAPResponse;
    .locals 8
    .parameter "host"
    .parameter "port"

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Lorg/cybergarage/http/HTTPRequest;->post(Ljava/lang/String;I)Lorg/cybergarage/http/HTTPResponse;

    move-result-object v3

    .line 87
    .local v3, httpRes:Lorg/cybergarage/http/HTTPResponse;
    new-instance v5, Lorg/cybergarage/soap/SOAPResponse;

    invoke-direct {v5, v3}, Lorg/cybergarage/soap/SOAPResponse;-><init>(Lorg/cybergarage/http/HTTPResponse;)V

    .line 89
    .local v5, soapRes:Lorg/cybergarage/soap/SOAPResponse;
    invoke-virtual {v5}, Lorg/cybergarage/http/HTTPPacket;->getContent()[B

    move-result-object v1

    .line 90
    .local v1, content:[B
    array-length v7, v1

    if-gtz v7, :cond_0

    .line 103
    :goto_0
    return-object v5

    .line 94
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 95
    .local v0, byteIn:Ljava/io/ByteArrayInputStream;
    invoke-static {}, Lorg/cybergarage/soap/SOAP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v6

    .line 96
    .local v6, xmlParser:Lorg/cybergarage/xml/Parser;
    invoke-virtual {v6, v0}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;

    move-result-object v4

    .line 97
    .local v4, rootNode:Lorg/cybergarage/xml/Node;
    invoke-virtual {v5, v4}, Lorg/cybergarage/soap/SOAPResponse;->setEnvelopeNode(Lorg/cybergarage/xml/Node;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v0           #byteIn:Ljava/io/ByteArrayInputStream;
    .end local v4           #rootNode:Lorg/cybergarage/xml/Node;
    .end local v6           #xmlParser:Lorg/cybergarage/xml/Parser;
    :catch_0
    move-exception v2

    .line 100
    .local v2, e:Ljava/lang/Exception;
    invoke-static {v2}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public print()V
    .locals 3

    .prologue
    .line 179
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->hasContent()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-direct {p0}, Lorg/cybergarage/soap/SOAPRequest;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 183
    .local v0, rootElem:Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContent(Lorg/cybergarage/xml/Node;)V
    .locals 3
    .parameter "node"

    .prologue
    .line 166
    const-string v0, ""

    .line 167
    .local v0, conStr:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->setContent(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public setEnvelopeNode(Lorg/cybergarage/xml/Node;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lorg/cybergarage/soap/SOAPRequest;->setRootNode(Lorg/cybergarage/xml/Node;)V

    .line 142
    return-void
.end method

.method public setSOAPAction(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 58
    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/HTTPPacket;->setStringHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method
