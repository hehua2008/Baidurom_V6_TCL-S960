.class public Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;
.super Ljava/lang/Object;
.source "DIDLLite.java"


# static fields
.field public static final CONTAINER:Ljava/lang/String; = "container"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final NAME:Ljava/lang/String; = "DIDL-Lite"

.field public static final OBJECT_CONTAINER:Ljava/lang/String; = "object.container"

.field public static final PARENTID:Ljava/lang/String; = "parentID"

.field public static final RES:Ljava/lang/String; = "res"

.field public static final RESTICTED:Ljava/lang/String; = "restricted"

.field public static final RES_PROTOCOLINFO:Ljava/lang/String; = "protocolInfo"

.field public static final SEARCHABLE:Ljava/lang/String; = "searchable"

.field public static final XMLNS:Ljava/lang/String; = "xmlns"

.field public static final XMLNS_DC:Ljava/lang/String; = "xmlns:dc"

.field public static final XMLNS_DC_URL:Ljava/lang/String; = "http://purl.org/dc/elements/1.1/"

.field public static final XMLNS_DLNA:Ljava/lang/String; = "xmlns:dlna"

.field public static final XMLNS_DLNA_URL:Ljava/lang/String; = "urn:schemas-upnp-org:metadata-1-0/dlna/"

.field public static final XMLNS_UPNP:Ljava/lang/String; = "xmlns:upnp"

.field public static final XMLNS_UPNP_URL:Ljava/lang/String; = "urn:schemas-upnp-org:metadata-1-0/upnp/"

.field public static final XMLNS_URL:Ljava/lang/String; = "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"


# instance fields
.field private nodeList:Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->nodeList:Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    .line 64
    return-void
.end method


# virtual methods
.method public addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 80
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->nodeList:Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .locals 1
    .parameter "n"

    .prologue
    .line 90
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->nodeList:Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    return-object v0
.end method

.method public getNContentNodes()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->nodeList:Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public output(Ljava/io/PrintWriter;)V
    .locals 7
    .parameter "ps"

    .prologue
    .line 100
    const-string v5, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    new-instance v1, Lorg/cybergarage/upnp/std/av/server/object/DIDLLiteNode;

    invoke-direct {v1}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLiteNode;-><init>()V

    .line 104
    .local v1, didlNode:Lorg/cybergarage/upnp/std/av/server/object/DIDLLiteNode;
    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, name:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Node;->outputAttributes(Ljava/io/PrintWriter;)V

    .line 109
    const-string v5, ">"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->getNContentNodes()I

    move-result v3

    .line 112
    .local v3, nNodes:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 113
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    .line 114
    .local v0, contentNode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    const/4 v5, 0x0

    invoke-virtual {v0, p1, v5}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->output(Ljava/io/PrintWriter;Z)V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v0           #contentNode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "</"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public setContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 74
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->nodeList:Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 75
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->nodeList:Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 124
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 125
    .local v0, byteOut:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 126
    .local v3, writer:Ljava/io/Writer;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 127
    .local v2, pr:Ljava/io/PrintWriter;
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->output(Ljava/io/PrintWriter;)V

    .line 128
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 129
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 134
    .end local v0           #byteOut:Ljava/io/ByteArrayOutputStream;
    .end local v2           #pr:Ljava/io/PrintWriter;
    .end local v3           #writer:Ljava/io/Writer;
    :goto_0
    return-object v4

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 134
    const-string v4, ""

    goto :goto_0
.end method
