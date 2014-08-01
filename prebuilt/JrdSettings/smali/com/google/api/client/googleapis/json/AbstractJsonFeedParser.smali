.class public abstract Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;
.super Ljava/lang/Object;
.source "AbstractJsonFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser$StopAtItems;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final feedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private feedParsed:Z

.field final parser:Lcom/google/api/client/json/JsonParser;


# direct methods
.method constructor <init>(Lcom/google/api/client/json/JsonParser;Ljava/lang/Class;)V
    .locals 0
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/json/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;,"Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser<TT;>;"
    .local p2, feedClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->parser:Lcom/google/api/client/json/JsonParser;

    .line 41
    iput-object p2, p0, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->feedClass:Ljava/lang/Class;

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    .local p0, this:Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;,"Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->parser:Lcom/google/api/client/json/JsonParser;

    invoke-virtual {v0}, Lcom/google/api/client/json/JsonParser;->close()V

    .line 99
    return-void
.end method

.method public parseFeed()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;,"Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser<TT;>;"
    const/4 v0, 0x1

    .line 51
    .local v0, close:Z
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->feedParsed:Z

    .line 52
    iget-object v2, p0, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->parser:Lcom/google/api/client/json/JsonParser;

    iget-object v3, p0, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->feedClass:Ljava/lang/Class;

    new-instance v4, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser$StopAtItems;

    invoke-direct {v4, p0}, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser$StopAtItems;-><init>(Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 53
    .local v1, result:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->close()V

    :cond_0
    return-object v1

    .line 56
    .end local v1           #result:Ljava/lang/Object;,"TT;"
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->close()V

    :cond_1
    throw v2
.end method

.method abstract parseItemInternal()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public parseNextItem()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;,"Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser<TT;>;"
    iget-object v1, p0, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->parser:Lcom/google/api/client/json/JsonParser;

    .line 77
    .local v1, parser:Lcom/google/api/client/json/JsonParser;
    iget-boolean v3, p0, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->feedParsed:Z

    if-nez v3, :cond_0

    .line 78
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->feedParsed:Z

    .line 79
    const-string v3, "items"

    invoke-virtual {v1, v3}, Lcom/google/api/client/json/JsonParser;->skipToKey(Ljava/lang/String;)V

    .line 81
    :cond_0
    const/4 v0, 0x1

    .line 83
    .local v0, close:Z
    :try_start_0
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/api/client/json/JsonToken;->START_OBJECT:Lcom/google/api/client/json/JsonToken;

    if-ne v3, v4, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->parseItemInternal()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 85
    .local v2, result:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 89
    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->close()V

    .line 93
    .end local v2           #result:Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v2

    .line 89
    :cond_2
    if-eqz v0, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->close()V

    .line 93
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_4

    .line 90
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->close()V

    :cond_4
    throw v3
.end method
