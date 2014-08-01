.class public final Lcom/google/api/client/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/HttpRequest$1;
    }
.end annotation


# static fields
.field public static final USER_AGENT_SUFFIX:Ljava/lang/String; = "Google-HTTP-Java-Client/1.10.3-beta (gzip)"

.field public static final VERSION:Ljava/lang/String; = "1.10.3-beta"


# instance fields
.field private allowEmptyContent:Z

.field private backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

.field private connectTimeout:I

.field private content:Lcom/google/api/client/http/HttpContent;

.field private contentLoggingLimit:I

.field private final contentTypeToParserMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/client/http/HttpParser;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private enableGZipContent:Z

.field private followRedirects:Z

.field private headers:Lcom/google/api/client/http/HttpHeaders;

.field private interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

.field private loggingEnabled:Z

.field private method:Lcom/google/api/client/http/HttpMethod;

.field private numRetries:I

.field private objectParser:Lcom/google/api/client/util/ObjectParser;

.field private readTimeout:I

.field private responseHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private retryOnExecuteIOException:Z

.field private throwExceptionOnExecuteError:Z

.field private final transport:Lcom/google/api/client/http/HttpTransport;

.field private unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

.field private url:Lcom/google/api/client/http/GenericUrl;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpMethod;)V
    .locals 3
    .parameter "transport"
    .parameter "method"

    .prologue
    const/16 v2, 0x4e20

    const/4 v1, 0x1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 84
    new-instance v0, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 91
    iput-boolean v1, p0, Lcom/google/api/client/http/HttpRequest;->allowEmptyContent:Z

    .line 98
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    .line 125
    const/16 v0, 0x4000

    iput v0, p0, Lcom/google/api/client/http/HttpRequest;->contentLoggingLimit:I

    .line 128
    iput-boolean v1, p0, Lcom/google/api/client/http/HttpRequest;->loggingEnabled:Z

    .line 143
    iput v2, p0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    .line 149
    iput v2, p0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->contentTypeToParserMap:Ljava/util/Map;

    .line 168
    iput-boolean v1, p0, Lcom/google/api/client/http/HttpRequest;->followRedirects:Z

    .line 174
    iput-boolean v1, p0, Lcom/google/api/client/http/HttpRequest;->throwExceptionOnExecuteError:Z

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->retryOnExecuteIOException:Z

    .line 187
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 188
    iput-object p2, p0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    .line 189
    return-void
.end method

.method private handleRedirect(Lcom/google/api/client/http/HttpResponse;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 990
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 991
    .local v0, redirectLocation:Ljava/lang/String;
    new-instance v1, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v1, v0}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/api/client/http/HttpRequest;->setUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    .line 995
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12f

    if-ne v1, v2, :cond_0

    .line 996
    sget-object v1, Lcom/google/api/client/http/HttpMethod;->GET:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {p0, v1}, Lcom/google/api/client/http/HttpRequest;->setMethod(Lcom/google/api/client/http/HttpMethod;)Lcom/google/api/client/http/HttpRequest;

    .line 998
    :cond_0
    return-void
.end method

.method private isRedirected(Lcom/google/api/client/http/HttpResponse;)Z
    .locals 3
    .parameter "response"

    .prologue
    const/4 v1, 0x0

    .line 1004
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v0

    .line 1005
    .local v0, statusCode:I
    packed-switch v0, :pswitch_data_0

    .line 1013
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 1011
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 1005
    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static normalizeMediaType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mediaType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1045
    if-nez p0, :cond_1

    .line 1046
    const/4 p0, 0x0

    .line 1049
    .end local p0
    .local v0, semicolon:I
    :cond_0
    :goto_0
    return-object p0

    .line 1048
    .end local v0           #semicolon:I
    .restart local p0
    :cond_1
    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1049
    .restart local v0       #semicolon:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private sleep(J)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 1026
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    :goto_0
    return-void

    .line 1027
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addParser(Lcom/google/api/client/http/HttpParser;)V
    .locals 2
    .parameter "parser"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 626
    invoke-interface {p1}, Lcom/google/api/client/http/HttpParser;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/api/client/http/HttpRequest;->normalizeMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, contentType:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequest;->contentTypeToParserMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    return-void
.end method

.method public execute()Lcom/google/api/client/http/HttpResponse;
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 772
    const/16 v28, 0x0

    .line 773
    .local v28, retrySupported:Z
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    if-ltz v9, :cond_13

    const/4 v9, 0x1

    :goto_0
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 774
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    move/from16 v27, v0

    .line 775
    .local v27, retriesRemaining:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    if-eqz v9, :cond_0

    .line 777
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    invoke-interface {v9}, Lcom/google/api/client/http/BackOffPolicy;->reset()V

    .line 779
    :cond_0
    const/16 v23, 0x0

    .line 782
    .local v23, response:Lcom/google/api/client/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    :cond_1
    if-eqz v23, :cond_2

    .line 788
    invoke-virtual/range {v23 .. v23}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 791
    :cond_2
    const/16 v23, 0x0

    .line 792
    const/4 v15, 0x0

    .line 795
    .local v15, executeException:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    if-eqz v9, :cond_3

    .line 796
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    move-object/from16 v0, p0

    invoke-interface {v9, v0}, Lcom/google/api/client/http/HttpExecuteInterceptor;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 799
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v9}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v29

    .line 801
    .local v29, urlString:Ljava/lang/String;
    sget-object v9, Lcom/google/api/client/http/HttpRequest$1;->$SwitchMap$com$google$api$client$http$HttpMethod:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->ordinal()I

    move-result v30

    aget v9, v9, v30

    packed-switch v9, :pswitch_data_0

    .line 806
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/google/api/client/http/HttpTransport;->buildGetRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v19

    .line 825
    .local v19, lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :goto_1
    sget-object v18, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    .line 826
    .local v18, logger:Ljava/util/logging/Logger;
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/api/client/http/HttpRequest;->loggingEnabled:Z

    if-eqz v9, :cond_14

    sget-object v9, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_14

    const/16 v17, 0x1

    .line 827
    .local v17, loggable:Z
    :goto_2
    const/16 v16, 0x0

    .line 829
    .local v16, logbuf:Ljava/lang/StringBuilder;
    if-eqz v17, :cond_4

    .line 830
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #logbuf:Ljava/lang/StringBuilder;
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 831
    .restart local v16       #logbuf:Ljava/lang/StringBuilder;
    const-string v9, "-------------- REQUEST  --------------"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v30, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v30, 0x20

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v30, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v9}, Lcom/google/api/client/http/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v21

    .line 836
    .local v21, originalUserAgent:Ljava/lang/String;
    if-nez v21, :cond_15

    .line 837
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    const-string v30, "Google-HTTP-Java-Client/1.10.3-beta (gzip)"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)V

    .line 842
    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v9, v0, v1, v2}, Lcom/google/api/client/http/HttpHeaders;->serializeHeaders(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/api/client/http/LowLevelHttpRequest;)V

    .line 844
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 848
    .local v3, content:Lcom/google/api/client/http/HttpContent;
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/http/HttpRequest;->isAllowEmptyContent()Z

    move-result v9

    if-nez v9, :cond_22

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    sget-object v30, Lcom/google/api/client/http/HttpMethod;->PUT:Lcom/google/api/client/http/HttpMethod;

    move-object/from16 v0, v30

    if-eq v9, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    sget-object v30, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    move-object/from16 v0, v30

    if-eq v9, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    sget-object v30, Lcom/google/api/client/http/HttpMethod;->PATCH:Lcom/google/api/client/http/HttpMethod;

    move-object/from16 v0, v30

    if-ne v9, v0, :cond_22

    :cond_5
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v30

    const-wide/16 v32, 0x0

    cmp-long v9, v30, v32

    if-nez v9, :cond_22

    .line 851
    :cond_6
    const/4 v9, 0x0

    const-string v30, " "

    move-object/from16 v0, v30

    invoke-static {v9, v0}, Lcom/google/api/client/http/ByteArrayContent;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;

    move-result-object v3

    move-object v4, v3

    .line 853
    .end local v3           #content:Lcom/google/api/client/http/HttpContent;
    .local v4, content:Lcom/google/api/client/http/HttpContent;
    :goto_4
    if-eqz v4, :cond_21

    .line 854
    invoke-interface {v4}, Lcom/google/api/client/http/HttpContent;->getEncoding()Ljava/lang/String;

    move-result-object v6

    .line 855
    .local v6, contentEncoding:Ljava/lang/String;
    invoke-interface {v4}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v7

    .line 856
    .local v7, contentLength:J
    invoke-interface {v4}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    move-result-object v5

    .line 858
    .local v5, contentType:Ljava/lang/String;
    if-eqz v17, :cond_20

    .line 859
    new-instance v3, Lcom/google/api/client/http/LogContent;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/api/client/http/HttpRequest;->contentLoggingLimit:I

    invoke-direct/range {v3 .. v9}, Lcom/google/api/client/http/LogContent;-><init>(Lcom/google/api/client/http/HttpContent;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 863
    .end local v4           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v3       #content:Lcom/google/api/client/http/HttpContent;
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/api/client/http/HttpRequest;->enableGZipContent:Z

    if-eqz v9, :cond_7

    .line 864
    new-instance v4, Lcom/google/api/client/http/GZipContent;

    invoke-direct {v4, v3, v5}, Lcom/google/api/client/http/GZipContent;-><init>(Lcom/google/api/client/http/HttpContent;Ljava/lang/String;)V

    .line 865
    .end local v3           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v4       #content:Lcom/google/api/client/http/HttpContent;
    invoke-interface {v4}, Lcom/google/api/client/http/HttpContent;->getEncoding()Ljava/lang/String;

    move-result-object v6

    .line 866
    invoke-interface {v4}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v7

    move-object v3, v4

    .line 869
    .end local v4           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v3       #content:Lcom/google/api/client/http/HttpContent;
    :cond_7
    if-eqz v17, :cond_a

    .line 870
    if-eqz v5, :cond_8

    .line 871
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Content-Type: "

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v30, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    :cond_8
    if-eqz v6, :cond_9

    .line 874
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Content-Encoding: "

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v30, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :cond_9
    const-wide/16 v30, 0x0

    cmp-long v9, v7, v30

    if-ltz v9, :cond_a

    .line 878
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Content-Length: "

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v30, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    :cond_a
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/google/api/client/http/LowLevelHttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)V

    .line 884
    .end local v5           #contentType:Ljava/lang/String;
    .end local v6           #contentEncoding:Ljava/lang/String;
    .end local v7           #contentLength:J
    :goto_6
    if-eqz v17, :cond_b

    .line 885
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 890
    :cond_b
    if-lez v27, :cond_16

    if-eqz v3, :cond_c

    invoke-interface {v3}, Lcom/google/api/client/http/HttpContent;->retrySupported()Z

    move-result v9

    if-eqz v9, :cond_16

    :cond_c
    const/16 v28, 0x1

    .line 893
    :goto_7
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    move/from16 v30, v0

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v9, v1}, Lcom/google/api/client/http/LowLevelHttpRequest;->setTimeout(II)V

    .line 895
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Lcom/google/api/client/http/LowLevelHttpRequest;->execute()Lcom/google/api/client/http/LowLevelHttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 897
    .local v20, lowLevelHttpResponse:Lcom/google/api/client/http/LowLevelHttpResponse;
    const/16 v25, 0x0

    .line 899
    .local v25, responseConstructed:Z
    :try_start_1
    new-instance v24, Lcom/google/api/client/http/HttpResponse;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/HttpResponse;-><init>(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/LowLevelHttpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 900
    .end local v23           #response:Lcom/google/api/client/http/HttpResponse;
    .local v24, response:Lcom/google/api/client/http/HttpResponse;
    const/16 v25, 0x1

    .line 902
    if-nez v25, :cond_d

    .line 903
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_d
    move-object/from16 v23, v24

    .line 917
    .end local v20           #lowLevelHttpResponse:Lcom/google/api/client/http/LowLevelHttpResponse;
    .end local v24           #response:Lcom/google/api/client/http/HttpResponse;
    .end local v25           #responseConstructed:Z
    .restart local v23       #response:Lcom/google/api/client/http/HttpResponse;
    :goto_8
    const/16 v26, 0x0

    .line 919
    .local v26, responseProcessed:Z
    if-eqz v23, :cond_1b

    :try_start_3
    invoke-virtual/range {v23 .. v23}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v9

    if-nez v9, :cond_1b

    .line 920
    const/4 v14, 0x0

    .line 921
    .local v14, errorHandled:Z
    const/16 v22, 0x0

    .line 922
    .local v22, redirectRequest:Z
    const/4 v10, 0x0

    .line 923
    .local v10, backOffRetry:Z
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    if-eqz v9, :cond_e

    .line 927
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v28

    invoke-interface {v9, v0, v1, v2}, Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;->handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z

    move-result v14

    .line 930
    :cond_e
    if-nez v14, :cond_f

    .line 931
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/http/HttpRequest;->getFollowRedirects()Z

    move-result v9

    if-eqz v9, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpRequest;->isRedirected(Lcom/google/api/client/http/HttpResponse;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 933
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpRequest;->handleRedirect(Lcom/google/api/client/http/HttpResponse;)V

    .line 934
    const/16 v22, 0x1

    .line 950
    :cond_f
    :goto_9
    if-nez v14, :cond_10

    if-nez v22, :cond_10

    if-eqz v10, :cond_1a

    :cond_10
    const/4 v9, 0x1

    :goto_a
    and-int v28, v28, v9

    .line 952
    if-eqz v28, :cond_11

    .line 953
    invoke-virtual/range {v23 .. v23}, Lcom/google/api/client/http/HttpResponse;->ignore()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 961
    .end local v10           #backOffRetry:Z
    .end local v14           #errorHandled:Z
    .end local v22           #redirectRequest:Z
    :cond_11
    :goto_b
    add-int/lit8 v27, v27, -0x1

    .line 963
    const/16 v26, 0x1

    .line 965
    if-eqz v23, :cond_12

    if-nez v26, :cond_12

    .line 966
    invoke-virtual/range {v23 .. v23}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 969
    :cond_12
    if-nez v28, :cond_1

    .line 971
    if-nez v23, :cond_1e

    .line 973
    throw v15

    .line 773
    .end local v3           #content:Lcom/google/api/client/http/HttpContent;
    .end local v15           #executeException:Ljava/io/IOException;
    .end local v16           #logbuf:Ljava/lang/StringBuilder;
    .end local v17           #loggable:Z
    .end local v18           #logger:Ljava/util/logging/Logger;
    .end local v19           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    .end local v21           #originalUserAgent:Ljava/lang/String;
    .end local v23           #response:Lcom/google/api/client/http/HttpResponse;
    .end local v26           #responseProcessed:Z
    .end local v27           #retriesRemaining:I
    .end local v29           #urlString:Ljava/lang/String;
    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 803
    .restart local v15       #executeException:Ljava/io/IOException;
    .restart local v23       #response:Lcom/google/api/client/http/HttpResponse;
    .restart local v27       #retriesRemaining:I
    .restart local v29       #urlString:Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/google/api/client/http/HttpTransport;->buildDeleteRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v19

    .line 804
    .restart local v19       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_1

    .line 809
    .end local v19           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    invoke-virtual {v9}, Lcom/google/api/client/http/HttpTransport;->supportsHead()Z

    move-result v9

    const-string v30, "HTTP transport doesn\'t support HEAD"

    move-object/from16 v0, v30

    invoke-static {v9, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/google/api/client/http/HttpTransport;->buildHeadRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v19

    .line 812
    .restart local v19       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_1

    .line 814
    .end local v19           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    invoke-virtual {v9}, Lcom/google/api/client/http/HttpTransport;->supportsPatch()Z

    move-result v9

    const-string v30, "HTTP transport doesn\'t support PATCH"

    move-object/from16 v0, v30

    invoke-static {v9, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/google/api/client/http/HttpTransport;->buildPatchRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v19

    .line 817
    .restart local v19       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_1

    .line 819
    .end local v19           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/google/api/client/http/HttpTransport;->buildPostRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v19

    .line 820
    .restart local v19       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_1

    .line 822
    .end local v19           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/google/api/client/http/HttpTransport;->buildPutRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v19

    .restart local v19       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_1

    .line 826
    .restart local v18       #logger:Ljava/util/logging/Logger;
    :cond_14
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 839
    .restart local v16       #logbuf:Ljava/lang/StringBuilder;
    .restart local v17       #loggable:Z
    .restart local v21       #originalUserAgent:Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "Google-HTTP-Java-Client/1.10.3-beta (gzip)"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 890
    .restart local v3       #content:Lcom/google/api/client/http/HttpContent;
    :cond_16
    const/16 v28, 0x0

    goto/16 :goto_7

    .line 902
    .restart local v20       #lowLevelHttpResponse:Lcom/google/api/client/http/LowLevelHttpResponse;
    .restart local v25       #responseConstructed:Z
    :catchall_0
    move-exception v9

    if-nez v25, :cond_17

    .line 903
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/io/InputStream;->close()V

    :cond_17
    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 906
    .end local v20           #lowLevelHttpResponse:Lcom/google/api/client/http/LowLevelHttpResponse;
    .end local v25           #responseConstructed:Z
    :catch_0
    move-exception v13

    .line 907
    .local v13, e:Ljava/io/IOException;
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/api/client/http/HttpRequest;->retryOnExecuteIOException:Z

    if-nez v9, :cond_18

    .line 908
    throw v13

    .line 911
    :cond_18
    move-object v15, v13

    .line 912
    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v9, v1, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 935
    .end local v13           #e:Ljava/io/IOException;
    .restart local v10       #backOffRetry:Z
    .restart local v14       #errorHandled:Z
    .restart local v22       #redirectRequest:Z
    .restart local v26       #responseProcessed:Z
    :cond_19
    if-eqz v28, :cond_f

    :try_start_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    invoke-virtual/range {v23 .. v23}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v30

    move/from16 v0, v30

    invoke-interface {v9, v0}, Lcom/google/api/client/http/BackOffPolicy;->isBackOffRequired(I)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 940
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    invoke-interface {v9}, Lcom/google/api/client/http/BackOffPolicy;->getNextBackOffMillis()J

    move-result-wide v11

    .line 941
    .local v11, backOffTime:J
    const-wide/16 v30, -0x1

    cmp-long v9, v11, v30

    if-eqz v9, :cond_f

    .line 942
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/google/api/client/http/HttpRequest;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 943
    const/4 v10, 0x1

    goto/16 :goto_9

    .line 950
    .end local v11           #backOffTime:J
    :cond_1a
    const/4 v9, 0x0

    goto/16 :goto_a

    .line 957
    .end local v10           #backOffRetry:Z
    .end local v14           #errorHandled:Z
    .end local v22           #redirectRequest:Z
    :cond_1b
    if-nez v23, :cond_1c

    const/4 v9, 0x1

    :goto_d
    and-int v28, v28, v9

    goto/16 :goto_b

    :cond_1c
    const/4 v9, 0x0

    goto :goto_d

    .line 965
    :catchall_1
    move-exception v9

    if-eqz v23, :cond_1d

    if-nez v26, :cond_1d

    .line 966
    invoke-virtual/range {v23 .. v23}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    :cond_1d
    throw v9

    .line 976
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/api/client/http/HttpRequest;->throwExceptionOnExecuteError:Z

    if-eqz v9, :cond_1f

    invoke-virtual/range {v23 .. v23}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v9

    if-nez v9, :cond_1f

    .line 978
    :try_start_6
    new-instance v9, Lcom/google/api/client/http/HttpResponseException;

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponse;)V

    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 980
    :catchall_2
    move-exception v9

    invoke-virtual/range {v23 .. v23}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    throw v9

    .line 983
    :cond_1f
    return-object v23

    .line 906
    .end local v23           #response:Lcom/google/api/client/http/HttpResponse;
    .end local v26           #responseProcessed:Z
    .restart local v20       #lowLevelHttpResponse:Lcom/google/api/client/http/LowLevelHttpResponse;
    .restart local v24       #response:Lcom/google/api/client/http/HttpResponse;
    .restart local v25       #responseConstructed:Z
    :catch_1
    move-exception v13

    move-object/from16 v23, v24

    .end local v24           #response:Lcom/google/api/client/http/HttpResponse;
    .restart local v23       #response:Lcom/google/api/client/http/HttpResponse;
    goto :goto_c

    .end local v3           #content:Lcom/google/api/client/http/HttpContent;
    .end local v20           #lowLevelHttpResponse:Lcom/google/api/client/http/LowLevelHttpResponse;
    .end local v25           #responseConstructed:Z
    .restart local v4       #content:Lcom/google/api/client/http/HttpContent;
    .restart local v5       #contentType:Ljava/lang/String;
    .restart local v6       #contentEncoding:Ljava/lang/String;
    .restart local v7       #contentLength:J
    :cond_20
    move-object v3, v4

    .end local v4           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v3       #content:Lcom/google/api/client/http/HttpContent;
    goto/16 :goto_5

    .end local v3           #content:Lcom/google/api/client/http/HttpContent;
    .end local v5           #contentType:Ljava/lang/String;
    .end local v6           #contentEncoding:Ljava/lang/String;
    .end local v7           #contentLength:J
    .restart local v4       #content:Lcom/google/api/client/http/HttpContent;
    :cond_21
    move-object v3, v4

    .end local v4           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v3       #content:Lcom/google/api/client/http/HttpContent;
    goto/16 :goto_6

    :cond_22
    move-object v4, v3

    .end local v3           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v4       #content:Lcom/google/api/client/http/HttpContent;
    goto/16 :goto_4

    .line 801
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getBackOffPolicy()Lcom/google/api/client/http/BackOffPolicy;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    return v0
.end method

.method public getContent()Lcom/google/api/client/http/HttpContent;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    return-object v0
.end method

.method public getContentLoggingLimit()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/google/api/client/http/HttpRequest;->contentLoggingLimit:I

    return v0
.end method

.method public getEnableGZipContent()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->enableGZipContent:Z

    return v0
.end method

.method public getFollowRedirects()Z
    .locals 1

    .prologue
    .line 674
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->followRedirects:Z

    return v0
.end method

.method public getHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getInterceptor()Lcom/google/api/client/http/HttpExecuteInterceptor;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    return-object v0
.end method

.method public getMethod()Lcom/google/api/client/http/HttpMethod;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    return-object v0
.end method

.method public getNumberOfRetries()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    return v0
.end method

.method public final getParser(Ljava/lang/String;)Lcom/google/api/client/http/HttpParser;
    .locals 1
    .parameter "contentType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 655
    invoke-static {p1}, Lcom/google/api/client/http/HttpRequest;->normalizeMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 656
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->contentTypeToParserMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpParser;

    return-object v0
.end method

.method public final getParser()Lcom/google/api/client/util/ObjectParser;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->objectParser:Lcom/google/api/client/util/ObjectParser;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    return v0
.end method

.method public getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getRetryOnExecuteIOException()Z
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->retryOnExecuteIOException:Z

    return v0
.end method

.method public getThrowExceptionOnExecuteError()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->throwExceptionOnExecuteError:Z

    return v0
.end method

.method public getTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public getUnsuccessfulResponseHandler()Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    return-object v0
.end method

.method public getUrl()Lcom/google/api/client/http/GenericUrl;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    return-object v0
.end method

.method public isAllowEmptyContent()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->allowEmptyContent:Z

    return v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->loggingEnabled:Z

    return v0
.end method

.method public setAllowEmptyContent(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .parameter "allowEmptyContent"

    .prologue
    .line 567
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->allowEmptyContent:Z

    .line 568
    return-object p0
.end method

.method public setBackOffPolicy(Lcom/google/api/client/http/BackOffPolicy;)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .parameter "backOffPolicy"

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    .line 311
    return-object p0
.end method

.method public setConnectTimeout(I)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .parameter "connectTimeout"

    .prologue
    .line 427
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 428
    iput p1, p0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    .line 429
    return-object p0

    .line 427
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .parameter "content"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 254
    return-object p0
.end method

.method public setContentLoggingLimit(I)Lcom/google/api/client/http/HttpRequest;
    .locals 2
    .parameter "contentLoggingLimit"

    .prologue
    .line 373
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "The content logging limit must be non-negative."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 375
    iput p1, p0, Lcom/google/api/client/http/HttpRequest;->contentLoggingLimit:I

    .line 376
    return-object p0

    .line 373
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnableGZipContent(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .parameter "enableGZipContent"

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->enableGZipContent:Z

    .line 292
    return-object p0
.end method

.method public setFollowRedirects(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .parameter "followRedirects"

    .prologue
    .line 687
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->followRedirects:Z

    .line 688
    return-object p0
.end method

.method public setHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .parameter "headers"

    .prologue
    .line 477
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpHeaders;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 478
    return-object p0
.end method

.method public setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .parameter "interceptor"

    .prologue
    .line 535
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 536
    return-object p0
.end method

.method public setLoggingEnabled(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .parameter "loggingEnabled"

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->loggingEnabled:Z

    .line 403
    return-object p0
.end method

.method public setMethod(Lcom/google/api/client/http/HttpMethod;)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .parameter "method"

    .prologue
    .line 215
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpMethod;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    .line 216
    return-object p0
.end method

.method public setNumberOfRetries(I)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .parameter "numRetries"

    .prologue
    .line 605
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 606
    iput p1, p0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    .line 607
    return-object p0

    .line 605
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setParser(Lcom/google/api/client/util/ObjectParser;)V
    .locals 0
    .parameter "parser"

    .prologue
    .line 641
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->objectParser:Lcom/google/api/client/util/ObjectParser;

    .line 642
    return-void
.end method

.method public setReadTimeout(I)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .parameter "readTimeout"

    .prologue
    .line 453
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 454
    iput p1, p0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    .line 455
    return-object p0

    .line 453
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .parameter "responseHeaders"

    .prologue
    .line 514
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpHeaders;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 515
    return-object p0
.end method

.method public setRetryOnExecuteIOException(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .parameter "retryOnExecuteIOException"

    .prologue
    .line 737
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->retryOnExecuteIOException:Z

    .line 738
    return-object p0
.end method

.method public setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .parameter "throwExceptionOnExecuteError"

    .prologue
    .line 712
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->throwExceptionOnExecuteError:Z

    .line 713
    return-object p0
.end method

.method public setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .parameter "unsuccessfulResponseHandler"

    .prologue
    .line 555
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    .line 556
    return-object p0
.end method

.method public setUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .parameter "url"

    .prologue
    .line 234
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/GenericUrl;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 235
    return-object p0
.end method
