.class public Lcom/google/api/client/googleapis/services/GoogleKeyInitializer;
.super Ljava/lang/Object;
.source "GoogleKeyInitializer.java"

# interfaces
.implements Lcom/google/api/client/http/json/JsonHttpRequestInitializer;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/api/client/googleapis/services/GoogleKeyInitializer;->key:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 51
    const-string v0, "key"

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/GoogleKeyInitializer;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/api/client/util/GenericData;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method
