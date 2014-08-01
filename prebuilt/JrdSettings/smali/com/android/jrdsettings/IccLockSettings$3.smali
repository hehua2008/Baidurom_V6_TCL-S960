.class Lcom/android/jrdsettings/IccLockSettings$3;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/jrdsettings/IccLockSettings$3;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 189
    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings$3;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    #getter for: Lcom/android/jrdsettings/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/jrdsettings/IccLockSettings;->access$600(Lcom/android/jrdsettings/IccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->getResult()I

    move-result v0

    .line 190
    .local v0, nRet:I
    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings$3;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    #getter for: Lcom/android/jrdsettings/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/jrdsettings/IccLockSettings;->access$600(Lcom/android/jrdsettings/IccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings$3;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    #getter for: Lcom/android/jrdsettings/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/jrdsettings/IccLockSettings;->access$600(Lcom/android/jrdsettings/IccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    .line 192
    const-string v1, "IccLockSettings"

    const-string v2, "mCell Mgr Result is not OK"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings$3;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    #setter for: Lcom/android/jrdsettings/IccLockSettings;->mIsShouldBeFinished:Z
    invoke-static {v1, v3}, Lcom/android/jrdsettings/IccLockSettings;->access$902(Lcom/android/jrdsettings/IccLockSettings;Z)Z

    .line 194
    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings$3;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    invoke-static {v1, v3}, Lcom/mediatek/gemini/GeminiUtils;->backToSimcardUnlock(Landroid/app/Activity;Z)V

    .line 201
    :goto_0
    return-void

    .line 197
    :cond_0
    const-string v1, "IccLockSettings"

    const-string v2, "mServiceComplete + Enable mPinToggle"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings$3;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    #getter for: Lcom/android/jrdsettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/jrdsettings/IccLockSettings;->access$800(Lcom/android/jrdsettings/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 200
    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings$3;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    const/4 v2, 0x0

    #setter for: Lcom/android/jrdsettings/IccLockSettings;->mIsUnlockFollow:Z
    invoke-static {v1, v2}, Lcom/android/jrdsettings/IccLockSettings;->access$1002(Lcom/android/jrdsettings/IccLockSettings;Z)Z

    goto :goto_0
.end method
