.class public Lcom/google/api/client/http/json/JsonHttpParser;
.super Ljava/lang/Object;
.source "JsonHttpParser.java"

# interfaces
.implements Lcom/google/api/client/http/HttpParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/json/JsonHttpParser$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/JsonFactory;)V
    .locals 1
    .parameter "jsonFactory"

    .prologue
    .line 72
    const-string v0, "application/json"

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/http/json/JsonHttpParser;-><init>(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V
    .locals 1
    .parameter "jsonFactory"
    .parameter "contentType"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpParser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 82
    iput-object p2, p0, Lcom/google/api/client/http/json/JsonHttpParser;->contentType:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public static builder(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/http/json/JsonHttpParser$Builder;
    .locals 1
    .parameter "jsonFactory"

    .prologue
    .line 138
    new-instance v0, Lcom/google/api/client/http/json/JsonHttpParser$Builder;

    invoke-direct {v0, p0}, Lcom/google/api/client/http/json/JsonHttpParser$Builder;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    return-object v0
.end method

.method public static parserForResponse(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/json/JsonParser;
    .locals 3
    .parameter "jsonFactory"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 120
    .local v0, content:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;

    move-result-object v1

    .line 121
    .local v1, parser:Lcom/google/api/client/json/JsonParser;
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    const/4 v0, 0x0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    throw v0

    :cond_0
    return-object v1

    .line 125
    .end local v1           #parser:Lcom/google/api/client/json/JsonParser;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v2
.end method


# virtual methods
.method public final getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpParser;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpParser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public parse(Lcom/google/api/client/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "response"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/http/HttpResponse;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    .local p2, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpParser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-static {v0, p1}, Lcom/google/api/client/http/json/JsonHttpParser;->parserForResponse(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/google/api/client/json/JsonParser;->parseAndClose(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
