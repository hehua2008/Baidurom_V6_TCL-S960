.class public Lcom/google/api/client/http/json/JsonHttpParser$Builder;
.super Ljava/lang/Object;
.source "JsonHttpParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/json/JsonHttpParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contentType:Ljava/lang/String;

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/json/JsonFactory;)V
    .locals 1
    .parameter "jsonFactory"

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const-string v0, "application/json"

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpParser$Builder;->contentType:Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lcom/google/api/client/http/json/JsonHttpParser$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 163
    return-void
.end method


# virtual methods
.method public build()Lcom/google/api/client/http/json/JsonHttpParser;
    .locals 3

    .prologue
    .line 167
    new-instance v0, Lcom/google/api/client/http/json/JsonHttpParser;

    iget-object v1, p0, Lcom/google/api/client/http/json/JsonHttpParser$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    iget-object v2, p0, Lcom/google/api/client/http/json/JsonHttpParser$Builder;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/json/JsonHttpParser;-><init>(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpParser$Builder;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpParser$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/google/api/client/http/json/JsonHttpParser$Builder;
    .locals 1
    .parameter "contentType"

    .prologue
    .line 183
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpParser$Builder;->contentType:Ljava/lang/String;

    .line 184
    return-object p0
.end method
