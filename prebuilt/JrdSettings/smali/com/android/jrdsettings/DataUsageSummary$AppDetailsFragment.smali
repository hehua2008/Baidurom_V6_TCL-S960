.class public Lcom/android/jrdsettings/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDetailsFragment"
.end annotation


# static fields
.field private static final EXTRA_APP:Ljava/lang/String; = "app"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2343
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/jrdsettings/DataUsageSummary;Lcom/android/jrdsettings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "parent"
    .parameter "app"
    .parameter "label"

    .prologue
    .line 2347
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2360
    :goto_0
    return-void

    .line 2349
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2350
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "app"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2352
    new-instance v1, Lcom/android/jrdsettings/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/android/jrdsettings/DataUsageSummary$AppDetailsFragment;-><init>()V

    .line 2353
    .local v1, fragment:Lcom/android/jrdsettings/DataUsageSummary$AppDetailsFragment;
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2354
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2355
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 2356
    .local v2, ft:Landroid/app/FragmentTransaction;
    const-string v3, "appDetails"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2357
    const-string v3, "appDetails"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2358
    invoke-virtual {v2, p2}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 2359
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 2364
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2365
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/DataUsageSummary;

    .line 2366
    .local v0, target:Lcom/android/jrdsettings/DataUsageSummary;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/DataUsageSummary$AppItem;

    #setter for: Lcom/android/jrdsettings/DataUsageSummary;->mCurrentApp:Lcom/android/jrdsettings/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->access$3702(Lcom/android/jrdsettings/DataUsageSummary;Lcom/android/jrdsettings/DataUsageSummary$AppItem;)Lcom/android/jrdsettings/DataUsageSummary$AppItem;

    .line 2367
    const-string v1, "DataUsage"

    const-string v2, "AppDetailsFragment start "

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    #calls: Lcom/android/jrdsettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->access$300(Lcom/android/jrdsettings/DataUsageSummary;)V

    .line 2369
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 2373
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2374
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/DataUsageSummary;

    .line 2375
    .local v0, target:Lcom/android/jrdsettings/DataUsageSummary;
    const/4 v1, 0x0

    #setter for: Lcom/android/jrdsettings/DataUsageSummary;->mCurrentApp:Lcom/android/jrdsettings/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->access$3702(Lcom/android/jrdsettings/DataUsageSummary;Lcom/android/jrdsettings/DataUsageSummary$AppItem;)Lcom/android/jrdsettings/DataUsageSummary$AppItem;

    .line 2376
    #calls: Lcom/android/jrdsettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary;->access$300(Lcom/android/jrdsettings/DataUsageSummary;)V

    .line 2377
    return-void
.end method
