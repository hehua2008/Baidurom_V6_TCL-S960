.class public Lcom/jrdcom/settings/statusbar/StatusBarSettings;
.super Landroid/app/Fragment;
.source "StatusBarSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/settings/statusbar/StatusBarSettings$PackageIntentReceiver;,
        Lcom/jrdcom/settings/statusbar/StatusBarSettings$AppsAdapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_LOAD_APP:I = 0x1

.field private static final STATUSBAR_DISBALE:Ljava/lang/String; = "statusbar_disable"

.field private static final TAG:Ljava/lang/String; = "StatusBarSettings"


# instance fields
.field private final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/jrdcom/settings/statusbar/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final INSTALL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/jrdcom/settings/statusbar/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jrdcom/settings/statusbar/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mAppInfoLoadThread:Ljava/lang/Thread;

.field private mAppLoadDone:Z

.field private mAppsAdapter:Lcom/jrdcom/settings/statusbar/StatusBarSettings$AppsAdapter;

.field mCingButton:Landroid/widget/Button;

.field mCling:Landroid/widget/FrameLayout;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mGridView:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/INotificationManager;

.field mPackageIntentReceiver:Lcom/jrdcom/settings/statusbar/StatusBarSettings$PackageIntentReceiver;

.field private mTipTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;

    .line 91
    new-instance v0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$1;

    invoke-direct {v0, p0}, Lcom/jrdcom/settings/statusbar/StatusBarSettings$1;-><init>(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)V

    iput-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance v0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$2;

    invoke-direct {v0, p0}, Lcom/jrdcom/settings/statusbar/StatusBarSettings$2;-><init>(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)V

    iput-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoLoadThread:Ljava/lang/Thread;

    .line 160
    new-instance v0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$3;

    invoke-direct {v0, p0}, Lcom/jrdcom/settings/statusbar/StatusBarSettings$3;-><init>(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)V

    iput-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 168
    new-instance v0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$4;

    invoke-direct {v0, p0}, Lcom/jrdcom/settings/statusbar/StatusBarSettings$4;-><init>(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)V

    iput-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->INSTALL_COMPARATOR:Ljava/util/Comparator;

    .line 410
    return-void
.end method

.method static synthetic access$000(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->loadAppsDone()V

    return-void
.end method

.method static synthetic access$100(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jrdcom/settings/statusbar/StatusBarSettings;Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->isThirdApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)Landroid/app/INotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mNotificationManager:Landroid/app/INotificationManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)Ljava/util/Comparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->INSTALL_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jrdcom/settings/statusbar/StatusBarSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/jrdcom/settings/statusbar/StatusBarSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method private addPackage(Ljava/lang/String;)V
    .locals 11
    .parameter "pkgName"

    .prologue
    const/4 v3, 0x0

    .line 459
    if-nez p1, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    const/4 v9, 0x0

    .line 463
    .local v9, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 468
    :goto_1
    if-eqz v9, :cond_0

    .line 470
    const/4 v10, 0x0

    .line 471
    .local v10, packageInfo:Landroid/content/pm/PackageInfo;
    const-wide/16 v5, 0x0

    .line 473
    .local v5, installTime:J
    :try_start_1
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 478
    :goto_2
    if-eqz v10, :cond_2

    .line 479
    iget-wide v5, v10, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 482
    :cond_2
    new-instance v0, Lcom/jrdcom/settings/statusbar/AppInfo;

    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v4, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/jrdcom/settings/statusbar/AppInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/String;J)V

    .line 486
    .local v0, appInfo:Lcom/jrdcom/settings/statusbar/AppInfo;
    iget-object v2, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;

    monitor-enter v2

    .line 487
    :try_start_2
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 488
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mTipTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mGridView:Landroid/widget/GridView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 490
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;

    const-string v3, "statusbar_disable"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "statusbar_disable"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 493
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mCling:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mCling:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 495
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mGridView:Landroid/widget/GridView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    .line 498
    :cond_3
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;

    iget-object v3, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->INSTALL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 500
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 501
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppsAdapter:Lcom/jrdcom/settings/statusbar/StatusBarSettings$AppsAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 465
    .end local v0           #appInfo:Lcom/jrdcom/settings/statusbar/AppInfo;
    .end local v5           #installTime:J
    .end local v10           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v7

    .line 466
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 474
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #installTime:J
    .restart local v10       #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v8

    .line 475
    .local v8, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 500
    .end local v8           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #appInfo:Lcom/jrdcom/settings/statusbar/AppInfo;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private isThirdApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    const/4 v0, 0x1

    .line 343
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v0

    .line 345
    :cond_1
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 348
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAppsDone()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 320
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppsAdapter:Lcom/jrdcom/settings/statusbar/StatusBarSettings$AppsAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 321
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mTipTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 327
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;

    const-string v2, "statusbar_disable"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 329
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "statusbar_disable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mCling:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mCling:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 339
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppLoadDone:Z

    .line 340
    return-void

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mTipTextView:Landroid/widget/TextView;

    const v2, 0x7f090953

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private removePackage(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 440
    if-nez p1, :cond_0

    .line 456
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v2, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;

    monitor-enter v2

    .line 443
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 444
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/settings/statusbar/AppInfo;

    iget-object v1, v1, Lcom/jrdcom/settings/statusbar/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 446
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppsAdapter:Lcom/jrdcom/settings/statusbar/StatusBarSettings$AppsAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 447
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mTipTextView:Landroid/widget/TextView;

    const v3, 0x7f090953

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 449
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mTipTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 450
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mGridView:Landroid/widget/GridView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 451
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mCling:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 443
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 455
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public dismissCling(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;

    const-string v1, "statusbar_disable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "statusbar_disable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 508
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mCling:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 509
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v8, -0x2

    const/4 v3, 0x0

    .line 241
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 243
    new-instance v4, Landroid/widget/Switch;

    iget-object v5, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 245
    iget-object v4, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;

    instance-of v4, v4, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_1

    .line 246
    iget-object v2, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;

    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 247
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    .line 249
    :cond_0
    iget-object v4, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 251
    .local v1, padding:I
    iget-object v4, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 252
    iget-object v4, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 255
    iget-object v4, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const v7, 0x800015

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 263
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v4, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 264
    iget-object v4, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "statusbar_icon_intercepted"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    .line 266
    .local v0, checked:Z
    :goto_0
    iget-object v4, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 267
    iget-object v4, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mGridView:Landroid/widget/GridView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v4, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 269
    if-eqz v0, :cond_3

    .line 270
    iget-object v3, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mTipTextView:Landroid/widget/TextView;

    const v4, 0x7f09094f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 275
    :goto_1
    return-void

    .end local v0           #checked:Z
    :cond_2
    move v0, v3

    .line 264
    goto :goto_0

    .line 272
    .restart local v0       #checked:Z
    :cond_3
    iget-object v3, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mTipTextView:Landroid/widget/TextView;

    const v4, 0x7f09094e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 279
    iget-object v3, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "statusbar_icon_intercepted"

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 281
    if-eqz p2, :cond_4

    .line 282
    iget-boolean v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppLoadDone:Z

    if-eqz v1, :cond_3

    .line 283
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 284
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;

    const-string v3, "statusbar_disable"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "statusbar_disable"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mCling:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mCling:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 291
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    .line 312
    :cond_0
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v1, p2}, Landroid/app/INotificationManager;->setStatusBarInterceptedForAll(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_2
    return-void

    :cond_1
    move v1, v2

    .line 279
    goto :goto_0

    .line 294
    :cond_2
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mTipTextView:Landroid/widget/TextView;

    const v3, 0x7f090953

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 295
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mCling:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 300
    :cond_3
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mTipTextView:Landroid/widget/TextView;

    const v2, 0x7f09094f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 302
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 305
    :cond_4
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mTipTextView:Landroid/widget/TextView;

    const v3, 0x7f09094e

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 306
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mCling:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 185
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 186
    .local v0, orientation:I
    const/4 v1, 0x7

    .line 187
    .local v1, winOrientation:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 188
    const/4 v1, 0x7

    .line 190
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 192
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09094d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 194
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;

    .line 195
    iget-object v2, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 197
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mNotificationManager:Landroid/app/INotificationManager;

    .line 200
    iget-object v2, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoLoadThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 202
    iget-object v2, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mPackageIntentReceiver:Lcom/jrdcom/settings/statusbar/StatusBarSettings$PackageIntentReceiver;

    if-nez v2, :cond_1

    .line 203
    new-instance v2, Lcom/jrdcom/settings/statusbar/StatusBarSettings$PackageIntentReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/jrdcom/settings/statusbar/StatusBarSettings$PackageIntentReceiver;-><init>(Lcom/jrdcom/settings/statusbar/StatusBarSettings;Lcom/jrdcom/settings/statusbar/StatusBarSettings$1;)V

    iput-object v2, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mPackageIntentReceiver:Lcom/jrdcom/settings/statusbar/StatusBarSettings$PackageIntentReceiver;

    .line 204
    iget-object v2, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mPackageIntentReceiver:Lcom/jrdcom/settings/statusbar/StatusBarSettings$PackageIntentReceiver;

    invoke-virtual {v2}, Lcom/jrdcom/settings/statusbar/StatusBarSettings$PackageIntentReceiver;->registerReceiver()V

    .line 206
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 212
    const v1, 0x7f0400cb

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 214
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b020b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mTipTextView:Landroid/widget/TextView;

    .line 215
    const v1, 0x7f0b020a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mGridView:Landroid/widget/GridView;

    .line 216
    const v1, 0x7f0b020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mCling:Landroid/widget/FrameLayout;

    .line 217
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mCling:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    new-instance v1, Lcom/jrdcom/settings/statusbar/StatusBarSettings$AppsAdapter;

    invoke-direct {v1, p0}, Lcom/jrdcom/settings/statusbar/StatusBarSettings$AppsAdapter;-><init>(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)V

    iput-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppsAdapter:Lcom/jrdcom/settings/statusbar/StatusBarSettings$AppsAdapter;

    .line 219
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppsAdapter:Lcom/jrdcom/settings/statusbar/StatusBarSettings$AppsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 221
    const v1, 0x7f0b020d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mCingButton:Landroid/widget/Button;

    .line 222
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mCingButton:Landroid/widget/Button;

    new-instance v2, Lcom/jrdcom/settings/statusbar/StatusBarSettings$5;

    invoke-direct {v2, p0}, Lcom/jrdcom/settings/statusbar/StatusBarSettings$5;-><init>(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mCling:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/jrdcom/settings/statusbar/StatusBarSettings$6;

    invoke-direct {v2, p0}, Lcom/jrdcom/settings/statusbar/StatusBarSettings$6;-><init>(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 236
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 399
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 400
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mPackageIntentReceiver:Lcom/jrdcom/settings/statusbar/StatusBarSettings$PackageIntentReceiver;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mPackageIntentReceiver:Lcom/jrdcom/settings/statusbar/StatusBarSettings$PackageIntentReceiver;

    invoke-virtual {v0}, Lcom/jrdcom/settings/statusbar/StatusBarSettings$PackageIntentReceiver;->unregisterReceiver()V

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mPackageIntentReceiver:Lcom/jrdcom/settings/statusbar/StatusBarSettings$PackageIntentReceiver;

    .line 404
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 406
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 385
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lcom/jrdcom/settings/statusbar/AppIconView;

    .line 386
    .local v0, appIconView:Lcom/jrdcom/settings/statusbar/AppIconView;
    invoke-virtual {v0}, Lcom/jrdcom/settings/statusbar/AppIconView;->resetDrawableState()V

    .line 387
    iget-object v2, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/settings/statusbar/AppInfo;

    iget-object v3, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jrdcom/settings/statusbar/AppInfo;

    iget-boolean v3, v3, Lcom/jrdcom/settings/statusbar/AppInfo;->isChecked:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lcom/jrdcom/settings/statusbar/AppInfo;->isChecked:Z

    .line 390
    :try_start_0
    iget-object v3, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mNotificationManager:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/settings/statusbar/AppInfo;

    iget-object v2, v2, Lcom/jrdcom/settings/statusbar/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/jrdcom/settings/statusbar/AppIconView;->ismDrawableStateClicked()Z

    move-result v4

    invoke-interface {v3, v2, v4}, Landroid/app/INotificationManager;->setStatusBarInterceptedForPackage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_1
    return-void

    .line 387
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v1

    .line 393
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
