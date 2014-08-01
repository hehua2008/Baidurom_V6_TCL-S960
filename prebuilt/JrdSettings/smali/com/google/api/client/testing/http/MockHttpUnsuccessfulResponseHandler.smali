.class public Lcom/google/api/client/testing/http/MockHttpUnsuccessfulResponseHandler;
.super Ljava/lang/Object;
.source "MockHttpUnsuccessfulResponseHandler.java"

# interfaces
.implements Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;


# instance fields
.field private isCalled:Z

.field private successfullyHandleResponse:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "successfullyHandleResponse"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lcom/google/api/client/testing/http/MockHttpUnsuccessfulResponseHandler;->successfullyHandleResponse:Z

    .line 45
    return-void
.end method


# virtual methods
.method public handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z
    .locals 1
    .parameter "request"
    .parameter "response"
    .parameter "supportsRetry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/testing/http/MockHttpUnsuccessfulResponseHandler;->isCalled:Z

    .line 57
    iget-boolean v0, p0, Lcom/google/api/client/testing/http/MockHttpUnsuccessfulResponseHandler;->successfullyHandleResponse:Z

    return v0
.end method

.method public isCalled()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/api/client/testing/http/MockHttpUnsuccessfulResponseHandler;->isCalled:Z

    return v0
.end method
