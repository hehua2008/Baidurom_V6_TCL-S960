.class public Lcom/android/jrdsettings/remotesecurity/logic/request/UnregisterOnServerRequest;
.super Lcom/android/jrdsettings/remotesecurity/logic/request/JsonRequest;
.source "UnregisterOnServerRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UnregisterOnServerRequest"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "handler"
    .parameter "httpUrl"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/jrdsettings/remotesecurity/logic/request/JsonRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected createRequestPara()Ljava/lang/String;
    .locals 5

    .prologue
    .line 79
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    invoke-direct {v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>()V

    .line 82
    .local v1, requestJsonObject:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    :try_start_0
    const-string v2, "imei"

    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    :try_end_0
    .catch Lcom/android/jrdsettings/remotesecurity/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    const-string v2, "UnregisterOnServerRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createRequestPara="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 85
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Lcom/android/jrdsettings/remotesecurity/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected createRequestUploadFilePath()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method protected parseJSONResponse(Ljava/lang/String;)V
    .locals 7
    .parameter "response"

    .prologue
    .line 48
    const-string v4, "UnregisterOnServerRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :try_start_0
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    invoke-direct {v1, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, jsonResponse:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    const-string v4, "result"

    invoke-virtual {v1, v4}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, result:Ljava/lang/String;
    const/4 v2, 0x0

    .line 56
    .local v2, msg:Landroid/os/Message;
    const-string v4, "00000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->handler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 63
    :goto_0
    if-eqz v2, :cond_0

    .line 64
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 74
    .end local v1           #jsonResponse:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #result:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 60
    .restart local v1       #jsonResponse:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .restart local v2       #msg:Landroid/os/Message;
    .restart local v3       #result:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->handler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    :try_end_0
    .catch Lcom/android/jrdsettings/remotesecurity/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 68
    .end local v1           #jsonResponse:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Lcom/android/jrdsettings/remotesecurity/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
