.class public abstract Lcom/android/jrdsettings/remotesecurity/logic/request/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lcom/android/jrdsettings/remotesecurity/service/IHttpCallback;


# instance fields
.field protected connectionType:I

.field protected context:Landroid/content/Context;

.field protected handler:Landroid/os/Handler;

.field protected httpUrl:Ljava/lang/String;

.field protected requestType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "handler"
    .parameter "httpUrl"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->httpUrl:Ljava/lang/String;

    .line 38
    iput v1, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->requestType:I

    .line 43
    iput v1, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->connectionType:I

    .line 50
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->context:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->handler:Landroid/os/Handler;

    .line 52
    iput-object p3, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->httpUrl:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method protected abstract createConnectionTask()Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;
.end method

.method public onConnError(ILjava/lang/String;)V
    .locals 0
    .parameter "code"
    .parameter "message"

    .prologue
    .line 85
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0
    .parameter "code"
    .parameter "message"

    .prologue
    .line 79
    return-void
.end method

.method public final sendHttpRequest()V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->createConnectionTask()Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;

    move-result-object v0

    .line 63
    .local v0, connectionTask:Lcom/android/jrdsettings/remotesecurity/service/ConnectionTask;
    invoke-static {}, Lcom/android/jrdsettings/remotesecurity/service/ThreadPoolExecutorManager;->getInstanceOfThreadPoolExecutorManager()Lcom/android/jrdsettings/remotesecurity/service/ThreadPoolExecutorManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/jrdsettings/remotesecurity/service/ThreadPoolExecutorManager;->addTask(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method public setConnetionType(I)V
    .locals 0
    .parameter "connetionType"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->connectionType:I

    .line 107
    return-void
.end method

.method public setRequestType(I)V
    .locals 0
    .parameter "requestType"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->requestType:I

    .line 96
    return-void
.end method
