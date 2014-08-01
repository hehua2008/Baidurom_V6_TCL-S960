.class public Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;
.super Landroid/app/Activity;
.source "KeyguardAppWidgetPickActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/jrdsettings/AppWidgetLoader$ItemConstructor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;,
        Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/android/jrdsettings/AppWidgetLoader$ItemConstructor",
        "<",
        "Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$Item;",
        ">;"
    }
.end annotation


# static fields
.field private static final REQUEST_CREATE_APPWIDGET:I = 0x7f

.field private static final REQUEST_PICK_APPWIDGET:I = 0x7e

.field private static final TAG:Ljava/lang/String; = "KeyguardAppWidgetPickActivity"


# instance fields
.field private mAddingToKeyguard:Z

.field private mAppWidgetAdapter:Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

.field private mAppWidgetId:I

.field private mAppWidgetLoader:Lcom/android/jrdsettings/AppWidgetLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/jrdsettings/AppWidgetLoader",
            "<",
            "Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mExtraConfigureOptions:Landroid/os/Bundle;

.field private mGridView:Landroid/widget/GridView;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResultData:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mAddingToKeyguard:Z

    .line 449
    return-void
.end method

.method private finishDelayedAndShowLockScreen(I)V
    .locals 10
    .parameter "appWidgetId"

    .prologue
    .line 597
    const-string v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 598
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 599
    .local v3, iWm:Landroid/view/IWindowManager;
    const/4 v4, 0x0

    .line 600
    .local v4, opts:Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 601
    new-instance v4, Landroid/os/Bundle;

    .end local v4           #opts:Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 602
    .restart local v4       #opts:Landroid/os/Bundle;
    const-string v6, "showappwidget"

    invoke-virtual {v4, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 605
    :cond_0
    :try_start_0
    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :goto_0
    const v6, 0x7f0b0081

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 611
    .local v5, root:Landroid/view/ViewGroup;
    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 613
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 614
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 615
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 614
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 617
    :cond_1
    iget-object v6, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    new-instance v7, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$1;

    invoke-direct {v7, p0}, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$1;-><init>(Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 622
    return-void

    .line 606
    .end local v1           #childCount:I
    .end local v2           #i:I
    .end local v5           #root:Landroid/view/ViewGroup;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private shouldEnableScreenRotation()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 638
    const-string v1, "lockscreen.rot_override"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 640
    .local v0, bRet:Z
    :cond_1
    const-string v1, "KeyguardAppWidgetPickActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldEnableScreenRotation ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    return v0
.end method


# virtual methods
.method public createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$Item;
    .locals 3
    .parameter "context"
    .parameter "info"
    .parameter "extras"

    .prologue
    .line 438
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 440
    .local v1, label:Ljava/lang/CharSequence;
    new-instance v0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$Item;

    invoke-direct {v0, p1, v1}, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$Item;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 441
    .local v0, item:Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$Item;
    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iput v2, v0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$Item;->appWidgetPreviewId:I

    .line 442
    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    iput v2, v0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$Item;->iconId:I

    .line 443
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$Item;->packageName:Ljava/lang/String;

    .line 444
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$Item;->className:Ljava/lang/String;

    .line 445
    iput-object p3, v0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$Item;->extras:Landroid/os/Bundle;

    .line 446
    return-object v0
.end method

.method public bridge synthetic createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$Item;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v8, 0x7e

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/16 v5, 0x7f

    .line 556
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 557
    if-eq p1, v8, :cond_0

    if-ne p1, v5, :cond_1

    .line 559
    :cond_0
    if-nez p3, :cond_2

    .line 560
    const/4 v1, 0x0

    .line 565
    .local v1, appWidgetId:I
    :goto_0
    if-ne p1, v8, :cond_4

    if-ne p2, v6, :cond_4

    .line 566
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 568
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/4 v0, 0x0

    .line 569
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 571
    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v4, :cond_3

    .line 573
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 575
    const/high16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 576
    const-string v4, "appWidgetId"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    invoke-virtual {p0, v3, v5}, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 594
    .end local v0           #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v1           #appWidgetId:I
    .end local v2           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 562
    :cond_2
    const-string v4, "appWidgetId"

    invoke-virtual {p3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #appWidgetId:I
    goto :goto_0

    .line 581
    .restart local v0       #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v2       #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_3
    invoke-virtual {p0, v5, v6, p3}, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 583
    .end local v0           #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v2           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_4
    if-ne p1, v5, :cond_5

    if-ne p2, v6, :cond_5

    .line 584
    iget-object v4, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v1, v7}, Lcom/android/internal/widget/LockPatternUtils;->addAppWidget(II)Z

    .line 585
    invoke-direct {p0, v1}, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->finishDelayedAndShowLockScreen(I)V

    goto :goto_1

    .line 587
    :cond_5
    iget-boolean v4, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mAddingToKeyguard:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    if-eqz v4, :cond_6

    .line 589
    iget v4, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    invoke-static {v4}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetIdForSystem(I)V

    .line 591
    :cond_6
    invoke-direct {p0, v7}, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->finishDelayedAndShowLockScreen(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 93
    const v4, 0x7f040060

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const/4 v4, 0x0

    invoke-virtual {p0, v5, v4}, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 101
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "appWidgetId"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    const-string v4, "appWidgetId"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    .line 107
    :goto_0
    const-string v4, "appWidgetOptions"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mExtraConfigureOptions:Landroid/os/Bundle;

    .line 109
    invoke-direct {p0}, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->shouldEnableScreenRotation()Z

    move-result v4

    if-nez v4, :cond_0

    .line 110
    const/4 v3, 0x7

    .line 111
    .local v3, winOrientation:I
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 114
    .end local v3           #winOrientation:I
    :cond_0
    const v4, 0x7f0b010e

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    iput-object v4, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    .line 115
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 116
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 117
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 120
    .local v2, maxGridWidth:I
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v2, v4, :cond_1

    .line 121
    iget-object v4, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 123
    :cond_1
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 124
    new-instance v4, Lcom/android/jrdsettings/AppWidgetLoader;

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-direct {v4, p0, v5, p0}, Lcom/android/jrdsettings/AppWidgetLoader;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/android/jrdsettings/AppWidgetLoader$ItemConstructor;)V

    iput-object v4, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mAppWidgetLoader:Lcom/android/jrdsettings/AppWidgetLoader;

    .line 125
    iget-object v4, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mAppWidgetLoader:Lcom/android/jrdsettings/AppWidgetLoader;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/jrdsettings/AppWidgetLoader;->getItems(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mItems:Ljava/util/List;

    .line 126
    new-instance v4, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mItems:Ljava/util/List;

    invoke-direct {v4, p0, v5}, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mAppWidgetAdapter:Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    .line 127
    iget-object v4, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mAppWidgetAdapter:Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object v4, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 131
    return-void

    .line 105
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #maxGridWidth:I
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mAppWidgetAdapter:Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mAppWidgetAdapter:Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    invoke-virtual {v0}, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->cancelAllWidgetPreviewLoaders()V

    .line 551
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 552
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 511
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mItems:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$Item;

    .line 512
    .local v3, item:Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$Item;
    invoke-virtual {v3}, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$Item;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 515
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, v3, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$Item;->extras:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 518
    const/4 v4, -0x1

    .line 519
    .local v4, result:I
    invoke-virtual {p0, v4, v2}, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    .line 540
    :goto_0
    iget-boolean v5, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mAddingToKeyguard:Z

    if-eqz v5, :cond_2

    .line 541
    const/16 v5, 0x7e

    iget-object v6, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mResultData:Landroid/content/Intent;

    invoke-virtual {p0, v5, v4, v6}, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 545
    :goto_1
    return-void

    .line 522
    .end local v4           #result:I
    :cond_0
    :try_start_0
    iget-boolean v5, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mAddingToKeyguard:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    if-nez v5, :cond_1

    .line 524
    const v0, 0x4b455947

    .line 525
    .local v0, KEYGUARD_HOST_ID:I
    const v5, 0x4b455947

    invoke-static {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetIdForSystem(I)I

    move-result v5

    iput v5, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    .line 527
    .end local v0           #KEYGUARD_HOST_ID:I
    :cond_1
    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v6, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mExtraConfigureOptions:Landroid/os/Bundle;

    invoke-virtual {v5, v6, v7, v8}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    const/4 v4, -0x1

    .line 538
    .restart local v4       #result:I
    :goto_2
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    goto :goto_0

    .line 530
    .end local v4           #result:I
    :catch_0
    move-exception v1

    .line 536
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x0

    .restart local v4       #result:I
    goto :goto_2

    .line 543
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method setResultData(ILandroid/content/Intent;)V
    .locals 3
    .parameter "code"
    .parameter "intent"

    .prologue
    .line 139
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 140
    .local v0, result:Landroid/content/Intent;
    :goto_0
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    iput-object v0, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->mResultData:Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 143
    return-void

    .line 139
    .end local v0           #result:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method

.method startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    const v2, 0x7f090602

    const/4 v1, 0x0

    .line 626
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 633
    :goto_0
    return-void

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 629
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 630
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 631
    const-string v1, "KeyguardAppWidgetPickActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
