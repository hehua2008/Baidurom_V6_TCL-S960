.class Lcom/android/jrdsettings/remotesecurity/ScreamActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "ScreamActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/remotesecurity/ScreamActivity;
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
    .line 93
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/ScreamActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/ScreamActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/ScreamActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/ScreamActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/jrdsettings/remotesecurity/ScreamActivity;->cancelNotification(I)V
    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/ScreamActivity;->access$000(Lcom/android/jrdsettings/remotesecurity/ScreamActivity;I)V

    .line 97
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/ScreamActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/ScreamActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 98
    return-void
.end method
