.class public Lcom/android/jrdsettings/remotesecurity/service/ThreadPoolExecutorManager;
.super Ljava/lang/Object;
.source "ThreadPoolExecutorManager.java"


# static fields
.field private static final corePoolSize:I = 0xa

.field private static final keepAliveTime:I = 0x12c

.field private static mThreadPoolExecutorManager:Lcom/android/jrdsettings/remotesecurity/service/ThreadPoolExecutorManager; = null

.field private static final maximumPoolSize:I = 0x14

.field private static final workQueueSize:I = 0x1e


# instance fields
.field private mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/service/ThreadPoolExecutorManager;

    invoke-direct {v0}, Lcom/android/jrdsettings/remotesecurity/service/ThreadPoolExecutorManager;-><init>()V

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/service/ThreadPoolExecutorManager;->mThreadPoolExecutorManager:Lcom/android/jrdsettings/remotesecurity/service/ThreadPoolExecutorManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v1, 0xa

    const/16 v2, 0x14

    const-wide/16 v3, 0x12c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v7, 0x1e

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/android/jrdsettings/remotesecurity/service/ThreadPoolExceptionHandler;

    invoke-direct {v7}, Lcom/android/jrdsettings/remotesecurity/service/ThreadPoolExceptionHandler;-><init>()V

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ThreadPoolExecutorManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 58
    return-void
.end method

.method public static getInstanceOfThreadPoolExecutorManager()Lcom/android/jrdsettings/remotesecurity/service/ThreadPoolExecutorManager;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/jrdsettings/remotesecurity/service/ThreadPoolExecutorManager;->mThreadPoolExecutorManager:Lcom/android/jrdsettings/remotesecurity/service/ThreadPoolExecutorManager;

    return-object v0
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ThreadPoolExecutorManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method
