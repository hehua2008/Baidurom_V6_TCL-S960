.class Lcom/android/jrdsettings/dlna/DLNAEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "DLNAEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/dlna/DLNAEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/dlna/DLNAEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler$1;->this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 91
    .local v1, change:I
    if-eq v1, v7, :cond_0

    if-nez v1, :cond_1

    .line 93
    :cond_0
    iget-object v4, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler$1;->this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    #getter for: Lcom/android/jrdsettings/dlna/DLNAEnabler;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->access$000(Lcom/android/jrdsettings/dlna/DLNAEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 94
    iget-object v4, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler$1;->this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    #getter for: Lcom/android/jrdsettings/dlna/DLNAEnabler;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->access$000(Lcom/android/jrdsettings/dlna/DLNAEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-static {v4}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->access$102(Z)Z

    .line 95
    iget-object v4, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler$1;->this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    iget-object v5, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler$1;->this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    #getter for: Lcom/android/jrdsettings/dlna/DLNAEnabler;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->access$000(Lcom/android/jrdsettings/dlna/DLNAEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    #calls: Lcom/android/jrdsettings/dlna/DLNAEnabler;->handleDlnaStateEnable(Z)V
    invoke-static {v4, v5}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->access$200(Lcom/android/jrdsettings/dlna/DLNAEnabler;Z)V

    .line 126
    .end local v1           #change:I
    :cond_1
    :goto_0
    return-void

    .line 97
    :cond_2
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 98
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 103
    .local v3, info:Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler$1;->this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    #getter for: Lcom/android/jrdsettings/dlna/DLNAEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->access$300(Lcom/android/jrdsettings/dlna/DLNAEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dlna_mode_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 105
    .local v2, currentState:I
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 106
    invoke-static {v7}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->access$102(Z)Z

    .line 107
    if-eqz v2, :cond_3

    if-ne v2, v7, :cond_4

    .line 109
    :cond_3
    iget-object v4, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler$1;->this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    #getter for: Lcom/android/jrdsettings/dlna/DLNAEnabler;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->access$000(Lcom/android/jrdsettings/dlna/DLNAEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    iget-object v4, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler$1;->this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    iget-object v5, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler$1;->this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    #getter for: Lcom/android/jrdsettings/dlna/DLNAEnabler;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->access$000(Lcom/android/jrdsettings/dlna/DLNAEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    #calls: Lcom/android/jrdsettings/dlna/DLNAEnabler;->handleDlnaStateEnable(Z)V
    invoke-static {v4, v5}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->access$200(Lcom/android/jrdsettings/dlna/DLNAEnabler;Z)V

    goto :goto_0

    .line 112
    :cond_4
    iget-object v4, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler$1;->this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    #getter for: Lcom/android/jrdsettings/dlna/DLNAEnabler;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->access$000(Lcom/android/jrdsettings/dlna/DLNAEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 113
    iget-object v4, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler$1;->this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    iget-object v5, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler$1;->this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    #getter for: Lcom/android/jrdsettings/dlna/DLNAEnabler;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->access$000(Lcom/android/jrdsettings/dlna/DLNAEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    #calls: Lcom/android/jrdsettings/dlna/DLNAEnabler;->handleDlnaStateEnable(Z)V
    invoke-static {v4, v5}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->access$200(Lcom/android/jrdsettings/dlna/DLNAEnabler;Z)V

    goto :goto_0

    .line 116
    :cond_5
    invoke-static {v6}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->access$102(Z)Z

    .line 117
    iget-object v4, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler$1;->this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    #getter for: Lcom/android/jrdsettings/dlna/DLNAEnabler;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->access$000(Lcom/android/jrdsettings/dlna/DLNAEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 118
    iget-object v4, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler$1;->this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    iget-object v5, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler$1;->this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    #getter for: Lcom/android/jrdsettings/dlna/DLNAEnabler;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->access$000(Lcom/android/jrdsettings/dlna/DLNAEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    #calls: Lcom/android/jrdsettings/dlna/DLNAEnabler;->handleDlnaStateEnable(Z)V
    invoke-static {v4, v5}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->access$200(Lcom/android/jrdsettings/dlna/DLNAEnabler;Z)V

    goto :goto_0

    .line 120
    .end local v2           #currentState:I
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_6
    const-string v4, "android.intent.DLNA_SWITCH"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    const-string v4, "MULTI_SCREEN_SWITCH_STATUS"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 123
    .restart local v2       #currentState:I
    iget-object v4, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler$1;->this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    #calls: Lcom/android/jrdsettings/dlna/DLNAEnabler;->updateSwitch(I)V
    invoke-static {v4, v2}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->access$400(Lcom/android/jrdsettings/dlna/DLNAEnabler;I)V

    goto/16 :goto_0
.end method
