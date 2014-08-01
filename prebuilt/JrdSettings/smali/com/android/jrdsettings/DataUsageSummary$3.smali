.class Lcom/android/jrdsettings/DataUsageSummary$3;
.super Landroid/database/ContentObserver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/DataUsageSummary;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/jrdsettings/DataUsageSummary$3;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 386
    const-string v0, "DataUsage"

    const-string v1, "airplane mode changed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$3;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->access$300(Lcom/android/jrdsettings/DataUsageSummary;)V

    .line 388
    return-void
.end method
