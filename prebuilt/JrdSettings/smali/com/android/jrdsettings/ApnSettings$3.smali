.class Lcom/android/jrdsettings/ApnSettings$3;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/jrdsettings/ApnSettings$3;->this$0:Lcom/android/jrdsettings/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings$3;->this$0:Lcom/android/jrdsettings/ApnSettings;

    #getter for: Lcom/android/jrdsettings/ApnSettings;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/jrdsettings/ApnSettings;->access$1200(Lcom/android/jrdsettings/ApnSettings;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->getResult()I

    move-result v0

    .line 243
    .local v0, nRet:I
    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings$3;->this$0:Lcom/android/jrdsettings/ApnSettings;

    #getter for: Lcom/android/jrdsettings/ApnSettings;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/jrdsettings/ApnSettings;->access$1200(Lcom/android/jrdsettings/ApnSettings;)Lcom/mediatek/CellConnService/CellConnMgr;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings$3;->this$0:Lcom/android/jrdsettings/ApnSettings;

    #getter for: Lcom/android/jrdsettings/ApnSettings;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/jrdsettings/ApnSettings;->access$1200(Lcom/android/jrdsettings/ApnSettings;)Lcom/mediatek/CellConnService/CellConnMgr;

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    .line 245
    const-string v1, "ApnSettings"

    const-string v2, "unlock result is not OK"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings$3;->this$0:Lcom/android/jrdsettings/ApnSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/gemini/GeminiUtils;->backToSimcardUnlock(Landroid/app/Activity;Z)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    const-string v1, "ApnSettings"

    const-string v2, "unlock result is OK"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
