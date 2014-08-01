.class public Lcom/android/jrdsettings/remotesecurity/logic/NetStateChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetStateChangeBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetStateChangeBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private doSendLoginOutRequest(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 47
    const-string v1, "NetStateChangeBroadcastReceiver"

    const-string v2, "doSendLoginOutRequest  begin"

    invoke-static {v1, v2}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 51
    invoke-static {p1}, Lcom/android/jrdsettings/remotesecurity/gcm/GCMRegistrar;->unregister(Landroid/content/Context;)V

    .line 52
    const-string v1, "NetStateChangeBroadcastReceiver"

    const-string v2, "doSendLoginOutRequest  end"

    invoke-static {v1, v2}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private uploadLocalPicture(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 56
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "front.jpg"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v3, fileFront:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "back.jpg"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v2, fileBack:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 59
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v5, picHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const/4 v4, 0x0

    .line 62
    .local v4, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 63
    .local v0, data:[B
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 65
    const-string v7, "front.jpg"

    invoke-virtual {p1, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 66
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v7

    new-array v0, v7, [B

    .line 67
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 68
    const-string v7, "front.jpg"

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 72
    const-string v7, "back.jpg"

    invoke-virtual {p1, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 73
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v7

    new-array v0, v7, [B

    .line 74
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 75
    const-string v7, "back.jpg"

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    new-instance v6, Lcom/android/jrdsettings/remotesecurity/logic/request/UploadPicRequest;

    const/4 v7, 0x0

    const-string v8, "phone/uploadImage"

    invoke-direct {v6, p1, v7, v8}, Lcom/android/jrdsettings/remotesecurity/logic/request/UploadPicRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 84
    .local v6, uploadPicRequest:Lcom/android/jrdsettings/remotesecurity/logic/request/UploadPicRequest;
    invoke-virtual {v6, v5}, Lcom/android/jrdsettings/remotesecurity/logic/request/UploadPicRequest;->setPicHashMap(Ljava/util/HashMap;)V

    .line 85
    const-string v7, "NetStateChangeBroadcastReceiver"

    const-string v8, "send upload request"

    invoke-static {v7, v8}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v6}, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->sendHttpRequest()V

    .line 88
    .end local v0           #data:[B
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v5           #picHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    .end local v6           #uploadPicRequest:Lcom/android/jrdsettings/remotesecurity/logic/request/UploadPicRequest;
    :cond_3
    return-void

    .line 78
    .restart local v0       #data:[B
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v5       #picHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :catch_0
    move-exception v1

    .line 80
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 26
    const-string v5, "NetStateChangeBroadcastReceiver"

    const-string v6, "NetStateChangeBroadcastReceiver onReceive begin"

    invoke-static {v5, v6}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 29
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 30
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 31
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;

    invoke-direct {v1, p1}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;-><init>(Landroid/content/Context;)V

    .line 32
    .local v1, dbRsdbHelper:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    const-string v5, "rs_state"

    invoke-virtual {v1, v5}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getIntValue(Ljava/lang/String;)I

    move-result v4

    .line 33
    .local v4, rs_state:I
    const-string v5, "isLoginOut"

    invoke-virtual {v1, v5}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getIntValue(Ljava/lang/String;)I

    move-result v3

    .line 35
    .local v3, isLoginOut:I
    if-nez v4, :cond_0

    if-nez v3, :cond_0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/remotesecurity/logic/NetStateChangeBroadcastReceiver;->doSendLoginOutRequest(Landroid/content/Context;)V

    .line 39
    :cond_0
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 40
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/remotesecurity/logic/NetStateChangeBroadcastReceiver;->uploadLocalPicture(Landroid/content/Context;)V

    .line 43
    .end local v1           #dbRsdbHelper:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    .end local v3           #isLoginOut:I
    .end local v4           #rs_state:I
    :cond_1
    const-string v5, "NetStateChangeBroadcastReceiver"

    const-string v6, "NetStateChangeBroadcastReceiver onReceive end"

    invoke-static {v5, v6}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
