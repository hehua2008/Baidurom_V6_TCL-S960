.class public Lcom/mediatek/settings/ext/DefaultDataUsageSummaryExt;
.super Ljava/lang/Object;
.source "DefaultDataUsageSummaryExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IDataUsageSummaryExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public customizeBackgroundString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "defStr"
    .parameter "tag"

    .prologue
    .line 16
    return-object p1
.end method

.method public customizeLockScreenViewVisibility(Ljava/lang/String;)Z
    .locals 1
    .parameter "currentTab"

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public customizeMobileDataSummary(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .parameter "container"
    .parameter "titleView"
    .parameter "slotId"

    .prologue
    .line 33
    return-void
.end method

.method public customizeTabInfo(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/TabHost$TabSpec;Landroid/widget/TabWidget;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 0
    .parameter "activity"
    .parameter "tag"
    .parameter "tab"
    .parameter "tabWidget"
    .parameter "title"

    .prologue
    .line 26
    return-object p3
.end method

.method public customizeTextViewBackgroundResource(ILandroid/widget/TextView;)V
    .locals 0
    .parameter "simColor"
    .parameter "title"

    .prologue
    .line 21
    return-void
.end method

.method public customizeUpdateMobileData(I)Z
    .locals 1
    .parameter "slotId"

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
