.class Lcom/mediatek/lbs/AgpsNotifyDialog$4;
.super Ljava/lang/Object;
.source "AgpsNotifyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/AgpsNotifyDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/AgpsNotifyDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/AgpsNotifyDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/mediatek/lbs/AgpsNotifyDialog$4;->this$0:Lcom/mediatek/lbs/AgpsNotifyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialoginterface"
    .parameter "i"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsNotifyDialog$4;->this$0:Lcom/mediatek/lbs/AgpsNotifyDialog;

    #getter for: Lcom/mediatek/lbs/AgpsNotifyDialog;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v0}, Lcom/mediatek/lbs/AgpsNotifyDialog;->access$300(Lcom/mediatek/lbs/AgpsNotifyDialog;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsNotifyDialog$4;->this$0:Lcom/mediatek/lbs/AgpsNotifyDialog;

    #getter for: Lcom/mediatek/lbs/AgpsNotifyDialog;->mSessionId:I
    invoke-static {v1}, Lcom/mediatek/lbs/AgpsNotifyDialog;->access$200(Lcom/mediatek/lbs/AgpsNotifyDialog;)I

    move-result v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->niUserResponse(II)V

    .line 304
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsNotifyDialog$4;->this$0:Lcom/mediatek/lbs/AgpsNotifyDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/lbs/AgpsNotifyDialog;->finishActivity(Z)V

    .line 305
    return-void
.end method
