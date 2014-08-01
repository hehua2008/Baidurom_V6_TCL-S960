.class public Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
.super Lcom/google/api/client/http/HttpResponseException;
.source "GoogleJsonResponseException.java"


# static fields
.field private static final serialVersionUID:J = 0x5aff10c793dbb70L


# instance fields
.field private final transient details:Lcom/google/api/client/googleapis/json/GoogleJsonError;

.field private final transient jsonFactory:Lcom/google/api/client/json/JsonFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;Lcom/google/api/client/googleapis/json/GoogleJsonError;Ljava/lang/String;)V
    .locals 0
    .parameter "jsonFactory"
    .parameter "response"
    .parameter "details"
    .parameter "message"

    .prologue
    .line 74
    invoke-direct {p0, p2, p4}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponse;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 76
    iput-object p3, p0, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->details:Lcom/google/api/client/googleapis/json/GoogleJsonError;

    .line 77
    return-void
.end method

.method public static execute(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;
    .locals 3
    .parameter "jsonFactory"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getThrowExceptionOnExecuteError()Z

    move-result v0

    .line 195
    .local v0, originalThrowExceptionOnExecuteError:Z
    if-eqz v0, :cond_0

    .line 196
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/api/client/http/HttpRequest;->setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;

    .line 198
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 199
    .local v1, response:Lcom/google/api/client/http/HttpResponse;
    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;

    .line 200
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 201
    :cond_1
    return-object v1

    .line 203
    :cond_2
    invoke-static {p0, v1}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->from(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    move-result-object v2

    throw v2
.end method

.method public static from(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    .locals 9
    .parameter "jsonFactory"
    .parameter "response"

    .prologue
    .line 112
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const/4 v3, 0x0

    .line 114
    .local v3, details:Lcom/google/api/client/googleapis/json/GoogleJsonError;
    const/4 v2, 0x0

    .line 116
    .local v2, detailString:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v7

    if-nez v7, :cond_8

    sget-object v7, Lcom/google/api/client/json/Json;->MEDIA_TYPE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/api/client/http/HttpMediaType;->equalsIgnoreParameters(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    if-eqz v7, :cond_8

    .line 119
    const/4 v6, 0x0

    .line 121
    .local v6, parser:Lcom/google/api/client/json/JsonParser;
    :try_start_1
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;

    move-result-object v6

    .line 122
    invoke-virtual {v6}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v1

    .line 124
    .local v1, currentToken:Lcom/google/api/client/json/JsonToken;
    if-nez v1, :cond_0

    .line 125
    invoke-virtual {v6}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v1

    .line 128
    :cond_0
    if-eqz v1, :cond_1

    .line 130
    const-string v7, "error"

    invoke-virtual {v6, v7}, Lcom/google/api/client/json/JsonParser;->skipToKey(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v6}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    if-eq v7, v8, :cond_1

    .line 132
    const-class v7, Lcom/google/api/client/googleapis/json/GoogleJsonError;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/google/api/client/json/JsonParser;->parseAndClose(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-object v3, v0

    .line 133
    invoke-virtual {v3}, Lcom/google/api/client/json/GenericJson;->toPrettyString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 140
    :cond_1
    if-nez v6, :cond_4

    .line 141
    :try_start_2
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->ignore()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    .end local v1           #currentToken:Lcom/google/api/client/json/JsonToken;
    .end local v6           #parser:Lcom/google/api/client/json/JsonParser;
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/google/api/client/http/HttpResponseException;->computeMessageBuffer(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 155
    .local v5, message:Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 156
    sget-object v7, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_3
    new-instance v7, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, p1, v3, v8}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;-><init>(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;Lcom/google/api/client/googleapis/json/GoogleJsonError;Ljava/lang/String;)V

    return-object v7

    .line 142
    .end local v5           #message:Ljava/lang/StringBuilder;
    .restart local v1       #currentToken:Lcom/google/api/client/json/JsonToken;
    .restart local v6       #parser:Lcom/google/api/client/json/JsonParser;
    :cond_4
    if-nez v3, :cond_2

    .line 143
    :try_start_3
    invoke-virtual {v6}, Lcom/google/api/client/json/JsonParser;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 149
    .end local v1           #currentToken:Lcom/google/api/client/json/JsonToken;
    .end local v6           #parser:Lcom/google/api/client/json/JsonParser;
    :catch_0
    move-exception v4

    .line 151
    .local v4, exception:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v4           #exception:Ljava/io/IOException;
    .restart local v6       #parser:Lcom/google/api/client/json/JsonParser;
    :catch_1
    move-exception v4

    .line 138
    .restart local v4       #exception:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 140
    if-nez v6, :cond_5

    .line 141
    :try_start_5
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    goto :goto_0

    .line 142
    :cond_5
    if-nez v3, :cond_2

    .line 143
    invoke-virtual {v6}, Lcom/google/api/client/json/JsonParser;->close()V

    goto :goto_0

    .line 140
    .end local v4           #exception:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-nez v6, :cond_7

    .line 141
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 143
    :cond_6
    :goto_1
    throw v7

    .line 142
    :cond_7
    if-nez v3, :cond_6

    .line 143
    invoke-virtual {v6}, Lcom/google/api/client/json/JsonParser;->close()V

    goto :goto_1

    .line 147
    .end local v6           #parser:Lcom/google/api/client/json/JsonParser;
    :cond_8
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public final getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->details:Lcom/google/api/client/googleapis/json/GoogleJsonError;

    return-object v0
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method
