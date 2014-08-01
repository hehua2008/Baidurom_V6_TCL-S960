.class public Lcom/android/jrdsettings/remotesecurity/service/ThreadPoolExceptionHandler;
.super Ljava/lang/Object;
.source "ThreadPoolExceptionHandler.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadPoolExceptionHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 33
    const-string v0, "ThreadPoolExceptionHandler"

    const-string v1, "ThreadPoolException~~~"

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
