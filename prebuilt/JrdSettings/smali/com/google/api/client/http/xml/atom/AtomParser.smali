.class public final Lcom/google/api/client/http/xml/atom/AtomParser;
.super Lcom/google/api/client/http/xml/XmlHttpParser;
.source "AtomParser.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;)V
    .locals 1
    .parameter "namespaceDictionary"

    .prologue
    .line 56
    const-string v0, "application/atom+xml"

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/http/xml/XmlHttpParser;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/String;)V

    .line 57
    return-void
.end method
