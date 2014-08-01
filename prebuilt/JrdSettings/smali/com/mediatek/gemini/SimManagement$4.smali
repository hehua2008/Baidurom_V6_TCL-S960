.class Lcom/mediatek/gemini/SimManagement$4;
.super Landroid/os/Handler;
.source "SimManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/SimManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimManagement;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/mediatek/gemini/SimManagement$4;->this$0:Lcom/mediatek/gemini/SimManagement;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 184
    const/16 v0, 0x7d0

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    .line 185
    const-string v0, "SimManagementSettings"

    const-string v1, "reveive time out msg..."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$4;->this$0:Lcom/mediatek/gemini/SimManagement;

    #calls: Lcom/mediatek/gemini/SimManagement;->removeProgDlg()V
    invoke-static {v0}, Lcom/mediatek/gemini/SimManagement;->access$300(Lcom/mediatek/gemini/SimManagement;)V

    .line 187
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$4;->this$0:Lcom/mediatek/gemini/SimManagement;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z
    invoke-static {v0, v1}, Lcom/mediatek/gemini/SimManagement;->access$402(Lcom/mediatek/gemini/SimManagement;Z)Z

    .line 188
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$4;->this$0:Lcom/mediatek/gemini/SimManagement;

    #calls: Lcom/mediatek/gemini/SimManagement;->updateDataConnPrefe()V
    invoke-static {v0}, Lcom/mediatek/gemini/SimManagement;->access$000(Lcom/mediatek/gemini/SimManagement;)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const/16 v0, 0x7d1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    .line 190
    const-string v0, "SimManagementSettings"

    const-string v1, "handle abnormal progress dialog not showing"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$4;->this$0:Lcom/mediatek/gemini/SimManagement;

    #calls: Lcom/mediatek/gemini/SimManagement;->dealWithSwitchComplete()V
    invoke-static {v0}, Lcom/mediatek/gemini/SimManagement;->access$500(Lcom/mediatek/gemini/SimManagement;)V

    goto :goto_0

    .line 192
    :cond_2
    const/16 v0, 0x7d2

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_3

    .line 193
    const-string v0, "SimManagementSettings"

    const-string v1, "3G switch time out remove the progress dialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$4;->this$0:Lcom/mediatek/gemini/SimManagement;

    #calls: Lcom/mediatek/gemini/SimManagement;->removeProgDlg()V
    invoke-static {v0}, Lcom/mediatek/gemini/SimManagement;->access$300(Lcom/mediatek/gemini/SimManagement;)V

    .line 195
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$4;->this$0:Lcom/mediatek/gemini/SimManagement;

    #calls: Lcom/mediatek/gemini/SimManagement;->setStatusBarEnableStatus(Z)V
    invoke-static {v0, v2}, Lcom/mediatek/gemini/SimManagement;->access$600(Lcom/mediatek/gemini/SimManagement;Z)V

    .line 196
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$4;->this$0:Lcom/mediatek/gemini/SimManagement;

    #calls: Lcom/mediatek/gemini/SimManagement;->updateVideoCallDefaultSIM()V
    invoke-static {v0}, Lcom/mediatek/gemini/SimManagement;->access$700(Lcom/mediatek/gemini/SimManagement;)V

    goto :goto_0

    .line 197
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_0

    .line 198
    const-string v0, "SimManagementSettings"

    const-string v1, "dual sim mode changed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$4;->this$0:Lcom/mediatek/gemini/SimManagement;

    #calls: Lcom/mediatek/gemini/SimManagement;->dealWithSwitchComplete()V
    invoke-static {v0}, Lcom/mediatek/gemini/SimManagement;->access$500(Lcom/mediatek/gemini/SimManagement;)V

    goto :goto_0
.end method
