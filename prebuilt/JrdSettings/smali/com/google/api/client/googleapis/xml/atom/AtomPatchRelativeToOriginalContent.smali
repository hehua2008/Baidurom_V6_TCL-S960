.class public final Lcom/google/api/client/googleapis/xml/atom/AtomPatchRelativeToOriginalContent;
.super Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
.source "AtomPatchRelativeToOriginalContent.java"


# instance fields
.field private final originalEntry:Ljava/lang/Object;

.field private final patchedEntry:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "namespaceDictionary"
    .parameter "originalEntry"
    .parameter "patchedEntry"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;)V

    .line 64
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/xml/atom/AtomPatchRelativeToOriginalContent;->originalEntry:Ljava/lang/Object;

    .line 65
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/xml/atom/AtomPatchRelativeToOriginalContent;->patchedEntry:Ljava/lang/Object;

    .line 66
    return-void
.end method


# virtual methods
.method public final getOriginalEntry()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/api/client/googleapis/xml/atom/AtomPatchRelativeToOriginalContent;->originalEntry:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPatchedEntry()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/api/client/googleapis/xml/atom/AtomPatchRelativeToOriginalContent;->patchedEntry:Ljava/lang/Object;

    return-object v0
.end method

.method public setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/googleapis/xml/atom/AtomPatchRelativeToOriginalContent;
    .locals 0
    .parameter "mediaType"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;

    .line 77
    return-object p0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/xml/atom/AtomPatchRelativeToOriginalContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/googleapis/xml/atom/AtomPatchRelativeToOriginalContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/xml/atom/AtomPatchRelativeToOriginalContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/googleapis/xml/atom/AtomPatchRelativeToOriginalContent;

    move-result-object v0

    return-object v0
.end method

.method protected writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lcom/google/api/client/googleapis/xml/atom/AtomPatchRelativeToOriginalContent;->patchedEntry:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/api/client/googleapis/xml/atom/AtomPatchRelativeToOriginalContent;->originalEntry:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom;->computePatch(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 71
    .local v0, patch:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;->getNamespaceDictionary()Lcom/google/api/client/xml/XmlNamespaceDictionary;

    move-result-object v1

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "entry"

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    return-void
.end method
