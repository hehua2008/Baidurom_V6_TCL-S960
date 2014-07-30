.class Lcom/android/server/JrdHIFIService$1;
.super Ljava/lang/Object;
.source "JrdHIFIService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/JrdHIFIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/JrdHIFIService;


# direct methods
.method constructor <init>(Lcom/android/server/JrdHIFIService;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/server/JrdHIFIService$1;->this$0:Lcom/android/server/JrdHIFIService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    iget-object v2, p0, Lcom/android/server/JrdHIFIService$1;->this$0:Lcom/android/server/JrdHIFIService;

    #getter for: Lcom/android/server/JrdHIFIService;->mAudioMan:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/server/JrdHIFIService;->access$000(Lcom/android/server/JrdHIFIService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    const-string v2, "JrdHIFIService"

    const-string v3, "HIFI disble"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v2, p0, Lcom/android/server/JrdHIFIService$1;->this$0:Lcom/android/server/JrdHIFIService;

    #getter for: Lcom/android/server/JrdHIFIService;->mAudioMan:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/server/JrdHIFIService;->access$000(Lcom/android/server/JrdHIFIService;)Landroid/media/AudioManager;

    move-result-object v2

    const-string v3, "SetHiFiDACStatus=0"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/android/server/JrdHIFIService$1;->this$0:Lcom/android/server/JrdHIFIService;

    iget-object v3, p0, Lcom/android/server/JrdHIFIService$1;->this$0:Lcom/android/server/JrdHIFIService;

    #getter for: Lcom/android/server/JrdHIFIService;->mHIFIStatus:I
    invoke-static {v3}, Lcom/android/server/JrdHIFIService;->access$100(Lcom/android/server/JrdHIFIService;)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    #calls: Lcom/android/server/JrdHIFIService;->sendMusicStatusBroadcast(ZZ)V
    invoke-static {v2, v1, v0}, Lcom/android/server/JrdHIFIService;->access$200(Lcom/android/server/JrdHIFIService;ZZ)V

    .line 66
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 64
    goto :goto_0
.end method
