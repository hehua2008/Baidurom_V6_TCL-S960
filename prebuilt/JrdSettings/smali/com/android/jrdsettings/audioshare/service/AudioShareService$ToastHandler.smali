.class Lcom/android/jrdsettings/audioshare/service/AudioShareService$ToastHandler;
.super Landroid/os/Handler;
.source "AudioShareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/audioshare/service/AudioShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V
    .locals 0
    .parameter

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$ToastHandler;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1561
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1562
    .local v0, messageResource:I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1563
    .local v1, time:I
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$ToastHandler;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1564
    return-void
.end method
