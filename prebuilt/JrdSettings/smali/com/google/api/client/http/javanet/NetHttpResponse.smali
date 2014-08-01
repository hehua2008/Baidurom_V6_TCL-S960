.class final Lcom/google/api/client/http/javanet/NetHttpResponse;
.super Lcom/google/api/client/http/LowLevelHttpResponse;
.source "NetHttpResponse.java"


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private final headerNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final headerValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final responseCode:I

.field private final responseMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 9
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/api/client/http/LowLevelHttpResponse;-><init>()V

    .line 32
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->headerNames:Ljava/util/ArrayList;

    .line 33
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->headerValues:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    .line 37
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 38
    .local v6, responseCode:I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_0

    const/4 v6, 0x0

    .end local v6           #responseCode:I
    :cond_0
    iput v6, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->responseCode:I

    .line 39
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->responseMessage:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->headerNames:Ljava/util/ArrayList;

    .line 41
    .local v1, headerNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->headerValues:Ljava/util/ArrayList;

    .line 42
    .local v2, headerValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 43
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 44
    .local v5, key:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 46
    .local v7, value:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 47
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 117
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    .line 63
    .local v0, connection:Ljava/net/HttpURLConnection;
    iget v1, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->responseCode:I

    invoke-static {v1}, Lcom/google/api/client/http/HttpStatusCodes;->isSuccess(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 3

    .prologue
    .line 74
    iget-object v1, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, string:Ljava/lang/String;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderCount()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->headerNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->headerNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderValue(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->headerValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->responseCode:I

    return v0
.end method

.method public getStatusLine()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "HTTP/1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0           #result:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #result:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
