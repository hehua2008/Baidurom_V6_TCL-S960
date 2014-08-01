.class Lcom/android/jrdsettings/MasterClearConfirm$1;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/MasterClearConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/jrdsettings/MasterClearConfirm$1;->this$0:Lcom/android/jrdsettings/MasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 68
    invoke-static {}, Lcom/android/jrdsettings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/MasterClearConfirm$1;->this$0:Lcom/android/jrdsettings/MasterClearConfirm;

    #getter for: Lcom/android/jrdsettings/MasterClearConfirm;->mExt:Lcom/mediatek/settings/ext/IFactoryExt;
    invoke-static {v0}, Lcom/android/jrdsettings/MasterClearConfirm;->access$200(Lcom/android/jrdsettings/MasterClearConfirm;)Lcom/mediatek/settings/ext/IFactoryExt;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/MasterClearConfirm$1;->this$0:Lcom/android/jrdsettings/MasterClearConfirm;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/MasterClearConfirm$1;->this$0:Lcom/android/jrdsettings/MasterClearConfirm;

    #getter for: Lcom/android/jrdsettings/MasterClearConfirm;->mEraseInternalData:I
    invoke-static {v2}, Lcom/android/jrdsettings/MasterClearConfirm;->access$000(Lcom/android/jrdsettings/MasterClearConfirm;)I

    move-result v2

    iget-object v3, p0, Lcom/android/jrdsettings/MasterClearConfirm$1;->this$0:Lcom/android/jrdsettings/MasterClearConfirm;

    #getter for: Lcom/android/jrdsettings/MasterClearConfirm;->mEraseSdCard:Z
    invoke-static {v3}, Lcom/android/jrdsettings/MasterClearConfirm;->access$100(Lcom/android/jrdsettings/MasterClearConfirm;)Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/settings/ext/IFactoryExt;->onResetPhone(Landroid/app/Activity;IZ)V

    goto :goto_0
.end method
