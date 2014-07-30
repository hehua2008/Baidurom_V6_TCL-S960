.class Lcom/android/server/InputMethodManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 725
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 728
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v2, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 730
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 731
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x1110057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 732
    .local v0, mChangeIMEFlag:Z
    if-eqz v0, :cond_0

    .line 733
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    #calls: Lcom/android/server/InputMethodManagerService;->checkCurrentLocaleChangedLocked()V
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1100(Lcom/android/server/InputMethodManagerService;)V

    .line 736
    :cond_0
    monitor-exit v3

    .line 737
    return-void

    .line 736
    .end local v0           #mChangeIMEFlag:Z
    .end local v1           #res:Landroid/content/res/Resources;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
