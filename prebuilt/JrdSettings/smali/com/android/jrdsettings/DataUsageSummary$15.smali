.class Lcom/android/jrdsettings/DataUsageSummary$15;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/jrdsettings/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1917
    iput-object p1, p0, Lcom/android/jrdsettings/DataUsageSummary$15;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/jrdsettings/net/ChartData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1920
    new-instance v0, Lcom/android/jrdsettings/net/ChartDataLoader;

    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary$15;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary$15;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/jrdsettings/DataUsageSummary;->access$2800(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/jrdsettings/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/jrdsettings/net/ChartData;)V
    .locals 2
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/jrdsettings/net/ChartData;",
            ">;",
            "Lcom/android/jrdsettings/net/ChartData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1925
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/jrdsettings/net/ChartData;>;"
    const-string v0, "DataUsage"

    const-string v1, "ChartDataLoader finished "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$15;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #setter for: Lcom/android/jrdsettings/DataUsageSummary;->mChartData:Lcom/android/jrdsettings/net/ChartData;
    invoke-static {v0, p2}, Lcom/android/jrdsettings/DataUsageSummary;->access$2902(Lcom/android/jrdsettings/DataUsageSummary;Lcom/android/jrdsettings/net/ChartData;)Lcom/android/jrdsettings/net/ChartData;

    .line 1927
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$15;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mChart:Lcom/android/jrdsettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->access$2600(Lcom/android/jrdsettings/DataUsageSummary;)Lcom/android/jrdsettings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary$15;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mChartData:Lcom/android/jrdsettings/net/ChartData;
    invoke-static {v1}, Lcom/android/jrdsettings/DataUsageSummary;->access$2900(Lcom/android/jrdsettings/DataUsageSummary;)Lcom/android/jrdsettings/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/jrdsettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1928
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$15;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mChart:Lcom/android/jrdsettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->access$2600(Lcom/android/jrdsettings/DataUsageSummary;)Lcom/android/jrdsettings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary$15;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mChartData:Lcom/android/jrdsettings/net/ChartData;
    invoke-static {v1}, Lcom/android/jrdsettings/DataUsageSummary;->access$2900(Lcom/android/jrdsettings/DataUsageSummary;)Lcom/android/jrdsettings/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/jrdsettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1931
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$15;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;
    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->access$800(Lcom/android/jrdsettings/DataUsageSummary;)Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->read()V

    .line 1935
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$15;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    const/4 v1, 0x1

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->access$500(Lcom/android/jrdsettings/DataUsageSummary;Z)V

    .line 1936
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$15;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->updateAppDetail()V
    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->access$3000(Lcom/android/jrdsettings/DataUsageSummary;)V

    .line 1941
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$15;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mChartData:Lcom/android/jrdsettings/net/ChartData;
    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->access$2900(Lcom/android/jrdsettings/DataUsageSummary;)Lcom/android/jrdsettings/net/ChartData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/jrdsettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$15;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->access$3100(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    .line 1942
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$15;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->access$3100(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1944
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1917
    check-cast p2, Lcom/android/jrdsettings/net/ChartData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/jrdsettings/DataUsageSummary$15;->onLoadFinished(Landroid/content/Loader;Lcom/android/jrdsettings/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/jrdsettings/net/ChartData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/jrdsettings/net/ChartData;>;"
    const/4 v1, 0x0

    .line 1948
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$15;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #setter for: Lcom/android/jrdsettings/DataUsageSummary;->mChartData:Lcom/android/jrdsettings/net/ChartData;
    invoke-static {v0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->access$2902(Lcom/android/jrdsettings/DataUsageSummary;Lcom/android/jrdsettings/net/ChartData;)Lcom/android/jrdsettings/net/ChartData;

    .line 1949
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$15;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mChart:Lcom/android/jrdsettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->access$2600(Lcom/android/jrdsettings/DataUsageSummary;)Lcom/android/jrdsettings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1950
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$15;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mChart:Lcom/android/jrdsettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->access$2600(Lcom/android/jrdsettings/DataUsageSummary;)Lcom/android/jrdsettings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1951
    return-void
.end method
