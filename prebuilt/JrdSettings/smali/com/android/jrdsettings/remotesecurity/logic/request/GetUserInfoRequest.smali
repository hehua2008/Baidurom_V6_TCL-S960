.class public Lcom/android/jrdsettings/remotesecurity/logic/request/GetUserInfoRequest;
.super Lcom/android/jrdsettings/remotesecurity/logic/request/JsonRequest;
.source "GetUserInfoRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetUserInfoRequest"


# instance fields
.field private mIsLogin:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "handler"
    .parameter "httpUrl"
    .parameter "isLogin"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/jrdsettings/remotesecurity/logic/request/JsonRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/GetUserInfoRequest;->mIsLogin:Z

    .line 40
    iput-boolean p4, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/GetUserInfoRequest;->mIsLogin:Z

    .line 42
    return-void
.end method


# virtual methods
.method protected createConnectionTask()Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 63
    const-string v1, "GetUserInfoRequest"

    const-string v2, "createConnectionTask"

    invoke-static {v1, v2}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, ct:Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;

    .end local v0           #ct:Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;
    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->httpUrl:Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;-><init>(Landroid/content/Context;Lcom/android/jrdsettings/remotesecurity/service/IHttpCallback;Ljava/lang/String;)V

    .line 66
    .restart local v0       #ct:Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;
    invoke-virtual {v0, v3}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->setRequestType(I)V

    .line 67
    invoke-virtual {v0, v3}, Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;->setConnetionType(I)V

    .line 68
    return-object v0
.end method

.method protected createRequestPara()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
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
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method protected parseJSONResponse(Ljava/lang/String;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 46
    const-string v3, "GetUserInfoRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetUserInfoRequest response"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :try_start_0
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    invoke-direct {v1, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, jsonResponse:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    const-string v3, "isloginIn"

    iget-boolean v4, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/GetUserInfoRequest;->mIsLogin:Z

    invoke-virtual {v1, v3, v4}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 51
    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->handler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 53
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lcom/android/jrdsettings/remotesecurity/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1           #jsonResponse:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .end local v2           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Lcom/android/jrdsettings/remotesecurity/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
