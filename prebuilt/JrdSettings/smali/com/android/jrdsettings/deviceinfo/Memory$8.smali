.class Lcom/android/jrdsettings/deviceinfo/Memory$8;
.super Ljava/lang/Thread;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/deviceinfo/Memory;->doMount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/deviceinfo/Memory;Landroid/os/storage/IMountService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 663
    iput-object p1, p0, Lcom/android/jrdsettings/deviceinfo/Memory$8;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    iput-object p2, p0, Lcom/android/jrdsettings/deviceinfo/Memory$8;->val$mountService:Landroid/os/storage/IMountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory$8;->val$mountService:Landroid/os/storage/IMountService;

    if-eqz v0, :cond_0

    .line 668
    const-string v0, "MemorySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mountVolume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/jrdsettings/deviceinfo/Memory;->access$1200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory$8;->val$mountService:Landroid/os/storage/IMountService;

    invoke-static {}, Lcom/android/jrdsettings/deviceinfo/Memory;->access$1200()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 676
    :goto_0
    return-void

    .line 671
    :cond_0
    const-string v0, "MemorySettings"

    const-string v1, "Mount service is null, can\'t mount"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 673
    :catch_0
    move-exception v0

    goto :goto_0
.end method
