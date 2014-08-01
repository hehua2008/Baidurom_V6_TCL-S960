.class Lcom/android/jrdsettings/DataUsageSummary$1;
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
    .line 355
    iput-object p1, p0, Lcom/android/jrdsettings/DataUsageSummary$1;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 358
    const-string v0, "DataUsage"

    const-string v1, "Gprs connection SIM changed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$1;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    const/4 v1, 0x0

    #setter for: Lcom/android/jrdsettings/DataUsageSummary;->mIsUserEnabled:Z
    invoke-static {v0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->access$002(Lcom/android/jrdsettings/DataUsageSummary;Z)Z

    .line 360
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$1;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary$1;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/jrdsettings/DataUsageSummary;->access$200(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/jrdsettings/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->access$102(Lcom/android/jrdsettings/DataUsageSummary;Ljava/lang/String;)Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$1;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->access$300(Lcom/android/jrdsettings/DataUsageSummary;)V

    .line 362
    return-void
.end method
