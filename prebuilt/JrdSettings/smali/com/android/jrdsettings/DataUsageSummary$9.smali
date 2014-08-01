.class Lcom/android/jrdsettings/DataUsageSummary$9;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
.method constructor <init>(Lcom/android/jrdsettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1712
    iput-object p1, p0, Lcom/android/jrdsettings/DataUsageSummary$9;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1715
    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary$9;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mBinding:Z
    invoke-static {v3}, Lcom/android/jrdsettings/DataUsageSummary;->access$1500(Lcom/android/jrdsettings/DataUsageSummary;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1725
    :goto_0
    return-void

    .line 1717
    :cond_0
    move v1, p2

    .line 1718
    .local v1, dataEnabled:Z
    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary$9;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/jrdsettings/DataUsageSummary;->access$1600(Lcom/android/jrdsettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 1719
    .local v0, currentTab:Ljava/lang/String;
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data enable check change "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary$9;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    iget-object v4, p0, Lcom/android/jrdsettings/DataUsageSummary$9;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/jrdsettings/DataUsageSummary;->access$1600(Lcom/android/jrdsettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->getCurrentSlot(Ljava/lang/String;)I
    invoke-static {v3, v4}, Lcom/android/jrdsettings/DataUsageSummary;->access$1700(Lcom/android/jrdsettings/DataUsageSummary;Ljava/lang/String;)I

    move-result v2

    .line 1723
    .local v2, simSlot:I
    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary$9;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    const/4 v4, 0x0

    #setter for: Lcom/android/jrdsettings/DataUsageSummary;->mIsUserEnabled:Z
    invoke-static {v3, v4}, Lcom/android/jrdsettings/DataUsageSummary;->access$002(Lcom/android/jrdsettings/DataUsageSummary;Z)Z

    .line 1724
    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary$9;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->onDataEnableChangeGemini(ZI)V
    invoke-static {v3, v1, v2}, Lcom/android/jrdsettings/DataUsageSummary;->access$1800(Lcom/android/jrdsettings/DataUsageSummary;ZI)V

    goto :goto_0
.end method
