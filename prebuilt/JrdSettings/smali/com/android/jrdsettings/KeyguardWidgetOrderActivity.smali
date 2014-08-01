.class public Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;
.super Landroid/app/Activity;
.source "KeyguardWidgetOrderActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/jrdsettings/AppWidgetLoader$ItemConstructor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$AppWidgetAdapter;,
        Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/android/jrdsettings/AppWidgetLoader$ItemConstructor",
        "<",
        "Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;",
        ">;"
    }
.end annotation


# static fields
.field private static final FMRadio_CLASS_NAME:Ljava/lang/String; = "com.jrdcom.FMRadioWidget.FMRadioWidgetProvider"

.field private static final FMRadio_PACKAGE_NAME:Ljava/lang/String; = "com.jrdcom.FMRadioWidget"

.field private static final REQUEST_CREATE_APPWIDGET:I = 0x7f

.field private static final REQUEST_PICK_APPWIDGET:I = 0x7e

.field private static final TAG:Ljava/lang/String; = "KeyguardAppWidgetPickActivity"

.field private static final WEATHER_CLASS_NAME:Ljava/lang/String; = "com.jrdcom.widget.WeatherClockWidget"

.field private static final WEATHER_PACKAGE_NAME:Ljava/lang/String; = "com.jrdcom.weather"

.field private static final WIDGET_ODER_BACK_TO_KEYGARD_ACTION:Ljava/lang/String; = "com.jrdcom.widget.order.back.keyguard"


# instance fields
.field private mAddingToKeyguard:Z

.field private mAppWidgetAdapter:Lcom/android/jrdsettings/KeyguardOrderAdapter;

.field private mAppWidgetClickId:I

.field private mAppWidgetId:I

.field private mAppWidgetLoader:Lcom/android/jrdsettings/AppWidgetLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/jrdsettings/AppWidgetLoader",
            "<",
            "Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mExtraConfigureOptions:Landroid/os/Bundle;

.field private mGridView:Lcom/android/jrdsettings/KeyguardOrderGrid;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;",
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
    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mAddingToKeyguard:Z

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mAppWidgetClickId:I

    .line 522
    return-void
.end method

.method private defaultWigdetExistDB(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "pkName"
    .parameter "clName"

    .prologue
    .line 724
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v2

    .line 725
    .local v2, widgets:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 726
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    aget v4, v2, v1

    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 728
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 731
    const/4 v3, 0x1

    .line 734
    .end local v0           #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    :goto_1
    return v3

    .line 725
    .restart local v0       #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 734
    .end local v0           #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private finishDelayedAndShowLockScreen(I)V
    .locals 10
    .parameter "appWidgetId"

    .prologue
    .line 684
    const-string v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 685
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 686
    .local v3, iWm:Landroid/view/IWindowManager;
    const/4 v4, 0x0

    .line 687
    .local v4, opts:Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 688
    new-instance v4, Landroid/os/Bundle;

    .end local v4           #opts:Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 689
    .restart local v4       #opts:Landroid/os/Bundle;
    const-string v6, "showappwidget"

    invoke-virtual {v4, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 692
    :cond_0
    :try_start_0
    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :goto_0
    const v6, 0x7f0b0081

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 698
    .local v5, root:Landroid/view/ViewGroup;
    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 700
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 701
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 702
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 701
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 704
    :cond_1
    iget-object v6, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mGridView:Lcom/android/jrdsettings/KeyguardOrderGrid;

    new-instance v7, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$3;

    invoke-direct {v7, p0}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$3;-><init>(Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 709
    return-void

    .line 693
    .end local v1           #childCount:I
    .end local v2           #i:I
    .end local v5           #root:Landroid/view/ViewGroup;
    :catch_0
    move-exception v6

    goto :goto_0
.end method


# virtual methods
.method public createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;
    .locals 3
    .parameter "context"
    .parameter "info"
    .parameter "extras"

    .prologue
    .line 507
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 509
    .local v1, label:Ljava/lang/CharSequence;
    new-instance v0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;

    invoke-direct {v0, p1, v1}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 510
    .local v0, item:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;
    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->keyguardPreviewImage:I

    if-eqz v2, :cond_0

    .line 511
    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->keyguardPreviewImage:I

    iput v2, v0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->appWidgetPreviewId:I

    .line 515
    :goto_0
    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    iput v2, v0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->iconId:I

    .line 516
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->packageName:Ljava/lang/String;

    .line 517
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->className:Ljava/lang/String;

    .line 518
    iput-object p3, v0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->extras:Landroid/os/Bundle;

    .line 519
    return-object v0

    .line 513
    :cond_0
    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iput v2, v0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->appWidgetPreviewId:I

    goto :goto_0
.end method

.method public bridge synthetic createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;

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

    .line 643
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 644
    if-eq p1, v8, :cond_0

    if-ne p1, v5, :cond_1

    .line 646
    :cond_0
    if-nez p3, :cond_2

    .line 647
    const/4 v1, 0x0

    .line 652
    .local v1, appWidgetId:I
    :goto_0
    if-ne p1, v8, :cond_4

    if-ne p2, v6, :cond_4

    .line 653
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 655
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/4 v0, 0x0

    .line 656
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 658
    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v4, :cond_3

    .line 660
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 662
    const/high16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 663
    const-string v4, "appWidgetId"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 665
    invoke-virtual {p0, v3, v5}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 681
    .end local v0           #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v1           #appWidgetId:I
    .end local v2           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 649
    :cond_2
    const-string v4, "appWidgetId"

    invoke-virtual {p3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #appWidgetId:I
    goto :goto_0

    .line 668
    .restart local v0       #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v2       #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_3
    invoke-virtual {p0, v5, v6, p3}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 670
    .end local v0           #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v2           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_4
    if-ne p1, v5, :cond_5

    if-ne p2, v6, :cond_5

    .line 671
    iget-object v4, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v1, v7}, Lcom/android/internal/widget/LockPatternUtils;->addAppWidget(II)Z

    .line 672
    invoke-direct {p0, v1}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->finishDelayedAndShowLockScreen(I)V

    goto :goto_1

    .line 674
    :cond_5
    iget-boolean v4, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mAddingToKeyguard:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mAppWidgetId:I

    if-eqz v4, :cond_6

    .line 676
    iget v4, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mAppWidgetId:I

    invoke-static {v4}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetIdForSystem(I)V

    .line 678
    :cond_6
    invoke-direct {p0, v7}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->finishDelayedAndShowLockScreen(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 108
    .local v8, lp:Landroid/view/WindowManager$LayoutParams;
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v13, 0x8

    or-int/2addr v12, v13

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 111
    const v12, 0x7f04005f

    invoke-virtual {p0, v12}, Landroid/app/Activity;->setContentView(I)V

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->setResultData(ILandroid/content/Intent;)V

    .line 117
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mItems:Ljava/util/List;

    .line 118
    new-instance v12, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v12, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 119
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v12

    iput-object v12, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 120
    iget-object v12, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v10

    .line 121
    .local v10, widgets:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v12, v10

    if-ge v3, v12, :cond_4

    .line 122
    iget-object v12, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    aget v13, v10, v3

    invoke-virtual {v12, v13}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 124
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v0, :cond_0

    .line 125
    aget v12, v10, v3

    const/4 v13, -0x2

    if-ne v12, v13, :cond_0

    .line 126
    new-instance v1, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;

    const-string v12, ""

    invoke-direct {v1, p0, v12}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 127
    .local v1, defaultitem:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;
    aget v12, v10, v3

    iput v12, v1, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->itemWidgetId:I

    .line 128
    const-string v12, ""

    iput-object v12, v1, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->packageName:Ljava/lang/String;

    .line 129
    const-string v12, ""

    iput-object v12, v1, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->className:Ljava/lang/String;

    .line 130
    const-string v12, "com.jrdcom.weather"

    const-string v13, "com.jrdcom.widget.WeatherClockWidget"

    invoke-direct {p0, v12, v13}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->defaultWigdetExistDB(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 132
    iget-object v12, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mItems:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v1           #defaultitem:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;
    :cond_0
    if-eqz v0, :cond_1

    .line 138
    new-instance v7, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;

    iget-object v12, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-direct {v7, p0, v12}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 139
    .local v7, item:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;
    aget v12, v10, v3

    iput v12, v7, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->itemWidgetId:I

    .line 140
    iget v12, v0, Landroid/appwidget/AppWidgetProviderInfo;->keyguardPreviewImage:I

    if-eqz v12, :cond_2

    .line 141
    iget v12, v0, Landroid/appwidget/AppWidgetProviderInfo;->keyguardPreviewImage:I

    iput v12, v7, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->appWidgetPreviewId:I

    .line 145
    :goto_1
    iget v12, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    iput v12, v7, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->iconId:I

    .line 146
    iget-object v12, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->packageName:Ljava/lang/String;

    .line 147
    iget-object v12, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->className:Ljava/lang/String;

    .line 149
    iget-object v12, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.jrdcom.FMRadioWidget"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.jrdcom.FMRadioWidget.FMRadioWidgetProvider"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v6, 0x1

    .line 154
    .local v6, isFMRadio:Z
    :goto_2
    if-nez v6, :cond_1

    .line 155
    iget-object v12, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mItems:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v6           #isFMRadio:Z
    .end local v7           #item:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 143
    .restart local v7       #item:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;
    :cond_2
    iget v12, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iput v12, v7, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->appWidgetPreviewId:I

    goto :goto_1

    .line 149
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 161
    .end local v0           #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v7           #item:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 162
    .local v4, intent:Landroid/content/Intent;
    const-string v12, "appWidgetId"

    invoke-virtual {v4, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 163
    const-string v12, "appWidgetId"

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mAppWidgetId:I

    .line 168
    :goto_3
    const-string v12, "appWidgetOptions"

    invoke-virtual {v4, v12}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    iput-object v12, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mExtraConfigureOptions:Landroid/os/Bundle;

    .line 170
    const-string v12, "tablet"

    const-string v13, "ro.build.characteristics"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 171
    const/4 v11, 0x7

    .line 172
    .local v11, winOrientation:I
    invoke-virtual {p0, v11}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 175
    .end local v11           #winOrientation:I
    :cond_5
    const v12, 0x7f0b010e

    invoke-virtual {p0, v12}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/jrdsettings/KeyguardOrderGrid;

    iput-object v12, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mGridView:Lcom/android/jrdsettings/KeyguardOrderGrid;

    .line 176
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 177
    .local v2, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 178
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080021

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 181
    .local v9, maxGridWidth:I
    iget v12, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v9, v12, :cond_6

    .line 182
    iget-object v12, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mGridView:Lcom/android/jrdsettings/KeyguardOrderGrid;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    iput v9, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 184
    :cond_6
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v12

    iput-object v12, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 185
    new-instance v12, Lcom/android/jrdsettings/AppWidgetLoader;

    iget-object v13, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-direct {v12, p0, v13, p0}, Lcom/android/jrdsettings/AppWidgetLoader;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/android/jrdsettings/AppWidgetLoader$ItemConstructor;)V

    iput-object v12, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mAppWidgetLoader:Lcom/android/jrdsettings/AppWidgetLoader;

    .line 186
    new-instance v12, Lcom/android/jrdsettings/KeyguardOrderAdapter;

    iget-object v13, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mItems:Ljava/util/List;

    invoke-direct {v12, p0, v13}, Lcom/android/jrdsettings/KeyguardOrderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v12, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mAppWidgetAdapter:Lcom/android/jrdsettings/KeyguardOrderAdapter;

    .line 187
    iget-object v12, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mGridView:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iget-object v13, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mAppWidgetAdapter:Lcom/android/jrdsettings/KeyguardOrderAdapter;

    invoke-virtual {v12, v13}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    iget-object v12, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mGridView:Lcom/android/jrdsettings/KeyguardOrderGrid;

    invoke-virtual {v12, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 191
    new-instance v12, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$1;

    invoke-direct {v12, p0}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$1;-><init>(Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;)V

    iput-object v12, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 201
    .local v5, intentFilter:Landroid/content/IntentFilter;
    const-string v12, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v12, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v12, v5}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    return-void

    .line 166
    .end local v2           #dm:Landroid/util/DisplayMetrics;
    .end local v5           #intentFilter:Landroid/content/IntentFilter;
    .end local v9           #maxGridWidth:I
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mAppWidgetAdapter:Lcom/android/jrdsettings/KeyguardOrderAdapter;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mAppWidgetAdapter:Lcom/android/jrdsettings/KeyguardOrderAdapter;

    invoke-virtual {v0}, Lcom/android/jrdsettings/KeyguardOrderAdapter;->cancelAllWidgetPreviewLoaders()V

    .line 636
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 637
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 639
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 584
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mItems:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;

    .line 585
    .local v1, item:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;
    iget v2, v1, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->itemWidgetId:I

    iput v2, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mAppWidgetClickId:I

    .line 586
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.jrdcom.widget.order.back.keyguard"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "click_widget_id"

    iget v3, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mAppWidgetClickId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 588
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 589
    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mGridView:Lcom/android/jrdsettings/KeyguardOrderGrid;

    new-instance v3, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$2;

    invoke-direct {v3, p0}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$2;-><init>(Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 628
    return-void
.end method

.method setResultData(ILandroid/content/Intent;)V
    .locals 3
    .parameter "code"
    .parameter "intent"

    .prologue
    .line 212
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 213
    .local v0, result:Landroid/content/Intent;
    :goto_0
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    iput-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->mResultData:Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 216
    return-void

    .line 212
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

    .line 713
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 720
    :goto_0
    return-void

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 716
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 717
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 718
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
