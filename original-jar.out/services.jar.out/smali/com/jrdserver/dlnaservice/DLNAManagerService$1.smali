.class Lcom/jrdserver/dlnaservice/DLNAManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "DLNAManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdserver/dlnaservice/DLNAManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdserver/dlnaservice/DLNAManagerService;


# direct methods
.method constructor <init>(Lcom/jrdserver/dlnaservice/DLNAManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService$1;->this$0:Lcom/jrdserver/dlnaservice/DLNAManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, action:Ljava/lang/String;
    iget-object v4, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService$1;->this$0:Lcom/jrdserver/dlnaservice/DLNAManagerService;

    #getter for: Lcom/jrdserver/dlnaservice/DLNAManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/jrdserver/dlnaservice/DLNAManagerService;->access$000(Lcom/jrdserver/dlnaservice/DLNAManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dlna_mode_on"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 58
    .local v2, dLNAStatus:I
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "networkInfo"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 61
    .local v3, info:Landroid/net/NetworkInfo;
    const-string v4, "DLNAServiceApk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<Reciver> info = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService$1;->this$0:Lcom/jrdserver/dlnaservice/DLNAManagerService;

    #getter for: Lcom/jrdserver/dlnaservice/DLNAManagerService;->mRegister:Z
    invoke-static {v6}, Lcom/jrdserver/dlnaservice/DLNAManagerService;->access$100(Lcom/jrdserver/dlnaservice/DLNAManagerService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_1

    .line 65
    iget-object v4, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService$1;->this$0:Lcom/jrdserver/dlnaservice/DLNAManagerService;

    #setter for: Lcom/jrdserver/dlnaservice/DLNAManagerService;->mEnable:Z
    invoke-static {v4, v7}, Lcom/jrdserver/dlnaservice/DLNAManagerService;->access$202(Lcom/jrdserver/dlnaservice/DLNAManagerService;Z)Z

    .line 104
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 72
    .restart local v3       #info:Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    .line 73
    iget-object v4, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService$1;->this$0:Lcom/jrdserver/dlnaservice/DLNAManagerService;

    #setter for: Lcom/jrdserver/dlnaservice/DLNAManagerService;->mEnable:Z
    invoke-static {v4, v8}, Lcom/jrdserver/dlnaservice/DLNAManagerService;->access$202(Lcom/jrdserver/dlnaservice/DLNAManagerService;Z)Z

    .line 74
    iget-object v4, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService$1;->this$0:Lcom/jrdserver/dlnaservice/DLNAManagerService;

    #getter for: Lcom/jrdserver/dlnaservice/DLNAManagerService;->mRegister:Z
    invoke-static {v4}, Lcom/jrdserver/dlnaservice/DLNAManagerService;->access$100(Lcom/jrdserver/dlnaservice/DLNAManagerService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    iget-object v4, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService$1;->this$0:Lcom/jrdserver/dlnaservice/DLNAManagerService;

    invoke-virtual {v4}, Lcom/jrdserver/dlnaservice/DLNAManagerService;->stopWork()Z

    goto :goto_0

    .line 78
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_2
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 79
    const-string v4, "DLNAServiceApk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Changed action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "wifi_state"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v4, "wifi_state"

    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 86
    .local v1, change:I
    if-eq v1, v7, :cond_0

    if-nez v1, :cond_0

    goto :goto_0

    .line 92
    .end local v1           #change:I
    :cond_3
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    const-string v4, "DLNAServiceApk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<Reciver> action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService$1;->this$0:Lcom/jrdserver/dlnaservice/DLNAManagerService;

    #getter for: Lcom/jrdserver/dlnaservice/DLNAManagerService;->mRegister:Z
    invoke-static {v6}, Lcom/jrdserver/dlnaservice/DLNAManagerService;->access$100(Lcom/jrdserver/dlnaservice/DLNAManagerService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService$1;->this$0:Lcom/jrdserver/dlnaservice/DLNAManagerService;

    #getter for: Lcom/jrdserver/dlnaservice/DLNAManagerService;->mEnable:Z
    invoke-static {v6}, Lcom/jrdserver/dlnaservice/DLNAManagerService;->access$200(Lcom/jrdserver/dlnaservice/DLNAManagerService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v4, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService$1;->this$0:Lcom/jrdserver/dlnaservice/DLNAManagerService;

    #setter for: Lcom/jrdserver/dlnaservice/DLNAManagerService;->mBoot:Z
    invoke-static {v4, v7}, Lcom/jrdserver/dlnaservice/DLNAManagerService;->access$302(Lcom/jrdserver/dlnaservice/DLNAManagerService;Z)Z

    .line 96
    iget-object v4, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService$1;->this$0:Lcom/jrdserver/dlnaservice/DLNAManagerService;

    #getter for: Lcom/jrdserver/dlnaservice/DLNAManagerService;->mRegister:Z
    invoke-static {v4}, Lcom/jrdserver/dlnaservice/DLNAManagerService;->access$100(Lcom/jrdserver/dlnaservice/DLNAManagerService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    iget-object v4, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService$1;->this$0:Lcom/jrdserver/dlnaservice/DLNAManagerService;

    #getter for: Lcom/jrdserver/dlnaservice/DLNAManagerService;->mEnable:Z
    invoke-static {v4}, Lcom/jrdserver/dlnaservice/DLNAManagerService;->access$200(Lcom/jrdserver/dlnaservice/DLNAManagerService;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 100
    iget-object v4, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService$1;->this$0:Lcom/jrdserver/dlnaservice/DLNAManagerService;

    invoke-virtual {v4}, Lcom/jrdserver/dlnaservice/DLNAManagerService;->stopWork()Z

    goto/16 :goto_0
.end method
