.class Lcom/android/jrdsettings/DataUsageSummary$17;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;


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
    .line 2018
    iput-object p1, p0, Lcom/android/jrdsettings/DataUsageSummary$17;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspectRangeChanged()V
    .locals 2

    .prologue
    .line 2021
    const-string v0, "DataUsage"

    const-string v1, "onInspectRangeChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$17;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->updateDetailData()V
    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->access$2700(Lcom/android/jrdsettings/DataUsageSummary;)V

    .line 2023
    return-void
.end method

.method public onLimitChanged()V
    .locals 5

    .prologue
    .line 2033
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary$17;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mChart:Lcom/android/jrdsettings/widget/ChartDataUsageView;
    invoke-static {v2}, Lcom/android/jrdsettings/DataUsageSummary;->access$2600(Lcom/android/jrdsettings/DataUsageSummary;)Lcom/android/jrdsettings/widget/ChartDataUsageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v0

    .line 2034
    .local v0, limitBytes:J
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLimitChanged(),limitBytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x100000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 2036
    const-string v2, "DataUsage"

    const-string v3, "set limitBytes = 0 , when it < 1MB && != 0"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    const-wide/16 v0, 0x0

    .line 2039
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary$17;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v2, v0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->access$2000(Lcom/android/jrdsettings/DataUsageSummary;J)V

    .line 2041
    return-void
.end method

.method public onWarningChanged()V
    .locals 3

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$17;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary$17;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mChart:Lcom/android/jrdsettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/jrdsettings/DataUsageSummary;->access$2600(Lcom/android/jrdsettings/DataUsageSummary;)Lcom/android/jrdsettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v1

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/jrdsettings/DataUsageSummary;->access$3600(Lcom/android/jrdsettings/DataUsageSummary;J)V

    .line 2028
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$17;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/jrdsettings/DataUsageSummary;)V

    .line 2051
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$17;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/jrdsettings/DataUsageSummary;)V

    .line 2046
    return-void
.end method
