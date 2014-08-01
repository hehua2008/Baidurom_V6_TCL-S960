.class final Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;
.super Ljava/lang/Object;
.source "BatchUnparsedResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeLowLevelHttpResponse;,
        Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeLowLevelHttpRequest;,
        Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeResponseHttpTransport;
    }
.end annotation


# instance fields
.field backOffRequired:Z

.field private final boundary:Ljava/lang/String;

.field private final bufferedReader:Ljava/io/BufferedReader;

.field private contentId:I

.field hasNext:Z

.field private final requestInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final retryAllowed:Z

.field unsuccessfulRequestInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .parameter "inputStream"
    .parameter "boundary"
    .parameter
    .parameter "retryAllowed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo",
            "<**>;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    .local p3, requestInfos:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<**>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->hasNext:Z

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->unsuccessfulRequestInfos:Ljava/util/List;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->contentId:I

    .line 84
    iput-object p2, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->boundary:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->requestInfos:Ljava/util/List;

    .line 86
    iput-boolean p4, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->retryAllowed:Z

    .line 87
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->bufferedReader:Ljava/io/BufferedReader;

    .line 89
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->checkForFinalBoundary(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private checkForFinalBoundary(Ljava/lang/String;)V
    .locals 2
    .parameter "boundaryLine"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->hasNext:Z

    .line 229
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 231
    :cond_0
    return-void
.end method

.method private getFakeResponse(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/google/api/client/http/HttpResponse;
    .locals 5
    .parameter "statusCode"
    .parameter "partContent"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p3, headerNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, headerValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 214
    new-instance v1, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeResponseHttpTransport;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeResponseHttpTransport;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v1

    new-instance v2, Lcom/google/api/client/http/GenericUrl;

    const-string v3, "http://google.com/"

    invoke-direct {v2, v3}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/http/HttpRequestFactory;->buildPostRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 217
    .local v0, request:Lcom/google/api/client/http/HttpRequest;
    invoke-virtual {v0, v4}, Lcom/google/api/client/http/HttpRequest;->setLoggingEnabled(Z)Lcom/google/api/client/http/HttpRequest;

    .line 218
    invoke-virtual {v0, v4}, Lcom/google/api/client/http/HttpRequest;->setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;

    .line 219
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method private getParsedDataClass(Ljava/lang/Class;Lcom/google/api/client/http/HttpResponse;Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter "response"
    .parameter
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;",
            "Lcom/google/api/client/http/HttpResponse;",
            "Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo",
            "<TT;TE;>;",
            "Ljava/lang/String;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    .local p1, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TA;>;"
    .local p3, requestInfo:Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;,"Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<TT;TE;>;"
    iget-object v3, p3, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v3, p4}, Lcom/google/api/client/http/HttpRequest;->getParser(Ljava/lang/String;)Lcom/google/api/client/http/HttpParser;

    move-result-object v0

    .line 199
    .local v0, oldParser:Lcom/google/api/client/http/HttpParser;
    iget-object v3, p3, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v3}, Lcom/google/api/client/http/HttpRequest;->getParser()Lcom/google/api/client/util/ObjectParser;

    move-result-object v2

    .line 200
    .local v2, parser:Lcom/google/api/client/util/ObjectParser;
    const/4 v1, 0x0

    .line 201
    .local v1, parsed:Ljava/lang/Object;,"TA;"
    const-class v3, Ljava/lang/Void;

    if-eq p1, v3, :cond_0

    .line 202
    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/api/client/http/HttpResponse;->getContentCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-interface {v2, v3, v4, p1}, Lcom/google/api/client/util/ObjectParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 206
    .end local v1           #parsed:Ljava/lang/Object;,"TA;"
    :cond_0
    :goto_0
    return-object v1

    .line 202
    .restart local v1       #parsed:Ljava/lang/Object;,"TA;"
    :cond_1
    invoke-interface {v0, p2, p1}, Lcom/google/api/client/http/HttpParser;->parse(Lcom/google/api/client/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method private parseAndCallback(Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;IILcom/google/api/client/http/HttpResponse;)V
    .locals 11
    .parameter
    .parameter "statusCode"
    .parameter "contentID"
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo",
            "<TT;TE;>;II",
            "Lcom/google/api/client/http/HttpResponse;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, requestInfo:Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;,"Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<TT;TE;>;"
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 148
    iget-object v1, p1, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->callback:Lcom/google/api/client/googleapis/batch/BatchCallback;

    .line 150
    .local v1, callback:Lcom/google/api/client/googleapis/batch/BatchCallback;,"Lcom/google/api/client/googleapis/batch/BatchCallback<TT;TE;>;"
    new-instance v6, Lcom/google/api/client/googleapis/GoogleHeaders;

    invoke-direct {v6}, Lcom/google/api/client/googleapis/GoogleHeaders;-><init>()V

    .line 151
    .local v6, responseHeaders:Lcom/google/api/client/googleapis/GoogleHeaders;
    invoke-virtual {p4}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/google/api/client/util/GenericData;->putAll(Ljava/util/Map;)V

    .line 152
    iget-object v10, p1, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v10}, Lcom/google/api/client/http/HttpRequest;->getUnsuccessfulResponseHandler()Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    move-result-object v8

    .line 154
    .local v8, unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;
    iget-object v10, p1, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v10}, Lcom/google/api/client/http/HttpRequest;->getBackOffPolicy()Lcom/google/api/client/http/BackOffPolicy;

    move-result-object v0

    .line 157
    .local v0, backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;
    iput-boolean v7, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->backOffRequired:Z

    .line 159
    invoke-static {p2}, Lcom/google/api/client/http/HttpStatusCodes;->isSuccess(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 160
    if-nez v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v9, p1, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->dataClass:Ljava/lang/Class;

    invoke-virtual {v6}, Lcom/google/api/client/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, p4, p1, v10}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->getParsedDataClass(Ljava/lang/Class;Lcom/google/api/client/http/HttpResponse;Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 166
    .local v5, parsed:Ljava/lang/Object;,"TT;"
    invoke-interface {v1, v5, v6}, Lcom/google/api/client/googleapis/batch/BatchCallback;->onSuccess(Ljava/lang/Object;Lcom/google/api/client/googleapis/GoogleHeaders;)V

    goto :goto_0

    .line 168
    .end local v5           #parsed:Ljava/lang/Object;,"TT;"
    :cond_2
    iget-object v10, p1, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v10}, Lcom/google/api/client/http/HttpRequest;->getContent()Lcom/google/api/client/http/HttpContent;

    move-result-object v2

    .line 169
    .local v2, content:Lcom/google/api/client/http/HttpContent;
    iget-boolean v10, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->retryAllowed:Z

    if-eqz v10, :cond_4

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/google/api/client/http/HttpContent;->retrySupported()Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    move v7, v9

    .line 170
    .local v7, retrySupported:Z
    :cond_4
    const/4 v3, 0x0

    .line 171
    .local v3, errorHandled:Z
    if-eqz v8, :cond_5

    .line 172
    iget-object v10, p1, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-interface {v8, v10, p4, v7}, Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;->handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z

    move-result v3

    .line 175
    :cond_5
    if-nez v3, :cond_6

    if-eqz v7, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {p4}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v10

    invoke-interface {v0, v10}, Lcom/google/api/client/http/BackOffPolicy;->isBackOffRequired(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 177
    iput-boolean v9, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->backOffRequired:Z

    .line 179
    :cond_6
    if-eqz v7, :cond_8

    if-nez v3, :cond_7

    iget-boolean v9, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->backOffRequired:Z

    if-eqz v9, :cond_8

    .line 180
    :cond_7
    iget-object v9, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->unsuccessfulRequestInfos:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_8
    if-eqz v1, :cond_0

    .line 186
    iget-object v9, p1, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->errorClass:Ljava/lang/Class;

    invoke-virtual {v6}, Lcom/google/api/client/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, p4, p1, v10}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->getParsedDataClass(Ljava/lang/Class;Lcom/google/api/client/http/HttpResponse;Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 188
    .local v4, parsed:Ljava/lang/Object;,"TE;"
    invoke-interface {v1, v4, v6}, Lcom/google/api/client/googleapis/batch/BatchCallback;->onFailure(Ljava/lang/Object;Lcom/google/api/client/googleapis/GoogleHeaders;)V

    goto :goto_0
.end method


# virtual methods
.method parseNextResponse()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 100
    iget v9, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->contentId:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->contentId:I

    .line 104
    :cond_0
    iget-object v9, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 109
    :cond_1
    iget-object v9, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, statusLine:Ljava/lang/String;
    if-eqz v7, :cond_2

    move v9, v10

    :goto_0
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 111
    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, statusParts:[Ljava/lang/String;
    aget-object v9, v8, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 117
    .local v6, statusCode:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, headerNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v2, headerValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    iget-object v9, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 120
    const-string v9, ": "

    const/4 v12, 0x2

    invoke-virtual {v3, v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, headerParts:[Ljava/lang/String;
    aget-object v9, v1, v11

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    aget-object v9, v1, v10

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #headerNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #headerParts:[Ljava/lang/String;
    .end local v2           #headerValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #statusCode:I
    .end local v8           #statusParts:[Ljava/lang/String;
    :cond_2
    move v9, v11

    .line 110
    goto :goto_0

    .line 128
    .restart local v0       #headerNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #headerValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #statusCode:I
    .restart local v8       #statusParts:[Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v4, partContent:Ljava/lang/StringBuilder;
    :goto_2
    iget-object v9, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v9, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->boundary:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 130
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 133
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v6, v9, v0, v2}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->getFakeResponse(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v5

    .line 136
    .local v5, response:Lcom/google/api/client/http/HttpResponse;
    iget-object v9, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->requestInfos:Ljava/util/List;

    iget v10, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->contentId:I

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;

    iget v10, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->contentId:I

    invoke-direct {p0, v9, v6, v10, v5}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->parseAndCallback(Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;IILcom/google/api/client/http/HttpResponse;)V

    .line 138
    invoke-direct {p0, v3}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->checkForFinalBoundary(Ljava/lang/String;)V

    .line 139
    return-void
.end method
