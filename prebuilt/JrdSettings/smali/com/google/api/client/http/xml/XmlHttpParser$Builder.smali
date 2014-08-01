.class public Lcom/google/api/client/http/xml/XmlHttpParser$Builder;
.super Ljava/lang/Object;
.source "XmlHttpParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/xml/XmlHttpParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contentType:Ljava/lang/String;

.field private final namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;)V
    .locals 1
    .parameter "namespaceDictionary"

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const-string v0, "application/xml"

    iput-object v0, p0, Lcom/google/api/client/http/xml/XmlHttpParser$Builder;->contentType:Ljava/lang/String;

    .line 147
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/xml/XmlNamespaceDictionary;

    iput-object v0, p0, Lcom/google/api/client/http/xml/XmlHttpParser$Builder;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 148
    return-void
.end method


# virtual methods
.method public build()Lcom/google/api/client/http/xml/XmlHttpParser;
    .locals 3

    .prologue
    .line 152
    new-instance v0, Lcom/google/api/client/http/xml/XmlHttpParser;

    iget-object v1, p0, Lcom/google/api/client/http/xml/XmlHttpParser$Builder;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    iget-object v2, p0, Lcom/google/api/client/http/xml/XmlHttpParser$Builder;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/xml/XmlHttpParser;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/api/client/http/xml/XmlHttpParser$Builder;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getNamespaceDictionary()Lcom/google/api/client/xml/XmlNamespaceDictionary;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/api/client/http/xml/XmlHttpParser$Builder;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/google/api/client/http/xml/XmlHttpParser$Builder;
    .locals 1
    .parameter "contentType"

    .prologue
    .line 168
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/xml/XmlHttpParser$Builder;->contentType:Ljava/lang/String;

    .line 169
    return-object p0
.end method
