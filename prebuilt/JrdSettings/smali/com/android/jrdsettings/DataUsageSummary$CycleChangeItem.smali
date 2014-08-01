.class public Lcom/android/jrdsettings/DataUsageSummary$CycleChangeItem;
.super Lcom/android/jrdsettings/DataUsageSummary$CycleItem;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleChangeItem"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 2112
    const v0, 0x7f090876

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/DataUsageSummary$CycleItem;-><init>(Ljava/lang/CharSequence;)V

    .line 2113
    return-void
.end method
