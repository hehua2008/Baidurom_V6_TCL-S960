.class public Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;
.super Lcom/android/jrdsettings/remotesecurity/logic/request/JsonRequest;
.source "RegisteredOnServerRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RegisteredOnServerRequest"


# instance fields
.field private mCountry:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mImei:Ljava/lang/String;

.field private mPhone_name:Ljava/lang/String;

.field private mRegid:Ljava/lang/String;

.field private mSecurity_num:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "handler"
    .parameter "httpUrl"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/jrdsettings/remotesecurity/logic/request/JsonRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 48
    invoke-static {p1}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->mImei:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method protected createRequestPara()Ljava/lang/String;
    .locals 5

    .prologue
    .line 82
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    invoke-direct {v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>()V

    .line 84
    .local v1, requestJsonObject:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    :try_start_0
    const-string v2, "email"

    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->getmEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 85
    const-string v2, "imei"

    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 87
    const-string v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 89
    const-string v2, "phone_name"

    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->getmPhone_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 92
    const-string v2, "country"

    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->getmCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 93
    const-string v2, "username"

    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->getmUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 94
    const-string v2, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 96
    const-string v2, "regid"

    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->getmRegid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 97
    const-string v2, "sec_number"

    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->getSecurity_num()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 99
    const-string v2, "commercial_ref"

    invoke-static {}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->getCommercialRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    :try_end_0
    .catch Lcom/android/jrdsettings/remotesecurity/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    const-string v2, "RegisteredOnServerRequest"

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

    .line 106
    invoke-virtual {v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 101
    :catch_0
    move-exception v0

    .line 103
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
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecurity_num()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->mSecurity_num:Ljava/lang/String;

    return-object v0
.end method

.method public getmCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getmEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getmPhone_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->mPhone_name:Ljava/lang/String;

    return-object v0
.end method

.method public getmRegid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->mRegid:Ljava/lang/String;

    return-object v0
.end method

.method public getmUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method protected parseJSONResponse(Ljava/lang/String;)V
    .locals 7
    .parameter "response"

    .prologue
    .line 55
    const-string v4, "RegisteredOnServerRequest"

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

    .line 57
    :try_start_0
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    invoke-direct {v1, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, jsonResponse:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    const-string v4, "result"

    invoke-virtual {v1, v4}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, result:Ljava/lang/String;
    const-string v4, "regid"

    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->getmRegid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 60
    const-string v4, "email"

    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->getmEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 61
    const-string v4, "imei"

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->mImei:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 62
    const/4 v2, 0x0

    .line 63
    .local v2, msg:Landroid/os/Message;
    const-string v4, "00000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->handler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 70
    :goto_0
    if-eqz v2, :cond_0

    .line 71
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    .end local v1           #jsonResponse:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #result:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 67
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

    .line 74
    .end local v1           #jsonResponse:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Lcom/android/jrdsettings/remotesecurity/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public setSecurity_num(Ljava/lang/String;)V
    .locals 0
    .parameter "mSecurity_number"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->mSecurity_num:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setmCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "mCountry"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->mCountry:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setmEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "mEmail"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->mEmail:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setmPhone_name(Ljava/lang/String;)V
    .locals 0
    .parameter "mPhone_name"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->mPhone_name:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setmRegid(Ljava/lang/String;)V
    .locals 0
    .parameter "mRegid"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->mRegid:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setmUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "mUsername"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->mUsername:Ljava/lang/String;

    .line 121
    return-void
.end method
