.class public final Lcom/google/api/client/googleapis/batch/BatchRequest;
.super Ljava/lang/Object;
.source "BatchRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/batch/BatchRequest$BatchInterceptor;,
        Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;
    }
.end annotation


# instance fields
.field private batchUrl:Lcom/google/api/client/http/GenericUrl;

.field private final requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

.field requestInfos:Ljava/util/List;
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
.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 2
    .parameter "transport"
    .parameter "httpRequestInitializer"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    const-string v1, "https://www.googleapis.com/batch"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->batchUrl:Lcom/google/api/client/http/GenericUrl;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    .line 121
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    .line 124
    return-void

    .line 121
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    goto :goto_0
.end method

.method private sleep(J)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 253
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_2

    const/16 v20, 0x1

    :goto_0
    invoke-static/range {v20 .. v20}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/googleapis/batch/BatchRequest;->batchUrl:Lcom/google/api/client/http/GenericUrl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/google/api/client/http/HttpRequestFactory;->buildPostRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v6

    .line 189
    .local v6, batchRequest:Lcom/google/api/client/http/HttpRequest;
    new-instance v20, Lcom/google/api/client/googleapis/batch/BatchRequest$BatchInterceptor;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/api/client/googleapis/batch/BatchRequest$BatchInterceptor;-><init>(Lcom/google/api/client/googleapis/batch/BatchRequest;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/google/api/client/http/HttpRequest;->setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;

    .line 190
    invoke-virtual {v6}, Lcom/google/api/client/http/HttpRequest;->getNumberOfRetries()I

    move-result v17

    .line 191
    .local v17, retriesRemaining:I
    invoke-virtual {v6}, Lcom/google/api/client/http/HttpRequest;->getBackOffPolicy()Lcom/google/api/client/http/BackOffPolicy;

    move-result-object v3

    .line 193
    .local v3, backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;
    if-eqz v3, :cond_0

    .line 195
    invoke-interface {v3}, Lcom/google/api/client/http/BackOffPolicy;->reset()V

    .line 199
    :cond_0
    if-lez v17, :cond_3

    const/16 v18, 0x1

    .line 200
    .local v18, retryAllowed:Z
    :goto_1
    new-instance v20, Lcom/google/api/client/googleapis/batch/MultipartMixedContent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    move-object/from16 v21, v0

    const-string v22, "__END_OF_PART__"

    invoke-direct/range {v20 .. v22}, Lcom/google/api/client/googleapis/batch/MultipartMixedContent;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 201
    invoke-virtual {v6}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v16

    .line 205
    .local v16, response:Lcom/google/api/client/http/HttpResponse;
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/api/client/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object v11

    .line 206
    .local v11, contentType:Ljava/lang/String;
    const-string v20, ";"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 207
    .local v15, parts:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 208
    .local v8, boundary:Ljava/lang/String;
    move-object v2, v15

    .local v2, arr$:[Ljava/lang/String;
    array-length v13, v2

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_2
    if-ge v12, v13, :cond_1

    aget-object v14, v2, v12

    .line 209
    .local v14, part:Ljava/lang/String;
    const-string v20, "boundary="

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 210
    const-string v20, "boundary="

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 211
    .local v9, boundaryStartIndex:I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "--"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "boundary="

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int v21, v21, v9

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 217
    .end local v9           #boundaryStartIndex:I
    .end local v14           #part:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 218
    .local v10, contentStream:Ljava/io/InputStream;
    new-instance v7, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-direct {v7, v10, v8, v0, v1}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/List;Z)V

    .line 221
    .local v7, batchResponse:Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;
    :goto_3
    iget-boolean v0, v7, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->hasNext:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 222
    invoke-virtual {v7}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->parseNextResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 225
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #batchResponse:Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;
    .end local v8           #boundary:Ljava/lang/String;
    .end local v10           #contentStream:Ljava/io/InputStream;
    .end local v11           #contentType:Ljava/lang/String;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v15           #parts:[Ljava/lang/String;
    :catchall_0
    move-exception v20

    invoke-virtual/range {v16 .. v16}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    throw v20

    .line 187
    .end local v3           #backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;
    .end local v6           #batchRequest:Lcom/google/api/client/http/HttpRequest;
    .end local v16           #response:Lcom/google/api/client/http/HttpResponse;
    .end local v17           #retriesRemaining:I
    .end local v18           #retryAllowed:Z
    :cond_2
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 199
    .restart local v3       #backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;
    .restart local v6       #batchRequest:Lcom/google/api/client/http/HttpRequest;
    .restart local v17       #retriesRemaining:I
    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 208
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v8       #boundary:Ljava/lang/String;
    .restart local v11       #contentType:Ljava/lang/String;
    .restart local v12       #i$:I
    .restart local v13       #len$:I
    .restart local v14       #part:Ljava/lang/String;
    .restart local v15       #parts:[Ljava/lang/String;
    .restart local v16       #response:Lcom/google/api/client/http/HttpResponse;
    .restart local v18       #retryAllowed:Z
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 225
    .end local v14           #part:Ljava/lang/String;
    .restart local v7       #batchResponse:Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;
    .restart local v10       #contentStream:Ljava/io/InputStream;
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 228
    iget-object v0, v7, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->unsuccessfulRequestInfos:Ljava/util/List;

    move-object/from16 v19, v0

    .line 229
    .local v19, unsuccessfulRequestInfos:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<**>;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_7

    .line 230
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    .line 232
    iget-boolean v0, v7, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->backOffRequired:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    if-eqz v3, :cond_6

    .line 233
    invoke-interface {v3}, Lcom/google/api/client/http/BackOffPolicy;->getNextBackOffMillis()J

    move-result-wide v4

    .line 234
    .local v4, backOffTime:J
    const-wide/16 v20, -0x1

    cmp-long v20, v4, v20

    if-eqz v20, :cond_6

    .line 235
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/api/client/googleapis/batch/BatchRequest;->sleep(J)V

    .line 241
    .end local v4           #backOffTime:J
    :cond_6
    add-int/lit8 v17, v17, -0x1

    .line 242
    if-nez v18, :cond_0

    .line 243
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 244
    return-void
.end method

.method public getBatchUrl()Lcom/google/api/client/http/GenericUrl;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->batchUrl:Lcom/google/api/client/http/GenericUrl;

    return-object v0
.end method

.method public queue(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/googleapis/batch/BatchCallback;)Lcom/google/api/client/googleapis/batch/BatchRequest;
    .locals 2
    .parameter "httpRequest"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/http/HttpRequest;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lcom/google/api/client/googleapis/batch/BatchCallback",
            "<TT;TE;>;)",
            "Lcom/google/api/client/googleapis/batch/BatchRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    .local p2, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p3, errorClass:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    .local p4, callback:Lcom/google/api/client/googleapis/batch/BatchCallback;,"Lcom/google/api/client/googleapis/batch/BatchCallback<TT;TE;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    new-instance v1, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;

    invoke-direct {v1, p4, p2, p3, p1}, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;-><init>(Lcom/google/api/client/googleapis/batch/BatchCallback;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/http/HttpRequest;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-object p0
.end method

.method public setBatchUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/googleapis/batch/BatchRequest;
    .locals 0
    .parameter "batchUrl"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->batchUrl:Lcom/google/api/client/http/GenericUrl;

    .line 132
    return-object p0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
