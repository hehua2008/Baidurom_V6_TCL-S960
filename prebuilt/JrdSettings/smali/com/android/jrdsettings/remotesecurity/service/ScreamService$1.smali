.class Lcom/android/jrdsettings/remotesecurity/service/ScreamService$1;
.super Landroid/os/Handler;
.source "ScreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/remotesecurity/service/ScreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/service/ScreamService;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/service/ScreamService;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService$1;->this$0:Lcom/android/jrdsettings/remotesecurity/service/ScreamService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService$1;->this$0:Lcom/android/jrdsettings/remotesecurity/service/ScreamService;

    #calls: Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->sendKillBroadcast()V
    invoke-static {v0}, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->access$000(Lcom/android/jrdsettings/remotesecurity/service/ScreamService;)V

    .line 54
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService$1;->this$0:Lcom/android/jrdsettings/remotesecurity/service/ScreamService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
