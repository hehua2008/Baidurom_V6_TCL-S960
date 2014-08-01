.class Lcom/android/jrdsettings/DataUsageSummary$11;
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
    .line 1776
    iput-object p1, p0, Lcom/android/jrdsettings/DataUsageSummary$11;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 1779
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary$11;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/jrdsettings/DataUsageSummary;->access$2100(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1781
    .local v0, restrictBackground:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1785
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary$11;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/jrdsettings/DataUsageSummary$ConfirmAppRestrictFragment;->show(Lcom/android/jrdsettings/DataUsageSummary;)V

    .line 1789
    :goto_1
    return-void

    .end local v0           #restrictBackground:Z
    :cond_0
    move v0, v1

    .line 1779
    goto :goto_0

    .line 1787
    .restart local v0       #restrictBackground:Z
    :cond_1
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary$11;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->setAppRestrictBackground(Z)V
    invoke-static {v2, v1}, Lcom/android/jrdsettings/DataUsageSummary;->access$2200(Lcom/android/jrdsettings/DataUsageSummary;Z)V

    goto :goto_1
.end method
