.class Landroid/os/CTAManager$WorkThread;
.super Ljava/lang/Thread;
.source "CTAManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CTAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkThread"
.end annotation


# instance fields
.field private mApi:Ljava/lang/String;

.field private mBypassSystem:Z

.field private mDialogKind:I

.field private mFalseCallback:Ljava/lang/Runnable;

.field private mNote:Ljava/lang/CharSequence;

.field private mTrueCallback:Ljava/lang/Runnable;

.field private mUid:I

.field final synthetic this$0:Landroid/os/CTAManager;


# direct methods
.method private constructor <init>(Landroid/os/CTAManager;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Landroid/os/CTAManager$WorkThread;->this$0:Landroid/os/CTAManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/CTAManager;Landroid/os/CTAManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 301
    invoke-direct {p0, p1}, Landroid/os/CTAManager$WorkThread;-><init>(Landroid/os/CTAManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 321
    invoke-static {}, Landroid/os/CTAManager;->access$100()Landroid/os/CTAManager;

    move-result-object v0

    iget v1, p0, Landroid/os/CTAManager$WorkThread;->mUid:I

    iget-object v2, p0, Landroid/os/CTAManager$WorkThread;->mApi:Ljava/lang/String;

    iget-object v3, p0, Landroid/os/CTAManager$WorkThread;->mNote:Ljava/lang/CharSequence;

    iget v4, p0, Landroid/os/CTAManager$WorkThread;->mDialogKind:I

    iget-boolean v5, p0, Landroid/os/CTAManager$WorkThread;->mBypassSystem:Z

    invoke-virtual/range {v0 .. v5}, Landroid/os/CTAManager;->Check(ILjava/lang/String;Ljava/lang/CharSequence;IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Landroid/os/CTAManager$WorkThread;->mTrueCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/CTAManager$WorkThread;->mTrueCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Landroid/os/CTAManager$WorkThread;->mFalseCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/CTAManager$WorkThread;->mFalseCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public set(ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;IZ)V
    .locals 0
    .parameter "uid"
    .parameter "api"
    .parameter "trueCallback"
    .parameter "falseCallback"
    .parameter "note"
    .parameter "dialogKind"
    .parameter "bypassSystem"

    .prologue
    .line 311
    iput-object p3, p0, Landroid/os/CTAManager$WorkThread;->mTrueCallback:Ljava/lang/Runnable;

    .line 312
    iput-object p4, p0, Landroid/os/CTAManager$WorkThread;->mFalseCallback:Ljava/lang/Runnable;

    .line 313
    iput p1, p0, Landroid/os/CTAManager$WorkThread;->mUid:I

    .line 314
    iput-object p2, p0, Landroid/os/CTAManager$WorkThread;->mApi:Ljava/lang/String;

    .line 315
    iput-object p5, p0, Landroid/os/CTAManager$WorkThread;->mNote:Ljava/lang/CharSequence;

    .line 316
    iput p6, p0, Landroid/os/CTAManager$WorkThread;->mDialogKind:I

    .line 317
    iput-boolean p7, p0, Landroid/os/CTAManager$WorkThread;->mBypassSystem:Z

    .line 318
    return-void
.end method
