.class public abstract Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
.super Lcom/google/api/client/http/AbstractHttpContent;
.source "AbstractXmlHttpContent.java"


# instance fields
.field private final namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;)V
    .locals 2
    .parameter "namespaceDictionary"

    .prologue
    .line 45
    new-instance v0, Lcom/google/api/client/http/HttpMediaType;

    sget-object v1, Lcom/google/api/client/xml/Xml;->MEDIA_TYPE:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/api/client/http/AbstractHttpContent;-><init>(Lcom/google/api/client/http/HttpMediaType;)V

    .line 46
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/xml/XmlNamespaceDictionary;

    iput-object v0, p0, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 47
    return-void
.end method


# virtual methods
.method public final getNamespaceDictionary()Lcom/google/api/client/xml/XmlNamespaceDictionary;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    return-object v0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
    .locals 0
    .parameter "mediaType"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;

    .line 77
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
    .locals 1
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/google/api/client/http/HttpMediaType;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;

    .line 71
    return-object p0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Lcom/google/api/client/xml/Xml;->createSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 54
    .local v0, serializer:Lorg/xmlpull/v1/XmlSerializer;
    invoke-virtual {p0}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 56
    return-void
.end method

.method protected abstract writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
