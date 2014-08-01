.class public Lcom/android/jrdsettings/remotesecurity/service/GCMIntentService;
.super Lcom/android/jrdsettings/remotesecurity/gcm/GCMBaseIntentService;
.source "GCMIntentService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GCMIntentService"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1035177391792"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/remotesecurity/gcm/GCMBaseIntentService;-><init>([Ljava/lang/String;)V

    .line 40
    const-string v0, "GCMIntentService"

    const-string v1, "new GCMIntentService"

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onDeletedMessages(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "total"

    .prologue
    .line 127
    const-string v0, "GCMIntentService"

    const-string v1, "Received deleted messages notification"

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "errorId"

    .prologue
    .line 133
    const-string v0, "GCMIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 71
    const-string v7, "GCMIntentService"

    const-string v8, "Received message"

    invoke-static {v7, v8}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v7, "data"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, data:Ljava/lang/String;
    const-string v7, "GCMIntentService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v7, "regid"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, id:Ljava/lang/String;
    const/4 v2, 0x0

    .line 79
    .local v2, dataJsonObject:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    const/4 v0, 0x0

    .line 82
    .local v0, cmdId:I
    :try_start_0
    new-instance v3, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    invoke-direct {v3, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/jrdsettings/remotesecurity/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    .end local v2           #dataJsonObject:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .local v3, dataJsonObject:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    :try_start_1
    const-string v7, "cmdid"

    invoke-virtual {v3, v7}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 84
    const-string v7, "GCMIntentService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cmdId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz v0, :cond_0

    .line 88
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.jrdsettings.remotesecurity.RS_MESSAGE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v6, rs_message_intent:Landroid/content/Intent;
    const-string v7, "cmd"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v6           #rs_message_intent:Landroid/content/Intent;
    :cond_0
    move-object v2, v3

    .line 122
    .end local v3           #dataJsonObject:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .restart local v2       #dataJsonObject:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    :goto_1
    return-void

    .line 94
    .end local v2           #dataJsonObject:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .restart local v3       #dataJsonObject:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .restart local v6       #rs_message_intent:Landroid/content/Intent;
    :pswitch_0
    const-string v7, "lock_pwd"

    const-string v8, "lock_pwd"

    invoke-virtual {v3, v8}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v7, "emergency_num"

    const-string v8, "emergency_num"

    invoke-virtual {v3, v8}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v7, "message"

    const-string v8, "message"

    invoke-virtual {v3, v8}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Lcom/android/jrdsettings/remotesecurity/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 116
    .end local v6           #rs_message_intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 119
    .end local v3           #dataJsonObject:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .restart local v2       #dataJsonObject:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .local v4, e:Lcom/android/jrdsettings/remotesecurity/json/JSONException;
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 116
    .end local v4           #e:Lcom/android/jrdsettings/remotesecurity/json/JSONException;
    :catch_1
    move-exception v4

    goto :goto_2

    .line 91
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "errorId"

    .prologue
    .line 141
    const-string v0, "GCMIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received recoverable error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-super {p0, p1, p2}, Lcom/android/jrdsettings/remotesecurity/gcm/GCMBaseIntentService;->onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "registrationId"

    .prologue
    .line 45
    const-string v1, "GCMIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device registered: regId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.jrdsettings.remotesecurity.MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "message_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    const-string v1, "regid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "registrationId"

    .prologue
    const/16 v3, 0xa

    .line 59
    const-string v1, "GCMIntentService"

    const-string v2, "Device unregistered"

    invoke-static {v1, v2}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.jrdsettings.remotesecurity.MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "message_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    const-string v1, "regid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v1, "cmd"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 67
    return-void
.end method
