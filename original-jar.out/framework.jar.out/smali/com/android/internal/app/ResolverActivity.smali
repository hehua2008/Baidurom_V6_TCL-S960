.class public Lcom/android/internal/app/ResolverActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;,
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    }
.end annotation


# static fields
.field public static final LAUNCHER_WALLPAPER_MULTIPLE_SCREEN_FLAG:Ljava/lang/String; = "multi_screen"

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"

.field private static final WALLPAPER_SCREENS_SPAN:I = 0x2


# instance fields
.field private IS_RETURN_FROM_OTHER_LAUNCHER:Ljava/lang/String;

.field private mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysUseOption:Z

.field private mGrid:Landroid/widget/GridView;

.field private mIconDpi:I

.field private mIconSize:I

.field private mIsMultiScreenWallpaper:Z

.field private mIsReturnFromOtherLauncher:Z

.field private mLastSelected:I

.field private mLaunchedFromUid:I

.field private mMaxColumns:I

.field private mOnceButton:Landroid/widget/Button;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRegistered:Z

.field private mShowExtended:Z

.field private mWallpaperHeight:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 98
    const-string/jumbo v0, "is_return_from_other_launcher"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->IS_RETURN_FROM_OTHER_LAUNCHER:Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 852
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mWallpaperWidth:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/app/ResolverActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mWallpaperHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverActivity;)Landroid/app/WallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 116
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    return-object v0
.end method

.method private validate2Gmail(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, openEmlByGmail:Z
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 489
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 490
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, uristr:Ljava/lang/String;
    const-string v3, ".eml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 492
    const-string v3, "com.android.mail.browse.EmlViewerActivity"

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 494
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040557

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 498
    const/4 v0, 0x1

    .line 506
    .end local v2           #uristr:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 500
    .restart local v2       #uristr:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 503
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "res"
    .parameter "resId"

    .prologue
    .line 231
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 236
    .local v1, result:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 232
    .end local v1           #result:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1       #result:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "ri"

    .prologue
    .line 242
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v3, :cond_1

    .line 243
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 244
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 258
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 248
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .line 249
    .local v2, iconRes:I
    if-eqz v2, :cond_2

    .line 250
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 251
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 258
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .end local v2           #iconRes:I
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResolverActivity"

    const-string v4, "Couldn\'t find resources for package"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 325
    .local v0, id:I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v2

    const v1, 0x1020372

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZ)V

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->dismiss()V

    .line 327
    return-void

    .line 325
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 122
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040402

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 125
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 19
    .parameter "savedInstanceState"
    .parameter "intent"
    .parameter "title"
    .parameter "initialIntents"
    .parameter
    .parameter "alwaysUseOption"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p5, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const v2, 0x1030316

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    .line 131
    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 139
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    .line 141
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 143
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 145
    .local v11, ap:Lcom/android/internal/app/AlertController$AlertParams;
    move-object/from16 v0, p3

    iput-object v0, v11, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 148
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 150
    const-string v2, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 151
    .local v10, am:Landroid/app/ActivityManager;
    invoke-virtual {v10}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    .line 152
    invoke-virtual {v10}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    .line 154
    new-instance v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v15

    .line 157
    .local v15, count:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 217
    :cond_1
    :goto_1
    return-void

    .line 135
    .end local v10           #am:Landroid/app/ActivityManager;
    .end local v11           #ap:Lcom/android/internal/app/AlertController$AlertParams;
    .end local v15           #count:I
    :catch_0
    move-exception v17

    .line 136
    .local v17, e:Landroid/os/RemoteException;
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    goto/16 :goto_0

    .line 161
    .end local v17           #e:Landroid/os/RemoteException;
    .restart local v10       #am:Landroid/app/ActivityManager;
    .restart local v11       #ap:Lcom/android/internal/app/AlertController$AlertParams;
    .restart local v15       #count:I
    :cond_2
    const/4 v2, 0x1

    if-le v15, v2, :cond_6

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900bb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 163
    iget-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x1020371

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mGrid:Landroid/widget/GridView;

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mGrid:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mGrid:Landroid/widget/GridView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mGrid:Landroid/widget/GridView;

    new-instance v3, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 168
    if-eqz p6, :cond_3

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mGrid:Landroid/widget/GridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 172
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->resizeGrid()V

    .line 183
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->setupAlert()V

    .line 185
    if-eqz p6, :cond_4

    .line 186
    const v2, 0x102027d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 187
    .local v12, buttonLayout:Landroid/view/ViewGroup;
    if-eqz v12, :cond_8

    .line 188
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 189
    const v2, 0x1020372

    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    .line 190
    const v2, 0x1020373

    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    .line 196
    .end local v12           #buttonLayout:Landroid/view/ViewGroup;
    :cond_4
    :goto_3
    if-eqz p2, :cond_1

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v14

    .line 198
    .local v14, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 199
    .local v9, action:Ljava/lang/String;
    if-eqz v14, :cond_1

    if-eqz v9, :cond_1

    .line 200
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 201
    .local v13, cat:Ljava/lang/String;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 202
    const-string/jumbo v2, "wallpaper"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080231

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 204
    .local v16, defaultWallpaper:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/2addr v2, v3

    const/4 v3, 0x1

    if-lt v2, v3, :cond_9

    .line 206
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsMultiScreenWallpaper:Z

    .line 210
    :goto_4
    const/16 v16, 0x0

    .line 211
    goto/16 :goto_1

    .line 173
    .end local v9           #action:Ljava/lang/String;
    .end local v13           #cat:Ljava/lang/String;
    .end local v14           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16           #defaultWallpaper:Landroid/graphics/drawable/Drawable;
    .end local v18           #i$:Ljava/util/Iterator;
    :cond_6
    const/4 v2, 0x1

    if-ne v15, v2, :cond_7

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 176
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto/16 :goto_1

    .line 180
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040407

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 192
    .restart local v12       #buttonLayout:Landroid/view/ViewGroup;
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    goto/16 :goto_3

    .line 208
    .end local v12           #buttonLayout:Landroid/view/ViewGroup;
    .restart local v9       #action:Ljava/lang/String;
    .restart local v13       #cat:Ljava/lang/String;
    .restart local v14       #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16       #defaultWallpaper:Landroid/graphics/drawable/Drawable;
    .restart local v18       #i$:Ljava/util/Iterator;
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsMultiScreenWallpaper:Z

    goto :goto_4
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 24
    .parameter "ri"
    .parameter "intent"
    .parameter "alwaysCheck"

    .prologue
    .line 401
    if-eqz p3, :cond_b

    .line 403
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 405
    .local v11, filter:Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 409
    .local v8, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_1

    .line 410
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 411
    .local v7, cat:Ljava/lang/String;
    invoke-virtual {v11, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 414
    .end local v7           #cat:Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v21, "android.intent.category.DEFAULT"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 416
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v21, v0

    const/high16 v22, 0xfff

    and-int v7, v21, v22

    .line 417
    .local v7, cat:I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 418
    .local v9, data:Landroid/net/Uri;
    const/high16 v21, 0x60

    move/from16 v0, v21

    if-ne v7, v0, :cond_2

    .line 419
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 420
    .local v14, mimeType:Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 422
    :try_start_0
    invoke-virtual {v11, v14}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .end local v14           #mimeType:Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_7

    .line 433
    const/high16 v21, 0x60

    move/from16 v0, v21

    if-ne v7, v0, :cond_3

    const-string v21, "file"

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    const-string v21, "content"

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 436
    :cond_3
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 440
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 441
    .local v5, aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v5, :cond_5

    .line 442
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 443
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter$AuthorityEntry;

    .line 444
    .local v4, a:Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v4, v9}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v21

    if-ltz v21, :cond_4

    .line 445
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v18

    .line 446
    .local v18, port:I
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v22

    if-ltz v18, :cond_9

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    :goto_2
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .end local v4           #a:Landroid/content/IntentFilter$AuthorityEntry;
    .end local v18           #port:I
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v16

    .line 453
    .local v16, pIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v16, :cond_7

    .line 454
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    .line 455
    .local v17, path:Ljava/lang/String;
    :cond_6
    if-eqz v17, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 456
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PatternMatcher;

    .line 457
    .local v15, p:Landroid/os/PatternMatcher;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 458
    invoke-virtual {v15}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v15}, Landroid/os/PatternMatcher;->getType()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 466
    .end local v5           #aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v15           #p:Landroid/os/PatternMatcher;
    .end local v16           #pIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v17           #path:Ljava/lang/String;
    :cond_7
    if-eqz v11, :cond_b

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$400(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    .line 468
    .local v3, N:I
    new-array v0, v3, [Landroid/content/ComponentName;

    move-object/from16 v20, v0

    .line 469
    .local v20, set:[Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 470
    .local v6, bestMatch:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_3
    if-ge v12, v3, :cond_a

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$400(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    move-object/from16 v19, v0

    .line 472
    .local v19, r:Landroid/content/pm/ResolveInfo;
    new-instance v21, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v21, v20, v12

    .line 474
    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v0, v6, :cond_8

    move-object/from16 v0, v19

    iget v6, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 470
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 423
    .end local v3           #N:I
    .end local v6           #bestMatch:I
    .end local v12           #i:I
    .end local v19           #r:Landroid/content/pm/ResolveInfo;
    .end local v20           #set:[Landroid/content/ComponentName;
    .restart local v14       #mimeType:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 424
    .local v10, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v21, "ResolverActivity"

    move-object/from16 v0, v21

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 446
    .end local v10           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v14           #mimeType:Ljava/lang/String;
    .restart local v4       #a:Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v5       #aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v18       #port:I
    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 476
    .end local v4           #a:Landroid/content/IntentFilter$AuthorityEntry;
    .end local v5           #aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v18           #port:I
    .restart local v3       #N:I
    .restart local v6       #bestMatch:I
    .restart local v12       #i:I
    .restart local v20       #set:[Landroid/content/ComponentName;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v11, v6, v1, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 481
    .end local v3           #N:I
    .end local v6           #bestMatch:I
    .end local v7           #cat:I
    .end local v8           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9           #data:Landroid/net/Uri;
    .end local v11           #filter:Landroid/content/IntentFilter;
    .end local v12           #i:I
    .end local v20           #set:[Landroid/content/ComponentName;
    :cond_b
    if-eqz p2, :cond_c

    .line 482
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 484
    :cond_c
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 309
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v0

    .line 310
    .local v0, checkedPos:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    const/4 v1, 0x1

    .line 311
    .local v1, hasValidSelection:Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v3, :cond_3

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    if-eq v3, v0, :cond_3

    .line 312
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 313
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 314
    if-eqz v1, :cond_1

    .line 315
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    .line 317
    :cond_1
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 321
    :goto_1
    return-void

    .end local v1           #hasValidSelection:Z
    :cond_2
    move v1, v2

    .line 310
    goto :goto_0

    .line 319
    .restart local v1       #hasValidSelection:Z
    :cond_3
    invoke-virtual {p0, p3, v2}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZ)V

    goto :goto_1
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 263
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onRestart()V

    .line 264
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 269
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 295
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v0

    .line 297
    .local v0, checkedPos:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    .line 298
    .local v1, enabled:Z
    :goto_0
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 299
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 300
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 301
    if-eqz v1, :cond_0

    .line 302
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 305
    .end local v0           #checkedPos:I
    .end local v1           #enabled:Z
    :cond_0
    return-void

    .line 297
    .restart local v0       #checkedPos:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 273
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 274
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 290
    :cond_1
    return-void
.end method

.method resetWallpaperSize()V
    .locals 3

    .prologue
    .line 378
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 379
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 380
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsMultiScreenWallpaper:Z

    if-nez v1, :cond_0

    .line 381
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mWallpaperWidth:I

    .line 382
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mWallpaperHeight:I

    .line 387
    :goto_0
    new-instance v1, Lcom/android/internal/app/ResolverActivity$2;

    const-string/jumbo v2, "setWallpaperDimension"

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$2;->start()V

    .line 397
    return-void

    .line 384
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mWallpaperWidth:I

    .line 385
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mWallpaperHeight:I

    goto :goto_0
.end method

.method resizeGrid()V
    .locals 3

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .line 222
    .local v0, itemCount:I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Landroid/widget/GridView;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGrid:Landroid/widget/GridView;

    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 226
    :cond_0
    return-void
.end method

.method restoreToDefaultWallpaper()V
    .locals 4

    .prologue
    .line 370
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resetWallpaperSize()V

    .line 371
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->clear()V

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "multi_screen"

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsMultiScreenWallpaper:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_1
    return-void

    .line 372
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set wallpaper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .parameter "ri"

    .prologue
    .line 511
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 514
    .local v0, in:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 515
    return-void
.end method

.method startSelected(IZ)V
    .locals 10
    .parameter "which"
    .parameter "always"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 330
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v6, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 331
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v6, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v4

    .line 333
    .local v4, intent:Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->validate2Gmail(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 366
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->IS_RETURN_FROM_OTHER_LAUNCHER:Ljava/lang/String;

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_3

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/android/internal/app/ResolverActivity;->mIsReturnFromOtherLauncher:Z

    .line 341
    if-eqz v4, :cond_2

    .line 342
    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    .line 343
    .local v2, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, action:Ljava/lang/String;
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 345
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 346
    .local v1, cat:Ljava/lang/String;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 347
    if-eqz v5, :cond_4

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_4

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.jrdcom.launcher"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v9, "com.jrdcom.launcher.Launcher"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 349
    iget-boolean v6, p0, Lcom/android/internal/app/ResolverActivity;->mIsReturnFromOtherLauncher:Z

    if-eqz v6, :cond_2

    .line 350
    iput-boolean v8, p0, Lcom/android/internal/app/ResolverActivity;->mIsReturnFromOtherLauncher:Z

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->IS_RETURN_FROM_OTHER_LAUNCHER:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 352
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->restoreToDefaultWallpaper()V

    .line 364
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #cat:Ljava/lang/String;
    .end local v2           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-virtual {p0, v5, v4, p2}, Lcom/android/internal/app/ResolverActivity;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_0

    :cond_3
    move v6, v8

    .line 338
    goto :goto_1

    .line 355
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #cat:Ljava/lang/String;
    .restart local v2       #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    iput-boolean v7, p0, Lcom/android/internal/app/ResolverActivity;->mIsReturnFromOtherLauncher:Z

    .line 356
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity;->IS_RETURN_FROM_OTHER_LAUNCHER:Ljava/lang/String;

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method
