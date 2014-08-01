.class public final Lcom/google/api/client/googleapis/xml/atom/AtomPatchContent;
.super Lcom/google/api/client/http/xml/atom/AtomContent;
.source "AtomPatchContent.java"


# direct methods
.method public constructor <init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;)V
    .locals 2
    .parameter "namespaceDictionary"
    .parameter "patchEntry"

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/api/client/http/xml/atom/AtomContent;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;Z)V

    .line 59
    new-instance v0, Lcom/google/api/client/http/HttpMediaType;

    sget-object v1, Lcom/google/api/client/xml/Xml;->MEDIA_TYPE:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/xml/atom/AtomPatchContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/googleapis/xml/atom/AtomPatchContent;

    .line 60
    return-void
.end method


# virtual methods
.method public setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/googleapis/xml/atom/AtomPatchContent;
    .locals 0
    .parameter "mediaType"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/google/api/client/http/xml/atom/AtomContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/atom/AtomContent;

    .line 65
    return-object p0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/xml/atom/AtomPatchContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/googleapis/xml/atom/AtomPatchContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/xml/atom/AtomPatchContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/googleapis/xml/atom/AtomPatchContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/atom/AtomContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/xml/atom/AtomPatchContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/googleapis/xml/atom/AtomPatchContent;

    move-result-object v0

    return-object v0
.end method
