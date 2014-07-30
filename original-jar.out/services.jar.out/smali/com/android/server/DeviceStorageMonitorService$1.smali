.class Lcom/android/server/DeviceStorageMonitorService$1;
.super Landroid/os/Handler;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceStorageMonitorService;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 215
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    const-string v3, "com.android.settings.LowMemoryStorage"

    invoke-virtual {v2, v3}, Lcom/android/server/DeviceStorageMonitorService;->IfShowDialog(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v0, mIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings.LowMemoryStorage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/DeviceStorageMonitorService;->access$000(Lcom/android/server/DeviceStorageMonitorService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 290
    .end local v0           #mIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 285
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v1, :cond_1

    .line 286
    const-string v1, "DeviceStorageMonitorService"

    const-string v2, "Will not process invalid message"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_2

    :goto_1
    #calls: Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V
    invoke-static {v2, v1}, Lcom/android/server/DeviceStorageMonitorService;->access$100(Lcom/android/server/DeviceStorageMonitorService;Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
