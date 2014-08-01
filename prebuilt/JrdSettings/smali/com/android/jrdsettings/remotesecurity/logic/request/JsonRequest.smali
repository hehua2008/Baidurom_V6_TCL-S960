.class public abstract Lcom/android/jrdsettings/remotesecurity/logic/request/JsonRequest;
.super Lcom/android/jrdsettings/remotesecurity/logic/request/Request;
.source "JsonRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "handler"
    .parameter "httpUrl"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected createConnectionTask()Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;
    .locals 6

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, ct:Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/logic/request/JsonRequest;->createRequestPara()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, req:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/logic/request/JsonRequest;->createRequestUploadFilePath()Ljava/util/HashMap;

    move-result-object v2

    .line 47
    .local v2, picHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;

    .end local v0           #ct:Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->httpUrl:Ljava/lang/String;

    invoke-direct {v0, v4, p0, v5}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;-><init>(Landroid/content/Context;Lcom/android/jrdsettings/remotesecurity/service/IHttpCallback;Ljava/lang/String;)V

    .line 49
    .restart local v0       #ct:Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;
    if-eqz v3, :cond_0

    .line 53
    :try_start_0
    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->setDataBuf([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {v0, v2}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->setPicHashMap(Ljava/util/HashMap;)V

    .line 65
    :cond_1
    return-object v0

    .line 55
    :catch_0
    move-exception v1

    .line 58
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract createRequestPara()Ljava/lang/String;
.end method

.method protected abstract createRequestUploadFilePath()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end method

.method public onReceiveData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/logic/request/JsonRequest;->parseJSONResponse(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method protected abstract parseJSONResponse(Ljava/lang/String;)V
.end method
