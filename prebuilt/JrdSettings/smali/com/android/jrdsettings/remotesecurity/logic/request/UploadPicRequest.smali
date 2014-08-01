.class public Lcom/android/jrdsettings/remotesecurity/logic/request/UploadPicRequest;
.super Lcom/android/jrdsettings/remotesecurity/logic/request/JsonRequest;
.source "UploadPicRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadPicRequest"


# instance fields
.field private picHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "handler"
    .parameter "httpUrl"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/jrdsettings/remotesecurity/logic/request/JsonRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/UploadPicRequest;->picHashMap:Ljava/util/HashMap;

    .line 49
    return-void
.end method


# virtual methods
.method protected createRequestPara()Ljava/lang/String;
    .locals 7

    .prologue
    .line 89
    new-instance v3, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    invoke-direct {v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>()V

    .line 90
    .local v3, requestJsonObject:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;

    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, db:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    const-string v4, "email"

    invoke-virtual {v0, v4}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, email:Ljava/lang/String;
    :try_start_0
    const-string v4, "email"

    invoke-virtual {v3, v4, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 96
    const-string v4, "imei"

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    :try_end_0
    .catch Lcom/android/jrdsettings/remotesecurity/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    const-string v4, "UploadPicRequest"

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

    .line 107
    invoke-virtual {v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 99
    :catch_0
    move-exception v1

    .line 102
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
    .line 127
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/UploadPicRequest;->picHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method protected parseJSONResponse(Ljava/lang/String;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 56
    const-string v3, "UploadPicRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v2, 0x0

    .line 61
    .local v2, result:Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    invoke-direct {v1, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, jsonResponse:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    const-string v3, "result"

    invoke-virtual {v1, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/jrdsettings/remotesecurity/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 70
    .end local v1           #jsonResponse:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    :goto_0
    const-string v3, "00000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    const-string v3, "UploadPicRequest"

    const-string v4, "Upload success,delete the local image..."

    invoke-static {v3, v4}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->context:Landroid/content/Context;

    const-string v4, "front.jpg"

    invoke-virtual {v3, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 74
    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->context:Landroid/content/Context;

    const-string v4, "back.jpg"

    invoke-virtual {v3, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 82
    :goto_1
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Lcom/android/jrdsettings/remotesecurity/json/JSONException;
    const-string v3, "UploadPicRequest"

    const-string v4, "JSONException ======== "

    invoke-static {v3, v4}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v0           #e:Lcom/android/jrdsettings/remotesecurity/json/JSONException;
    :cond_0
    const-string v3, "UploadPicRequest"

    const-string v4, "Upload failed ,save the imge..."

    invoke-static {v3, v4}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/UploadPicRequest;->picHashMap:Ljava/util/HashMap;

    const-string v4, "front.jpg"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const-string v4, "front.jpg"

    invoke-virtual {p0, v3, v4}, Lcom/android/jrdsettings/remotesecurity/logic/request/UploadPicRequest;->saveImage([BLjava/lang/String;)V

    .line 80
    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/UploadPicRequest;->picHashMap:Ljava/util/HashMap;

    const-string v4, "back.jpg"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const-string v4, "back.jpg"

    invoke-virtual {p0, v3, v4}, Lcom/android/jrdsettings/remotesecurity/logic/request/UploadPicRequest;->saveImage([BLjava/lang/String;)V

    goto :goto_1
.end method

.method public saveImage([BLjava/lang/String;)V
    .locals 4
    .parameter "picData"
    .parameter "filename"

    .prologue
    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 115
    .local v1, outStream:Ljava/io/FileOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 116
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 117
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v1           #outStream:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setPicHashMap(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, picHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/UploadPicRequest;->picHashMap:Ljava/util/HashMap;

    .line 133
    return-void
.end method
