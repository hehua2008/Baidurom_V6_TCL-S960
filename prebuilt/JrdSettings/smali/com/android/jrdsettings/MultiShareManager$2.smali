.class Lcom/android/jrdsettings/MultiShareManager$2;
.super Landroid/os/AsyncTask;
.source "MultiShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/MultiShareManager;->stopMultiScreen(Landroid/widget/Switch;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/MultiShareManager;

.field final synthetic val$switchButton:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/MultiShareManager;Landroid/widget/Switch;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/jrdsettings/MultiShareManager$2;->this$0:Lcom/android/jrdsettings/MultiShareManager;

    iput-object p2, p0, Lcom/android/jrdsettings/MultiShareManager$2;->val$switchButton:Landroid/widget/Switch;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter "arg0"

    .prologue
    .line 238
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 240
    .local v0, flag:Ljava/lang/Boolean;
    const-string v1, "MulitShareManager"

    const-string v2, "sendBroadcast -> stopMultiScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lcom/android/jrdsettings/MultiShareManager$2;->this$0:Lcom/android/jrdsettings/MultiShareManager;

    #getter for: Lcom/android/jrdsettings/MultiShareManager;->mDLNAManager:Ljrdcom/dlnaservice/DLNAManager;
    invoke-static {v1}, Lcom/android/jrdsettings/MultiShareManager;->access$100(Lcom/android/jrdsettings/MultiShareManager;)Ljrdcom/dlnaservice/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Ljrdcom/dlnaservice/DLNAManager;->stopWork()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 244
    const-string v1, "MulitShareManager"

    const-string v2, "sendBroadcast -> stopMultiScreen after"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/MultiShareManager$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 252
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 253
    iget-object v2, p0, Lcom/android/jrdsettings/MultiShareManager$2;->this$0:Lcom/android/jrdsettings/MultiShareManager;

    #getter for: Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/jrdsettings/MultiShareManager;->access$200(Lcom/android/jrdsettings/MultiShareManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dlna_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 256
    .local v1, multiScreenState:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/android/jrdsettings/MultiShareManager$2;->this$0:Lcom/android/jrdsettings/MultiShareManager;

    #getter for: Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/jrdsettings/MultiShareManager;->access$200(Lcom/android/jrdsettings/MultiShareManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dlna_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.DLNA_SWITCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "MULTI_SCREEN_SWITCH_STATUS"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    iget-object v2, p0, Lcom/android/jrdsettings/MultiShareManager$2;->this$0:Lcom/android/jrdsettings/MultiShareManager;

    #getter for: Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/jrdsettings/MultiShareManager;->access$200(Lcom/android/jrdsettings/MultiShareManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 264
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/MultiShareManager$2;->val$switchButton:Landroid/widget/Switch;

    if-eqz v2, :cond_1

    .line 265
    iget-object v2, p0, Lcom/android/jrdsettings/MultiShareManager$2;->val$switchButton:Landroid/widget/Switch;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 267
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 233
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/MultiShareManager$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
