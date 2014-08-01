.class public Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;
.super Lcom/android/jrdsettings/remotesecurity/logic/request/JsonRequest;
.source "CommandStatusRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommandStatusRequest"


# instance fields
.field private mCmdId:I

.field private mStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "handler"
    .parameter "httpUrl"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/jrdsettings/remotesecurity/logic/request/JsonRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected createRequestPara()Ljava/lang/String;
    .locals 7

    .prologue
    .line 83
    new-instance v3, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    invoke-direct {v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>()V

    .line 84
    .local v3, requestJsonObject:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;

    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, db:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    const-string v4, "email"

    invoke-virtual {v0, v4}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, email:Ljava/lang/String;
    :try_start_0
    const-string v4, "email"

    invoke-virtual {v3, v4, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 90
    const-string v4, "imei"

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 92
    const-string v4, "cmdid"

    iget v5, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;->mCmdId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;I)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 94
    const-string v4, "status"

    iget v5, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;->mStatus:I

    invoke-virtual {v3, v4, v5}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;I)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    :try_end_0
    .catch Lcom/android/jrdsettings/remotesecurity/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    const-string v4, "CommandStatusRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createRequestPara="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 97
    :catch_0
    move-exception v1

    .line 100
    .local v1, e:Lcom/android/jrdsettings/remotesecurity/json/JSONException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

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
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method protected parseJSONResponse(Ljava/lang/String;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 75
    const-string v0, "CommandStatusRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public setmCmdId(I)V
    .locals 0
    .parameter "mCmdId"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;->mCmdId:I

    .line 60
    return-void
.end method

.method public setmStatus(I)V
    .locals 0
    .parameter "mStatus"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;->mStatus:I

    .line 49
    return-void
.end method
