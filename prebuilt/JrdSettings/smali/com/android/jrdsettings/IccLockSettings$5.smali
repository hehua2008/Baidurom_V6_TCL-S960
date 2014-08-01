.class Lcom/android/jrdsettings/IccLockSettings$5;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/IccLockSettings;->onResume()V
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
    .line 383
    iput-object p1, p0, Lcom/android/jrdsettings/IccLockSettings$5;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/jrdsettings/IccLockSettings$5;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    #getter for: Lcom/android/jrdsettings/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v0}, Lcom/android/jrdsettings/IccLockSettings;->access$600(Lcom/android/jrdsettings/IccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings$5;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    #getter for: Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I
    invoke-static {v1}, Lcom/android/jrdsettings/IccLockSettings;->access$500(Lcom/android/jrdsettings/IccLockSettings;)I

    move-result v1

    const/16 v2, 0x12e

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    .line 389
    return-void
.end method
