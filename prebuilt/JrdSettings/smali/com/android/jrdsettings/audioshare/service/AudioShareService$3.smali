.class Lcom/android/jrdsettings/audioshare/service/AudioShareService$3;
.super Landroid/os/Handler;
.source "AudioShareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/audioshare/service/AudioShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V
    .locals 0
    .parameter

    .prologue
    .line 1475
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$3;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1480
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1481
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$3;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 1482
    return-void
.end method
