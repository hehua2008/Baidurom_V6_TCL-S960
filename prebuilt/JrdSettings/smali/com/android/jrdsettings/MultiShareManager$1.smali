.class Lcom/android/jrdsettings/MultiShareManager$1;
.super Landroid/os/AsyncTask;
.source "MultiShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/MultiShareManager;->startMultiScreen(Landroid/widget/Switch;)V
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
    .line 177
    iput-object p1, p0, Lcom/android/jrdsettings/MultiShareManager$1;->this$0:Lcom/android/jrdsettings/MultiShareManager;

    iput-object p2, p0, Lcom/android/jrdsettings/MultiShareManager$1;->val$switchButton:Landroid/widget/Switch;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter "arg0"

    .prologue
    .line 182
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 183
    .local v0, flag:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/jrdsettings/MultiShareManager$1;->this$0:Lcom/android/jrdsettings/MultiShareManager;

    const/4 v2, 0x1

    #calls: Lcom/android/jrdsettings/MultiShareManager;->stopOtherService(I)Z
    invoke-static {v1, v2}, Lcom/android/jrdsettings/MultiShareManager;->access$000(Lcom/android/jrdsettings/MultiShareManager;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    const-string v1, "MulitShareManager"

    const-string v2, "sendBroadcast -> startMultiScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/android/jrdsettings/MultiShareManager$1;->this$0:Lcom/android/jrdsettings/MultiShareManager;

    #getter for: Lcom/android/jrdsettings/MultiShareManager;->mDLNAManager:Ljrdcom/dlnaservice/DLNAManager;
    invoke-static {v1}, Lcom/android/jrdsettings/MultiShareManager;->access$100(Lcom/android/jrdsettings/MultiShareManager;)Ljrdcom/dlnaservice/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Ljrdcom/dlnaservice/DLNAManager;->startWork()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 189
    const-string v1, "MulitShareManager"

    const-string v2, "sendBroadcast -> startMultiScreen after"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/MultiShareManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    .line 198
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 199
    iget-object v2, p0, Lcom/android/jrdsettings/MultiShareManager$1;->this$0:Lcom/android/jrdsettings/MultiShareManager;

    #getter for: Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/jrdsettings/MultiShareManager;->access$200(Lcom/android/jrdsettings/MultiShareManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dlna_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 201
    .local v1, multiScreenState:I
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/android/jrdsettings/MultiShareManager$1;->this$0:Lcom/android/jrdsettings/MultiShareManager;

    #getter for: Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/jrdsettings/MultiShareManager;->access$200(Lcom/android/jrdsettings/MultiShareManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dlna_mode_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.DLNA_SWITCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "MULTI_SCREEN_SWITCH_STATUS"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    iget-object v2, p0, Lcom/android/jrdsettings/MultiShareManager$1;->this$0:Lcom/android/jrdsettings/MultiShareManager;

    #getter for: Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/jrdsettings/MultiShareManager;->access$200(Lcom/android/jrdsettings/MultiShareManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    iget-object v2, p0, Lcom/android/jrdsettings/MultiShareManager$1;->this$0:Lcom/android/jrdsettings/MultiShareManager;

    #setter for: Lcom/android/jrdsettings/MultiShareManager;->mMultiScreenHasOpen:Z
    invoke-static {v2, v5}, Lcom/android/jrdsettings/MultiShareManager;->access$302(Lcom/android/jrdsettings/MultiShareManager;Z)Z

    .line 211
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/MultiShareManager$1;->val$switchButton:Landroid/widget/Switch;

    if-eqz v2, :cond_1

    .line 212
    iget-object v2, p0, Lcom/android/jrdsettings/MultiShareManager$1;->val$switchButton:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 214
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 177
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/MultiShareManager$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
