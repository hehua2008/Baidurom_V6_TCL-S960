.class public Lorg/cybergarage/util/ThreadCore;
.super Ljava/lang/Object;
.source "ThreadCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mThreadObject:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/util/ThreadCore;->mThreadObject:Ljava/lang/Thread;

    .line 29
    return-void
.end method


# virtual methods
.method public getThreadObject()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/cybergarage/util/ThreadCore;->mThreadObject:Ljava/lang/Thread;

    return-object v0
.end method

.method public isRunnable()Z
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/util/ThreadCore;->getThreadObject()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restart()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/cybergarage/util/ThreadCore;->stop()V

    .line 81
    invoke-virtual {p0}, Lorg/cybergarage/util/ThreadCore;->start()V

    .line 82
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public setThreadObject(Ljava/lang/Thread;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 38
    iput-object p1, p0, Lorg/cybergarage/util/ThreadCore;->mThreadObject:Ljava/lang/Thread;

    .line 39
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/cybergarage/util/ThreadCore;->getThreadObject()Ljava/lang/Thread;

    move-result-object v0

    .line 48
    .local v0, threadObject:Ljava/lang/Thread;
    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/Thread;

    .end local v0           #threadObject:Ljava/lang/Thread;
    const-string v1, "Cyber.ThreadCore"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 50
    .restart local v0       #threadObject:Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Lorg/cybergarage/util/ThreadCore;->setThreadObject(Ljava/lang/Thread;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/cybergarage/util/ThreadCore;->getThreadObject()Ljava/lang/Thread;

    move-result-object v0

    .line 67
    .local v0, threadObject:Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 74
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/cybergarage/util/ThreadCore;->setThreadObject(Ljava/lang/Thread;)V

    .line 76
    :cond_0
    return-void
.end method
