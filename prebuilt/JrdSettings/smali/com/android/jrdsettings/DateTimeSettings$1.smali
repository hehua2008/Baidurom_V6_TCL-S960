.class Lcom/android/jrdsettings/DateTimeSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/DateTimeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/jrdsettings/DateTimeSettings$1;->this$0:Lcom/android/jrdsettings/DateTimeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 492
    iget-object v1, p0, Lcom/android/jrdsettings/DateTimeSettings$1;->this$0:Lcom/android/jrdsettings/DateTimeSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 493
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 494
    iget-object v1, p0, Lcom/android/jrdsettings/DateTimeSettings$1;->this$0:Lcom/android/jrdsettings/DateTimeSettings;

    invoke-virtual {v1, v0}, Lcom/android/jrdsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 496
    iget-object v1, p0, Lcom/android/jrdsettings/DateTimeSettings$1;->this$0:Lcom/android/jrdsettings/DateTimeSettings;

    #calls: Lcom/android/jrdsettings/DateTimeSettings;->updateDateFormatEntries()V
    invoke-static {v1}, Lcom/android/jrdsettings/DateTimeSettings;->access$000(Lcom/android/jrdsettings/DateTimeSettings;)V

    .line 499
    :cond_0
    return-void
.end method
