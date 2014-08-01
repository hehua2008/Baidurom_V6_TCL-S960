.class public Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/jrdsettings/DataUsageSummary$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChangeItem:Lcom/android/jrdsettings/DataUsageSummary$CycleChangeItem;

.field private mChangePossible:Z

.field private mChangeVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 2123
    const v0, 0x1090008

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 2117
    iput-boolean v1, p0, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 2118
    iput-boolean v1, p0, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 2124
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2125
    new-instance v0, Lcom/android/jrdsettings/DataUsageSummary$CycleChangeItem;

    invoke-direct {v0, p1}, Lcom/android/jrdsettings/DataUsageSummary$CycleChangeItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/jrdsettings/DataUsageSummary$CycleChangeItem;

    .line 2126
    return-void
.end method

.method private updateChange()V
    .locals 1

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/jrdsettings/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 2140
    iget-boolean v0, p0, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    if-eqz v0, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/jrdsettings/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 2143
    :cond_0
    return-void
.end method


# virtual methods
.method public findNearestPosition(Lcom/android/jrdsettings/DataUsageSummary$CycleItem;)I
    .locals 4
    .parameter "target"

    .prologue
    .line 2150
    if-eqz p1, :cond_2

    .line 2151
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 2152
    .local v0, count:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 2153
    invoke-virtual {p0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/jrdsettings/DataUsageSummary$CycleItem;

    .line 2154
    .local v2, item:Lcom/android/jrdsettings/DataUsageSummary$CycleItem;
    instance-of v3, v2, Lcom/android/jrdsettings/DataUsageSummary$CycleChangeItem;

    if-eqz v3, :cond_1

    .line 2152
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2156
    :cond_1
    invoke-virtual {v2, p1}, Lcom/android/jrdsettings/DataUsageSummary$CycleItem;->compareTo(Lcom/android/jrdsettings/DataUsageSummary$CycleItem;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 2161
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #item:Lcom/android/jrdsettings/DataUsageSummary$CycleItem;
    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setChangePossible(Z)V
    .locals 0
    .parameter "possible"

    .prologue
    .line 2129
    iput-boolean p1, p0, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 2130
    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 2131
    return-void
.end method

.method public setChangeVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 2134
    iput-boolean p1, p0, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 2135
    invoke-direct {p0}, Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 2136
    return-void
.end method
