.class Lcom/android/jrdsettings/KeyguardWidgetEditActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardWidgetEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->setUpBroadCastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$2;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 252
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$2;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 255
    :cond_0
    return-void
.end method
