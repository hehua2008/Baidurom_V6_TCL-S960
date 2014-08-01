.class public Lcom/google/api/client/json/rpc2/JsonRpcRequest;
.super Lcom/google/api/client/util/GenericData;
.source "JsonRpcRequest.java"


# instance fields
.field private id:Ljava/lang/Object;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private final jsonrpc:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private method:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private params:Ljava/lang/Object;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 33
    const-string v0, "2.0"

    iput-object v0, p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->jsonrpc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->id:Ljava/lang/Object;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->params:Ljava/lang/Object;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "2.0"

    return-object v0
.end method

.method public setId(Ljava/lang/Object;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->id:Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .parameter "method"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->method:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setParameters(Ljava/lang/Object;)V
    .locals 0
    .parameter "parameters"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->params:Ljava/lang/Object;

    .line 119
    return-void
.end method
