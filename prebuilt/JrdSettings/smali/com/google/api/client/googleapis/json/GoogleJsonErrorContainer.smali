.class public Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;
.super Lcom/google/api/client/json/GenericJson;
.source "GoogleJsonErrorContainer.java"


# instance fields
.field private error:Lcom/google/api/client/googleapis/json/GoogleJsonError;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final getError()Lcom/google/api/client/googleapis/json/GoogleJsonError;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;->error:Lcom/google/api/client/googleapis/json/GoogleJsonError;

    return-object v0
.end method

.method public final setError(Lcom/google/api/client/googleapis/json/GoogleJsonError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;->error:Lcom/google/api/client/googleapis/json/GoogleJsonError;

    .line 39
    return-void
.end method
