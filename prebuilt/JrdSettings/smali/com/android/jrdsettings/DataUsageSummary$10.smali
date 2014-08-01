.class Lcom/android/jrdsettings/DataUsageSummary$10;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1762
    iput-object p1, p0, Lcom/android/jrdsettings/DataUsageSummary$10;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1765
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary$10;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/jrdsettings/DataUsageSummary;->access$1900(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1766
    .local v0, disableAtLimit:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1769
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary$10;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/jrdsettings/DataUsageSummary$ConfirmLimitFragment;->show(Lcom/android/jrdsettings/DataUsageSummary;)V

    .line 1773
    :goto_1
    return-void

    .line 1765
    .end local v0           #disableAtLimit:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1771
    .restart local v0       #disableAtLimit:Z
    :cond_1
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary$10;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    const-wide/16 v2, -0x1

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v1, v2, v3}, Lcom/android/jrdsettings/DataUsageSummary;->access$2000(Lcom/android/jrdsettings/DataUsageSummary;J)V

    goto :goto_1
.end method
