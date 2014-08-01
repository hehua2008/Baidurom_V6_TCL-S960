.class public Lcom/android/jrdsettings/KeyguardWidgetEditActivity;
.super Landroid/app/Activity;
.source "KeyguardWidgetEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;,
        Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;,
        Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;,
        Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;
    }
.end annotation


# static fields
.field private static final FMRadio_CLASS_NAME:Ljava/lang/String; = "com.jrdcom.FMRadioWidget.FMRadioWidgetProvider"

.field private static final FMRadio_PACKAGE_NAME:Ljava/lang/String; = "com.jrdcom.FMRadioWidget"

.field private static final REQUEST_CREATE_APPWIDGET:I = 0x7f

.field private static final REQUEST_PICK_APPWIDGET:I = 0x7e

.field private static final TAG:Ljava/lang/String; = "KeyguardWidgetEditActivity"

.field public static mScrollView:Landroid/widget/HorizontalScrollView;

.field public static mUpGDAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

.field public static scale:F

.field public static upGridView:Lcom/android/jrdsettings/CoverGridView;


# instance fields
.field private bottomContext:Landroid/content/Context;

.field private currentIndex:I

.field private deleteAppWidgetId:I

.field private dotsnew:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private emptyText:Landroid/widget/TextView;

.field private itemViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mActivityManager:Landroid/app/ActivityManager;

.field private mAddingToKeyguard:Z

.field private mAppWidgetId:I

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mBottomPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mExtraConfigureOptions:Landroid/os/Bundle;

.field mIndicatorsLayout:Landroid/widget/LinearLayout;

.field mJrdAppWidgetLoader:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResultData:Landroid/content/Intent;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private map:Ljava/util/Map;

.field public movedFlag:Z

.field private movingFlag:Z

.field private myInflater:Landroid/view/LayoutInflater;

.field private shadow:I

.field private shadowAfter:I

.field private testComponentName:Landroid/content/ComponentName;

.field private upPosition:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    iput-boolean v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mAddingToKeyguard:Z

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->map:Ljava/util/Map;

    .line 115
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->shadow:I

    .line 116
    const/4 v0, -0x3

    iput v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->shadowAfter:I

    .line 117
    iput-boolean v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->movedFlag:Z

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->movingFlag:Z

    .line 135
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mCanvas:Landroid/graphics/Canvas;

    .line 721
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upPosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->myInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mBottomPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->currentIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->currentIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->dotsnew:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->bottomContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Landroid/appwidget/AppWidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->isFMRadioItem(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private initDotsNew()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 344
    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mBottomPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    invoke-virtual {v5}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->getCount()I

    move-result v3

    .line 345
    .local v3, length:I
    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->dotsnew:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 346
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->dotsnew:Ljava/util/ArrayList;

    .line 349
    :cond_0
    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->dotsnew:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 377
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->dotsnew:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v3, :cond_4

    .line 354
    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->dotsnew:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v0, v5, v3

    .line 355
    .local v0, delta:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 356
    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->dotsnew:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->dotsnew:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 358
    :cond_2
    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mIndicatorsLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 375
    :cond_3
    iput v7, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->currentIndex:I

    .line 376
    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->dotsnew:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->currentIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 360
    .end local v0           #delta:I
    .end local v1           #i:I
    :cond_4
    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->dotsnew:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v0, v3, v5

    .line 361
    .restart local v0       #delta:I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 365
    .local v4, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 366
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 367
    .local v2, indicatorView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02005b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 369
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 370
    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->dotsnew:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mIndicatorsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private initWidgetInLockscreen()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v3, lockScreenItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;>;"
    iget-object v6, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v5

    .line 226
    .local v5, widgets:[I
    const/4 v4, 0x0

    .line 227
    .local v4, weatherAdded:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 228
    iget-object v6, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    aget v7, v5, v2

    invoke-virtual {v6, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 230
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    .line 231
    const/4 v6, 0x0

    invoke-virtual {p0, p0, v0, v6}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    move-result-object v1

    .line 232
    .local v1, everyItem:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
    aget v6, v5, v2

    iput v6, v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->appWidgetId:I

    .line 233
    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v6, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->testComponentName:Landroid/content/ComponentName;

    .line 235
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v1           #everyItem:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    .end local v0           #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    return-object v3
.end method

.method private isFMRadioItem(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 184
    iget-object v0, p1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->packageName:Ljava/lang/String;

    const-string v1, "com.jrdcom.FMRadioWidget"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->className:Ljava/lang/String;

    const-string v1, "com.jrdcom.FMRadioWidget.FMRadioWidgetProvider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAllWidgetItems(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, widgetsInLockscreen:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;>;"
    new-instance v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;

    invoke-direct {v0, p0, p1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;-><init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mJrdAppWidgetLoader:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;

    .line 244
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mJrdAppWidgetLoader:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 245
    return-void
.end method

.method private setUpBroadCastReceivers()V
    .locals 2

    .prologue
    .line 249
    new-instance v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$2;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$2;-><init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)V

    iput-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 257
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 258
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    return-void
.end method

.method private setupViews(I)V
    .locals 7
    .parameter "widgetsCount"

    .prologue
    const/high16 v6, 0x432f

    const/high16 v5, 0x3f00

    .line 190
    const v1, 0x7f0b0109

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/CoverGridView;

    sput-object v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    .line 191
    new-instance v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    invoke-direct {v1, p0, p0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;-><init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;Landroid/content/Context;)V

    sput-object v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mUpGDAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    .line 192
    sget-object v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    sget-object v2, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mUpGDAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$1;

    invoke-direct {v2, p0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$1;-><init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)V

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    const v1, 0x7f0b0107

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    sput-object v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 204
    const v1, 0x7f0b010c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->emptyText:Landroid/widget/TextView;

    .line 205
    const v1, 0x7f0b010b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mIndicatorsLayout:Landroid/widget/LinearLayout;

    .line 207
    const v1, 0x7f0b010a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 209
    iput-object p0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->bottomContext:Landroid/content/Context;

    .line 210
    invoke-virtual {p0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->initBottmGridView()V

    .line 212
    sget-object v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 214
    .local v0, linearParams:Landroid/widget/LinearLayout$LayoutParams;
    int-to-float v1, p1

    sget v2, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->scale:F

    mul-float/2addr v2, v6

    add-float/2addr v2, v5

    mul-float/2addr v1, v2

    sget v2, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->scale:F

    mul-float/2addr v2, v6

    add-float/2addr v2, v5

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 216
    sget-object v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    sget-object v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v1, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 218
    sget-object v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 221
    return-void
.end method


# virtual methods
.method public createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
    .locals 3
    .parameter "context"
    .parameter "info"
    .parameter "extras"

    .prologue
    .line 561
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 563
    .local v1, label:Ljava/lang/CharSequence;
    new-instance v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;-><init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 565
    .local v0, item:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->keyguardPreviewImage:I

    if-eqz v2, :cond_0

    .line 566
    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->keyguardPreviewImage:I

    iput v2, v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->appWidgetPreviewId:I

    .line 570
    :goto_0
    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    iput v2, v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->iconId:I

    .line 571
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->packageName:Ljava/lang/String;

    .line 572
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->className:Ljava/lang/String;

    .line 573
    iput-object p3, v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->extras:Landroid/os/Bundle;

    .line 574
    return-object v0

    .line 568
    :cond_0
    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iput v2, v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->appWidgetPreviewId:I

    goto :goto_0
.end method

.method public deleteWidget(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)V
    .locals 8
    .parameter "item"

    .prologue
    .line 304
    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v4

    .line 305
    .local v4, widgets:[I
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->packageName:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->className:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->testComponentName:Landroid/content/ComponentName;

    .line 307
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v3, temList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 309
    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    aget v6, v4, v1

    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 311
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    .line 312
    iget-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->testComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 313
    aget v5, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v0           #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [I

    .line 318
    .local v2, saveWidgets:[I
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 319
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v1

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 321
    :cond_2
    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveAppWidgets([I)V

    .line 323
    return-void
.end method

.method public initBottmGridView()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mBottomPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;-><init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)V

    iput-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mBottomPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    .line 331
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mBottomPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 332
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mBottomPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 336
    :goto_0
    invoke-direct {p0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->initDotsNew()V

    .line 337
    invoke-virtual {p0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->showEmpty()V

    .line 338
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mBottomPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto :goto_0
.end method

.method public initUpGridView()V
    .locals 5

    .prologue
    const/high16 v4, 0x432f

    const/high16 v3, 0x3f00

    .line 279
    sget-object v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 281
    .local v0, linearParams:Landroid/widget/LinearLayout$LayoutParams;
    sget-object v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mUpGDAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    invoke-virtual {v1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->getCount()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->scale:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    sget v2, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->scale:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 283
    sget-object v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    sget-object v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    sget-object v2, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mUpGDAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    invoke-virtual {v2}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 285
    sget-object v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 286
    sget-object v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 288
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 144
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x8

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 147
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 149
    const v3, 0x7f04005c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 152
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "appWidgetId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    const-string v3, "appWidgetId"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mAppWidgetId:I

    .line 160
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 161
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mActivityManager:Landroid/app/ActivityManager;

    .line 162
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->myInflater:Landroid/view/LayoutInflater;

    .line 163
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 164
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 165
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    sput v3, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->scale:F

    .line 167
    const-string v3, "appWidgetOptions"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mExtraConfigureOptions:Landroid/os/Bundle;

    .line 175
    invoke-direct {p0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->initWidgetInLockscreen()Ljava/util/ArrayList;

    move-result-object v2

    .line 176
    .local v2, widgetsInLockscreen:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->setupViews(I)V

    .line 177
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->loadAllWidgetItems(Ljava/util/ArrayList;)V

    .line 179
    invoke-direct {p0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->setUpBroadCastReceivers()V

    .line 181
    return-void

    .line 157
    .end local v2           #widgetsInLockscreen:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1029
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1030
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mJrdAppWidgetLoader:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1031
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1033
    sget-object v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mUpGDAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    invoke-virtual {v0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->gc()V

    .line 1034
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mBottomPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->gc()V

    .line 1036
    return-void
.end method

.method public saveWidget(ILcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)V
    .locals 6
    .parameter "insertPosition"
    .parameter "item"

    .prologue
    .line 290
    const v0, 0x4b455947

    .line 291
    .local v0, KEYGUARD_HOST_ID:I
    const v2, 0x4b455947

    invoke-static {v2}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetIdForSystem(I)I

    move-result v2

    iput v2, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mAppWidgetId:I

    .line 294
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->packageName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->className:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->testComponentName:Landroid/content/ComponentName;

    .line 296
    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v3, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mAppWidgetId:I

    iget-object v4, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->testComponentName:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mExtraConfigureOptions:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4, v5}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 298
    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v1

    .line 299
    .local v1, widgets:[I
    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mAppWidgetId:I

    array-length v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->addAppWidget(II)Z

    .line 300
    return-void
.end method

.method public showEmpty()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 711
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mBottomPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->emptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 718
    :goto_0
    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->emptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
