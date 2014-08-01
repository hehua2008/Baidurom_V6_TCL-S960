.class public final Lcom/google/api/client/googleapis/json/JsonFeedParser;
.super Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;
.source "JsonFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser",
        "<TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final itemClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/JsonParser;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .parameter "parser"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/json/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TI;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lcom/google/api/client/googleapis/json/JsonFeedParser;,"Lcom/google/api/client/googleapis/json/JsonFeedParser<TT;TI;>;"
    .local p2, feedClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p3, itemClass:Ljava/lang/Class;,"Ljava/lang/Class<TI;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;-><init>(Lcom/google/api/client/json/JsonParser;Ljava/lang/Class;)V

    .line 45
    iput-object p3, p0, Lcom/google/api/client/googleapis/json/JsonFeedParser;->itemClass:Ljava/lang/Class;

    .line 46
    return-void
.end method

.method public static use(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/api/client/googleapis/json/JsonFeedParser;
    .locals 2
    .parameter "jsonFactory"
    .parameter "response"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/json/JsonFactory;",
            "Lcom/google/api/client/http/HttpResponse;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TI;>;)",
            "Lcom/google/api/client/googleapis/json/JsonFeedParser",
            "<TT;TI;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    .local p2, feedClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p3, itemClass:Ljava/lang/Class;,"Ljava/lang/Class<TI;>;"
    invoke-static {p0, p1}, Lcom/google/api/client/googleapis/json/JsonCParser;->parserForResponse(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    .line 72
    .local v0, parser:Lcom/google/api/client/json/JsonParser;
    new-instance v1, Lcom/google/api/client/googleapis/json/JsonFeedParser;

    invoke-direct {v1, v0, p2, p3}, Lcom/google/api/client/googleapis/json/JsonFeedParser;-><init>(Lcom/google/api/client/json/JsonParser;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v1
.end method


# virtual methods
.method parseItemInternal()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    .local p0, this:Lcom/google/api/client/googleapis/json/JsonFeedParser;,"Lcom/google/api/client/googleapis/json/JsonFeedParser<TT;TI;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->parser:Lcom/google/api/client/json/JsonParser;

    iget-object v1, p0, Lcom/google/api/client/googleapis/json/JsonFeedParser;->itemClass:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseNextItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lcom/google/api/client/googleapis/json/JsonFeedParser;,"Lcom/google/api/client/googleapis/json/JsonFeedParser<TT;TI;>;"
    invoke-super {p0}, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->parseNextItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
