.class Lcom/android/server/CTAManagerService$AThread;
.super Ljava/lang/Thread;
.source "CTAManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CTAManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AThread"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mh:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 377
    iput-object p1, p0, Lcom/android/server/CTAManagerService$AThread;->context:Landroid/content/Context;

    .line 378
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/CTAManagerService$AThread;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/server/CTAManagerService$AThread;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/server/CTAManagerService$AThread;->mh:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 385
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 387
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 388
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 390
    new-instance v0, Lcom/android/server/CTAManagerService$AThread$1;

    invoke-direct {v0, p0}, Lcom/android/server/CTAManagerService$AThread$1;-><init>(Lcom/android/server/CTAManagerService$AThread;)V

    iput-object v0, p0, Lcom/android/server/CTAManagerService$AThread;->mh:Landroid/os/Handler;

    .line 453
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 454
    return-void
.end method
