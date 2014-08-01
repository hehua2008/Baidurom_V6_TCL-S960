.class Lcom/android/jrdsettings/widget/ChartDataUsageView$3;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/jrdsettings/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/widget/ChartDataUsageView;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/jrdsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/jrdsettings/widget/ChartSweepView;Z)V
    .locals 2
    .parameter "sweep"
    .parameter "sweepDone"

    .prologue
    .line 338
    if-eqz p2, :cond_2

    .line 339
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    #calls: Lcom/android/jrdsettings/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/jrdsettings/widget/ChartSweepView;)V
    invoke-static {v0, p1}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->access$500(Lcom/android/jrdsettings/widget/ChartDataUsageView;Lcom/android/jrdsettings/widget/ChartSweepView;)V

    .line 340
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    #calls: Lcom/android/jrdsettings/widget/ChartDataUsageView;->updateEstimateVisible()V
    invoke-static {v0}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->access$100(Lcom/android/jrdsettings/widget/ChartDataUsageView;)V

    .line 342
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/jrdsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/jrdsettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->access$600(Lcom/android/jrdsettings/widget/ChartDataUsageView;)Lcom/android/jrdsettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/jrdsettings/widget/ChartDataUsageView;->mListener:Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->access$400(Lcom/android/jrdsettings/widget/ChartDataUsageView;)Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/jrdsettings/widget/ChartDataUsageView;->mListener:Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->access$400(Lcom/android/jrdsettings/widget/ChartDataUsageView;)Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;->onWarningChanged()V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/jrdsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/jrdsettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->access$700(Lcom/android/jrdsettings/widget/ChartDataUsageView;)Lcom/android/jrdsettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/jrdsettings/widget/ChartDataUsageView;->mListener:Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->access$400(Lcom/android/jrdsettings/widget/ChartDataUsageView;)Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/jrdsettings/widget/ChartDataUsageView;->mListener:Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->access$400(Lcom/android/jrdsettings/widget/ChartDataUsageView;)Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;->onLimitChanged()V

    goto :goto_0

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    #calls: Lcom/android/jrdsettings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/jrdsettings/widget/ChartSweepView;Z)V
    invoke-static {v0, p1, v1}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->access$200(Lcom/android/jrdsettings/widget/ChartDataUsageView;Lcom/android/jrdsettings/widget/ChartSweepView;Z)V

    goto :goto_0
.end method

.method public requestEdit(Lcom/android/jrdsettings/widget/ChartSweepView;)V
    .locals 1
    .parameter "sweep"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/jrdsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/jrdsettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->access$600(Lcom/android/jrdsettings/widget/ChartDataUsageView;)Lcom/android/jrdsettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/jrdsettings/widget/ChartDataUsageView;->mListener:Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->access$400(Lcom/android/jrdsettings/widget/ChartDataUsageView;)Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/jrdsettings/widget/ChartDataUsageView;->mListener:Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->access$400(Lcom/android/jrdsettings/widget/ChartDataUsageView;)Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;->requestWarningEdit()V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/jrdsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/jrdsettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->access$700(Lcom/android/jrdsettings/widget/ChartDataUsageView;)Lcom/android/jrdsettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/jrdsettings/widget/ChartDataUsageView;->mListener:Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->access$400(Lcom/android/jrdsettings/widget/ChartDataUsageView;)Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/jrdsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/jrdsettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/jrdsettings/widget/ChartDataUsageView;->mListener:Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/jrdsettings/widget/ChartDataUsageView;->access$400(Lcom/android/jrdsettings/widget/ChartDataUsageView;)Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/jrdsettings/widget/ChartDataUsageView$DataUsageChartListener;->requestLimitEdit()V

    goto :goto_0
.end method
