.class public Lcom/google/api/client/http/xml/atom/AtomContent;
.super Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
.source "AtomContent.java"


# instance fields
.field private final entry:Ljava/lang/Object;

.field private final isEntry:Z


# direct methods
.method protected constructor <init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "namespaceDictionary"
    .parameter "entry"
    .parameter "isEntry"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;)V

    .line 75
    new-instance v0, Lcom/google/api/client/http/HttpMediaType;

    sget-object v1, Lcom/google/api/client/xml/atom/Atom;->MEDIA_TYPE:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/xml/atom/AtomContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/atom/AtomContent;

    .line 76
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/xml/atom/AtomContent;->entry:Ljava/lang/Object;

    .line 77
    iput-boolean p3, p0, Lcom/google/api/client/http/xml/atom/AtomContent;->isEntry:Z

    .line 78
    return-void
.end method

.method public static forEntry(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;)Lcom/google/api/client/http/xml/atom/AtomContent;
    .locals 2
    .parameter "namespaceDictionary"
    .parameter "entry"

    .prologue
    .line 88
    new-instance v0, Lcom/google/api/client/http/xml/atom/AtomContent;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/api/client/http/xml/atom/AtomContent;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public static forFeed(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;)Lcom/google/api/client/http/xml/atom/AtomContent;
    .locals 2
    .parameter "namespaceDictionary"
    .parameter "feed"

    .prologue
    .line 99
    new-instance v0, Lcom/google/api/client/http/xml/atom/AtomContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/api/client/http/xml/atom/AtomContent;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method public final getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/api/client/http/xml/atom/AtomContent;->entry:Ljava/lang/Object;

    return-object v0
.end method

.method public final isEntry()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/google/api/client/http/xml/atom/AtomContent;->isEntry:Z

    return v0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/xml/atom/AtomContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/atom/AtomContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/xml/atom/AtomContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/atom/AtomContent;

    move-result-object v0

    return-object v0
.end method

.method public setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/atom/AtomContent;
    .locals 0
    .parameter "mediaType"

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;

    .line 117
    return-object p0
.end method

.method public bridge synthetic setType(Ljava/lang/String;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/xml/atom/AtomContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/xml/atom/AtomContent;

    move-result-object v0

    return-object v0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/http/xml/atom/AtomContent;
    .locals 0
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;

    .line 111
    return-object p0
.end method

.method public final writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;->getNamespaceDictionary()Lcom/google/api/client/xml/XmlNamespaceDictionary;

    move-result-object v1

    const-string v2, "http://www.w3.org/2005/Atom"

    iget-boolean v0, p0, Lcom/google/api/client/http/xml/atom/AtomContent;->isEntry:Z

    if-eqz v0, :cond_0

    const-string v0, "entry"

    :goto_0
    iget-object v3, p0, Lcom/google/api/client/http/xml/atom/AtomContent;->entry:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    return-void

    .line 122
    :cond_0
    const-string v0, "feed"

    goto :goto_0
.end method
