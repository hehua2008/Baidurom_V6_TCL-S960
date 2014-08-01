.class Lcom/android/jrdsettings/remotesecurity/ScreamActivity$1;
.super Ljava/lang/Object;
.source "ScreamActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/remotesecurity/ScreamActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/ScreamActivity;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/ScreamActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/ScreamActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/ScreamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 69
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;

    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/ScreamActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/ScreamActivity;

    const/4 v3, 0x0

    const-string v4, "phone/commandstatus"

    invoke-direct {v0, v2, v3, v4}, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 71
    .local v0, commandStatusRequest:Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;->setmCmdId(I)V

    .line 72
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;->setmStatus(I)V

    .line 73
    invoke-virtual {v0}, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->sendHttpRequest()V

    .line 74
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/ScreamActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/ScreamActivity;

    const/4 v3, 0x0

    #calls: Lcom/android/jrdsettings/remotesecurity/ScreamActivity;->cancelNotification(I)V
    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/ScreamActivity;->access$000(Lcom/android/jrdsettings/remotesecurity/ScreamActivity;I)V

    .line 75
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/ScreamActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/ScreamActivity;

    const-class v3, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/ScreamActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/ScreamActivity;

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 77
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/ScreamActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/ScreamActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 78
    return-void
.end method
