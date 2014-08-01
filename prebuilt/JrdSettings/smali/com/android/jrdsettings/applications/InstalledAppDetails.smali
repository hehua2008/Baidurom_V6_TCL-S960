.class public Lcom/android/jrdsettings/applications/InstalledAppDetails;
.super Landroid/app/Fragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/jrdsettings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/jrdsettings/applications/InstalledAppDetails$MyAlertDialogFragment;,
        Lcom/android/jrdsettings/applications/InstalledAppDetails$PremiumSmsSelectionListener;,
        Lcom/android/jrdsettings/applications/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/jrdsettings/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/jrdsettings/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# static fields
.field private static final ACTION_DYNAMIC_SD_SWAP:Ljava/lang/String; = "com.mediatek.SD_SWAP"

.field public static final ARG_PACKAGE_NAME:Ljava/lang/String; = "package"

.field private static final CLEAR_CACHE:I = 0x3

.field private static final CLEAR_USER_DATA:I = 0x1

.field private static final DLG_APP_NOT_FOUND:I = 0x3

.field private static final DLG_BASE:I = 0x0

.field private static final DLG_CANNOT_CLEAR_DATA:I = 0x4

.field private static final DLG_CLEAR_DATA:I = 0x1

.field private static final DLG_DISABLE:I = 0x7

.field private static final DLG_DISABLE_NOTIFICATIONS:I = 0x8

.field private static final DLG_FACTORY_RESET:I = 0x2

.field private static final DLG_FORCE_STOP:I = 0x5

.field private static final DLG_MOVE_FAILED:I = 0x6

.field private static final DLG_SPECIAL_DISABLE:I = 0x9

.field private static final OP_FAILED:I = 0x2

.field private static final OP_SUCCESSFUL:I = 0x1

.field private static final PACKAGE_MOVE:I = 0x4

.field public static final REQUEST_MANAGE_SPACE:I = 0x2

.field public static final REQUEST_UNINSTALL:I = 0x1

.field private static final SIZE_INVALID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "InstalledAppDetails"

.field public static final UNINSTALL_ALL_USERS_MENU:I = 0x1

.field private static final localLOGV:Z


# instance fields
.field private checkChangedFlag:Z

.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAskCompatibilityCB:Landroid/widget/CheckBox;

.field private mCacheSize:Landroid/widget/TextView;

.field private mCanBeOnSdCardChecker:Lcom/android/jrdsettings/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/jrdsettings/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataBackRunable:Ljava/lang/Runnable;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataHandler:Landroid/os/Handler;

.field private mClearDataObserver:Lcom/android/jrdsettings/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mClearDataReceiver:Landroid/content/BroadcastReceiver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataFileStats:Landroid/os/StatFs;

.field private mDataSize:Landroid/widget/TextView;

.field private mDisableAfterUninstall:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mDycSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mEnableCompatibilityCB:Landroid/widget/CheckBox;

.field private mExtStoragePath:Ljava/lang/String;

.field private mExternalCodeSize:Landroid/widget/TextView;

.field private mExternalCodeSizeLabel:Landroid/widget/TextView;

.field private mExternalDataSize:Landroid/widget/TextView;

.field private mExternalDataSizeLabel:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mInitialized:Z

.field private mIntent:Landroid/content/Intent;

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mIsClearData:Z

.field private mIsLowMem:Z

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mLaunchButton:Landroid/widget/Button;

.field private mMoreControlButtons:Landroid/view/View;

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveInProgress:Z

.field private mNotificationSwitch:Landroid/widget/CompoundButton;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageMoveObserver:Lcom/android/jrdsettings/applications/InstalledAppDetails$PackageMoveObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mSDcardDescription:Ljava/lang/String;

.field private mScreenCompatSection:Landroid/view/View;

.field private mSession:Lcom/android/jrdsettings/applications/ApplicationsState$Session;

.field private mShowUninstalled:Z

.field private mSmsManager:Lcom/android/internal/telephony/ISms;

.field private mSpecialDisableButton:Landroid/widget/Button;

.field private mState:Lcom/android/jrdsettings/applications/ApplicationsState;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 133
    iput-boolean v1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 134
    iput-boolean v1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 163
    iput-boolean v1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mIsLowMem:Z

    .line 177
    iput-boolean v1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 178
    iput-wide v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 179
    iput-wide v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 180
    iput-wide v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 181
    iput-wide v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 182
    iput-wide v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 183
    iput-wide v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 219
    iput-boolean v1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mIsClearData:Z

    .line 222
    new-instance v0, Lcom/android/jrdsettings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails$1;-><init>(Lcom/android/jrdsettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 525
    new-instance v0, Lcom/android/jrdsettings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails$2;-><init>(Lcom/android/jrdsettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 1448
    new-instance v0, Lcom/android/jrdsettings/applications/InstalledAppDetails$3;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails$3;-><init>(Lcom/android/jrdsettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 1506
    iput-boolean v1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->checkChangedFlag:Z

    .line 1684
    new-instance v0, Lcom/android/jrdsettings/applications/InstalledAppDetails$4;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails$4;-><init>(Lcom/android/jrdsettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mDycSwapReceiver:Landroid/content/BroadcastReceiver;

    .line 1703
    new-instance v0, Lcom/android/jrdsettings/applications/InstalledAppDetails$5;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails$5;-><init>(Lcom/android/jrdsettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataReceiver:Landroid/content/BroadcastReceiver;

    .line 1715
    new-instance v0, Lcom/android/jrdsettings/applications/InstalledAppDetails$6;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails$6;-><init>(Lcom/android/jrdsettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataHandler:Landroid/os/Handler;

    .line 1719
    new-instance v0, Lcom/android/jrdsettings/applications/InstalledAppDetails$7;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails$7;-><init>(Lcom/android/jrdsettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataBackRunable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/applications/InstalledAppDetails;)Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/jrdsettings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/jrdsettings/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/jrdsettings/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/jrdsettings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/jrdsettings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/jrdsettings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/jrdsettings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->refeshUi2SD()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/jrdsettings/applications/InstalledAppDetails;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mIsClearData:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/jrdsettings/applications/InstalledAppDetails;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mIsClearData:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/jrdsettings/applications/InstalledAppDetails;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataBackRunable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/jrdsettings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/applications/InstalledAppDetails;)Lcom/android/jrdsettings/applications/ApplicationsState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mState:Lcom/android/jrdsettings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/jrdsettings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->clearWeatherData()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->initDataButtons()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/jrdsettings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/jrdsettings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/jrdsettings/applications/InstalledAppDetails;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/jrdsettings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method private checkForceStop()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1462
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.deskclock"

    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1465
    :cond_0
    const-string v0, "InstalledAppDetails"

    const-string v2, "checkForceStop --- mDpm.packageHasActiveAdmins(mPackageInfo.packageName"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    invoke-direct {p0, v5}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 1483
    :goto_0
    return-void

    .line 1468
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x20

    and-int/2addr v0, v3

    if-nez v0, :cond_2

    .line 1471
    const-string v0, "InstalledAppDetails"

    const-string v2, "checkForceStop,(mAppEntry.info.flags&ApplicationInfo.FLAG_STOPPED) == 0"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    invoke-direct {p0, v6}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 1474
    :cond_2
    const-string v0, "InstalledAppDetails"

    const-string v3, "checkForceStop --- sendOrderedBroadcast"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1477
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1478
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1479
    const-string v0, "android.intent.extra.user_handle"

    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1480
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/ContextWrapper;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private clearWeatherData()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1728
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1729
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1731
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/jrdsettings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v2, v4}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v3

    .line 1733
    .local v3, res:Z
    if-nez v3, :cond_0

    .line 1734
    const-string v4, "InstalledAppDetails"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not clear application user data for package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    const/4 v4, 0x4

    invoke-direct {p0, v4, v7}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1741
    :goto_0
    iput-boolean v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mIsClearData:Z

    .line 1743
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.WEATHERDATA_CLEAN_BROADCAST"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1745
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1748
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1750
    return-void

    .line 1738
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v5, 0x7f090642

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 1437
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1439
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1440
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mState:Lcom/android/jrdsettings/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/jrdsettings/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    .line 1441
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mState:Lcom/android/jrdsettings/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/jrdsettings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 1442
    .local v1, newEnt:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_0

    .line 1443
    iput-object v1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    .line 1445
    :cond_0
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1446
    return-void
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "errCode"

    .prologue
    .line 317
    packed-switch p1, :pswitch_data_0

    .line 331
    const-string v0, ""

    :goto_0
    return-object v0

    .line 319
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09065e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 321
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09065f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 323
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090660

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 325
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090661

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 327
    :pswitch_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090662

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 329
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .parameter "packageName"

    .prologue
    .line 1528
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_0

    .line 1529
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1534
    :goto_0
    return v0

    .line 1531
    :catch_0
    move-exception v0

    .line 1534
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSdDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "path"

    .prologue
    .line 1649
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 1650
    .local v3, volumes:[Landroid/os/storage/StorageVolume;
    array-length v1, v3

    .line 1651
    .local v1, len:I
    const-string v2, ""

    .line 1652
    .local v2, sdDesc:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1653
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1654
    aget-object v4, v3, v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1660
    :cond_0
    return-object v2

    .line 1657
    :cond_1
    const-string v2, "error"

    .line 1652
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 273
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 8
    .parameter "button"

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 389
    .local v0, disableable:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v6, "android"

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 391
    .local v4, sys:Landroid/content/pm/PackageInfo;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 395
    .local v2, homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 398
    :cond_1
    const-string v5, "InstalledAppDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "core system applications :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const v5, 0x7f090622

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 422
    .end local v2           #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #sys:Landroid/content/pm/PackageInfo;
    :goto_0
    return v0

    .line 401
    .restart local v2       #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #sys:Landroid/content/pm/PackageInfo;
    :cond_2
    sget-object v5, Lcom/android/jrdsettings/Utils;->disableAppList:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/jrdsettings/Utils;->disableAppList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 404
    const-string v5, "InstalledAppDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDisableAppsList contains :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v6, 0x7f090622

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 406
    const/4 v0, 0x0

    goto :goto_0

    .line 408
    :cond_3
    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_4

    .line 410
    const-string v5, "InstalledAppDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAppEntry.info.enabled :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " packagename: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const v5, 0x7f090622

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 412
    const/4 v0, 0x1

    goto :goto_0

    .line 414
    :cond_4
    const v5, 0x7f090623

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 415
    const/4 v0, 0x1

    .line 417
    const-string v5, "InstalledAppDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "else :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 419
    .end local v2           #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #sys:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 420
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "InstalledAppDetails"

    const-string v6, "Unable to get package info"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private initDataButtons()V
    .locals 5

    .prologue
    const v4, 0x7f090624

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 280
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 285
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 286
    iput-boolean v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 314
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 289
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f090636

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 292
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mExtStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 294
    const-string v0, "InstalledAppDetails"

    const-string v1, "/mnt/sdcard is not mounted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 297
    const-string v0, "InstalledAppDetails"

    const-string v1, "ApplicationInfo.FLAG_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 299
    iput-boolean v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 312
    :goto_1
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 301
    :cond_2
    const-string v0, "InstalledAppDetails"

    const-string v1, "ApplicationInfo.FLAG_INTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 304
    :cond_3
    const-string v0, "InstalledAppDetails"

    const-string v1, "/mnt/sdcard is mounted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 306
    iput-boolean v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mCanClearData:Z

    goto :goto_1

    .line 310
    :cond_4
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 10

    .prologue
    const v9, 0x7f0900d7

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 336
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/jrdsettings/Utils;->isExSdcardInserted()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v6, "/custpack"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 339
    :cond_0
    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 371
    :goto_0
    return-void

    .line 344
    :cond_1
    const/4 v0, 0x0

    .line 345
    .local v0, dataOnly:Z
    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    if-eqz v5, :cond_2

    move v0, v3

    .line 346
    :goto_1
    const/4 v2, 0x1

    .line 347
    .local v2, moveDisable:Z
    if-eqz v0, :cond_3

    .line 348
    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v6, 0x7f09065a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 365
    :goto_2
    if-eqz v2, :cond_6

    .line 366
    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .end local v2           #moveDisable:Z
    :cond_2
    move v0, v4

    .line 345
    goto :goto_1

    .line 349
    .restart local v2       #moveDisable:Z
    :cond_3
    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x4

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    .line 351
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090640

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, internalStorage:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-virtual {v6, v9, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    const/4 v2, 0x0

    .line 357
    goto :goto_2

    .line 359
    .end local v1           #internalStorage:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-virtual {v6, v9, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/jrdsettings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v5}, Lcom/android/jrdsettings/applications/CanBeOnSdCardChecker;->init()V

    .line 363
    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/jrdsettings/applications/CanBeOnSdCardChecker;

    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Lcom/android/jrdsettings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_5

    move v2, v3

    :goto_3
    goto :goto_2

    :cond_5
    move v2, v4

    goto :goto_3

    .line 368
    :cond_6
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initNotificationButton()V
    .locals 4

    .prologue
    .line 464
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 466
    .local v1, nm:Landroid/app/INotificationManager;
    const/4 v0, 0x1

    .line 468
    .local v0, enabled:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 472
    :goto_0
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 473
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 479
    :goto_1
    return-void

    .line 476
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 477
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 469
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initUninstallButtons()V
    .locals 6

    .prologue
    const v5, 0x7f09061f

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 426
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 427
    const/4 v0, 0x1

    .line 428
    .local v0, enabled:Z
    iget-boolean v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v2, :cond_5

    .line 429
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v5, 0x7f090625

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 430
    const/4 v1, 0x0

    .line 431
    .local v1, specialDisable:Z
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 432
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v1

    .line 433
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    if-eqz v1, :cond_4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 453
    .end local v1           #specialDisable:Z
    :goto_2
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    const/4 v0, 0x0

    .line 456
    :cond_1
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 457
    if-eqz v0, :cond_2

    .line 459
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    :cond_2
    return-void

    .end local v0           #enabled:Z
    :cond_3
    move v2, v3

    .line 426
    goto :goto_0

    .restart local v0       #enabled:Z
    .restart local v1       #specialDisable:Z
    :cond_4
    move v3, v4

    .line 435
    goto :goto_1

    .line 437
    .end local v1           #specialDisable:Z
    :cond_5
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 439
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v0

    goto :goto_2

    .line 440
    :cond_6
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x80

    and-int/2addr v2, v3

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_7

    .line 445
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 446
    const/4 v0, 0x0

    goto :goto_2

    .line 448
    :cond_7
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private initiateClearUserData()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1210
    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1212
    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1213
    .local v3, packageName:Ljava/lang/String;
    const-string v5, "InstalledAppDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Clearing user data for package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/jrdsettings/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v5, :cond_0

    .line 1215
    new-instance v5, Lcom/android/jrdsettings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v5, p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/jrdsettings/applications/InstalledAppDetails;)V

    iput-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/jrdsettings/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 1230
    :cond_0
    const-string v5, "com.jrdcom.weather"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1233
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1234
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "com.jrdcom.weather.cleardata.back"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1238
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1239
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.jrdcom.weather.cleardata.send"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1240
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1257
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1242
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1244
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/jrdsettings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v3, v5}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v4

    .line 1246
    .local v4, res:Z
    if-nez v4, :cond_2

    .line 1249
    const-string v5, "InstalledAppDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldnt clear application user data for package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    const/4 v5, 0x4

    invoke-direct {p0, v5, v8}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1253
    :cond_2
    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v6, 0x7f090642

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private isThisASystemPackage()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 375
    :try_start_0
    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "android"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 376
    .local v1, sys:Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 379
    .end local v1           #sys:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 1155
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1156
    .local v2, result:I
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleared user data result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1158
    .local v1, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f090624

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1159
    if-ne v2, v6, :cond_0

    .line 1160
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleared user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mState:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/jrdsettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1163
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.mediatek.intent.action.SETTINGS_PACKAGE_DATA_CLEARED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1164
    .local v0, packageDataCleared:Landroid/content/Intent;
    const-string v3, "packageName"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1165
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1171
    .end local v0           #packageDataCleared:Landroid/content/Intent;
    :goto_0
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1172
    return-void

    .line 1168
    :cond_0
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to clear user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1189
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1190
    .local v1, result:I
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved package result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1193
    .local v0, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1194
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1195
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " successfully"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mState:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/jrdsettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1202
    :goto_0
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->refreshUi()Z

    .line 1203
    return-void

    .line 1199
    :cond_0
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to move resources , result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const/4 v2, 0x6

    invoke-direct {p0, v2, v1}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0
.end method

.method private refeshUi2SD()V
    .locals 1

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mExtStoragePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->getSdDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    .line 1696
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->refreshSizeLabel(Ljava/lang/String;)V

    .line 1697
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->initMoveButton()V

    .line 1698
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->initDataButtons()V

    .line 1699
    return-void
.end method

.method private refreshButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1175
    iget-boolean v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 1176
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 1177
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->initDataButtons()V

    .line 1178
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->initMoveButton()V

    .line 1179
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->initNotificationButton()V

    .line 1186
    :goto_0
    return-void

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v1, 0x7f09065d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1182
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1183
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1184
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 10

    .prologue
    .line 1088
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1090
    :cond_0
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastTotalSize:J

    iput-wide v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1091
    iget-boolean v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v6, :cond_1

    .line 1092
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    :cond_1
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1098
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1148
    :goto_0
    return-void

    .line 1101
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 1102
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v6, Lcom/android/jrdsettings/applications/ApplicationsState$SizeInfo;->codeSize:J

    .line 1103
    .local v2, codeSize:J
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v6, Lcom/android/jrdsettings/applications/ApplicationsState$SizeInfo;->dataSize:J

    .line 1104
    .local v4, dataSize:J
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1105
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/jrdsettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    add-long/2addr v2, v6

    .line 1106
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/jrdsettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v4, v6

    .line 1117
    :cond_3
    :goto_1
    iget-wide v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastCodeSize:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_4

    .line 1118
    iput-wide v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1119
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1121
    :cond_4
    iget-wide v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastDataSize:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_5

    .line 1122
    iput-wide v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 1123
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1125
    :cond_5
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/jrdsettings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    iget-object v8, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/jrdsettings/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    add-long v0, v6, v8

    .line 1126
    .local v0, cacheSize:J
    iget-wide v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastCacheSize:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_6

    .line 1127
    iput-wide v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 1128
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1130
    :cond_6
    iget-wide v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastTotalSize:J

    iget-object v8, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    .line 1131
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 1132
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v7, v8}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1135
    :cond_7
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/jrdsettings/applications/ApplicationsState$SizeInfo;->dataSize:J

    iget-object v8, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/jrdsettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mCanClearData:Z

    if-nez v6, :cond_b

    .line 1136
    :cond_8
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1141
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_c

    .line 1142
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1108
    .end local v0           #cacheSize:J
    :cond_9
    iget-wide v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    iget-object v8, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/jrdsettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    .line 1109
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/jrdsettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iput-wide v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 1110
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/jrdsettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    invoke-direct {p0, v7, v8}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    :cond_a
    iget-wide v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    iget-object v8, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/jrdsettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 1113
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/jrdsettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    iput-wide v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 1114
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/jrdsettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    invoke-direct {p0, v7, v8}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1138
    .restart local v0       #cacheSize:J
    :cond_b
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1139
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1144
    :cond_c
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1145
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private refreshSizeLabel(Ljava/lang/String;)V
    .locals 6
    .parameter "sdDesc"

    .prologue
    .line 1666
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09061b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1668
    .local v0, appSizeLabel:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09061d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1671
    .local v1, dataSizeLabel:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_0

    .line 1672
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1673
    .local v2, labelStr1:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1678
    .local v3, labelStr2:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mExternalCodeSizeLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1679
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mExternalDataSizeLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1680
    return-void

    .line 1675
    .end local v2           #labelStr1:Ljava/lang/String;
    .end local v3           #labelStr2:Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1676
    .restart local v2       #labelStr1:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #labelStr2:Ljava/lang/String;
    goto :goto_0
.end method

.method private refreshUi()Z
    .locals 46

    .prologue
    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v41, v0

    const-string v42, "/data"

    invoke-virtual/range {v41 .. v42}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/os/StatFs;->getBlockSize()I

    move-result v43

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v43, v0

    mul-long v24, v41, v43

    .line 798
    .local v24, mFreeMem:J
    const-string v41, "InstalledAppDetails"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "mFreeMem = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-wide/32 v43, 0x100000

    div-long v43, v24, v43

    invoke-virtual/range {v42 .. v44}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-wide/32 v41, 0x100000

    div-long v41, v24, v41

    const-wide/16 v43, 0xf

    cmp-long v41, v41, v43

    if-gez v41, :cond_0

    .line 800
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mIsLowMem:Z

    .line 805
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    move/from16 v41, v0

    if-eqz v41, :cond_1

    .line 806
    const/16 v41, 0x1

    .line 1033
    :goto_1
    return v41

    .line 802
    :cond_0
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mIsLowMem:Z

    goto :goto_0

    .line 808
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    move-result-object v26

    .line 811
    .local v26, packageName:Ljava/lang/String;
    if-nez v26, :cond_2

    .line 812
    const/16 v41, 0x0

    goto :goto_1

    .line 816
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    move-object/from16 v41, v0

    if-nez v41, :cond_3

    .line 817
    const/16 v41, 0x0

    goto :goto_1

    .line 820
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v41, v0

    if-nez v41, :cond_4

    .line 821
    const/16 v41, 0x0

    goto :goto_1

    .line 825
    :cond_4
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v31, prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .local v23, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v23

    move-object/from16 v2, v31

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 832
    const/16 v21, 0x0

    .line 834
    .local v21, hasUsbDefaults:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    move-object/from16 v41, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v42

    move-object/from16 v0, v41

    move-object/from16 v1, v26

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    .line 838
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v20

    .line 841
    .local v20, hasBindAppWidgetPermission:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v41, v0

    const v42, 0x7f0b00c6

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 842
    .local v14, autoLaunchTitleView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v41, v0

    const v42, 0x7f0b00c7

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 843
    .local v15, autoLaunchView:Landroid/widget/TextView;
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v41

    if-gtz v41, :cond_5

    if-eqz v21, :cond_7

    :cond_5
    const/4 v13, 0x1

    .line 844
    .local v13, autoLaunchEnabled:Z
    :goto_3
    if-nez v13, :cond_8

    if-nez v20, :cond_8

    .line 845
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 884
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    move-object/from16 v41, v0

    if-eqz v41, :cond_12

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    move-object/from16 v41, v0

    const/high16 v42, 0x1000

    invoke-virtual/range {v41 .. v42}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    move-object/from16 v41, v0

    const/high16 v42, 0x20

    invoke-virtual/range {v41 .. v42}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 890
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mIsLowMem:Z

    move/from16 v41, v0

    if-eqz v41, :cond_11

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 903
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v41

    const-string v42, "activity"

    invoke-virtual/range {v41 .. v42}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 905
    .local v9, am:Landroid/app/ActivityManager;
    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v17

    .line 916
    .local v17, compatMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    move-object/from16 v41, v0

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->setVisibility(I)V

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v41, v0

    const v42, 0x7f0b00cf

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    .line 921
    .local v28, permsView:Landroid/widget/LinearLayout;
    new-instance v11, Landroid/widget/AppSecurityPermissions;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v26

    invoke-direct {v11, v0, v1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 922
    .local v11, asp:Landroid/widget/AppSecurityPermissions;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v32

    .line 926
    .local v32, premiumSmsPermission:I
    invoke-virtual {v11}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v41

    if-gtz v41, :cond_6

    if-eqz v32, :cond_13

    .line 928
    :cond_6
    const/16 v41, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 933
    :goto_6
    const v41, 0x7f0b00d0

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 935
    .local v35, securityBillingDesc:Landroid/widget/TextView;
    const v41, 0x7f0b00d1

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/LinearLayout;

    .line 937
    .local v36, securityBillingList:Landroid/widget/LinearLayout;
    if-eqz v32, :cond_14

    .line 939
    const/16 v41, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 940
    const/16 v41, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 941
    const v41, 0x7f0b00d2

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/Spinner;

    .line 943
    .local v38, spinner:Landroid/widget/Spinner;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v41

    const v42, 0x7f0a0048

    const v43, 0x1090008

    invoke-static/range {v41 .. v43}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v6

    .line 946
    .local v6, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v41, 0x1090009

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 947
    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 949
    add-int/lit8 v41, v32, -0x1

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 950
    new-instance v41, Lcom/android/jrdsettings/applications/InstalledAppDetails$PremiumSmsSelectionListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    move-object/from16 v42, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v26

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/applications/InstalledAppDetails$PremiumSmsSelectionListener;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/ISms;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 958
    .end local v6           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v38           #spinner:Landroid/widget/Spinner;
    :goto_7
    invoke-virtual {v11}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v41

    if-lez v41, :cond_17

    .line 960
    const v41, 0x7f0b00d4

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/LinearLayout;

    .line 962
    .local v37, securityList:Landroid/widget/LinearLayout;
    invoke-virtual/range {v37 .. v37}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 963
    invoke-virtual {v11}, Landroid/widget/AppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v41

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v27

    .line 967
    .local v27, packages:[Ljava/lang/String;
    if-eqz v27, :cond_17

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v41, v0

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_17

    .line 968
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 969
    .local v30, pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/16 v22, 0x0

    .local v22, i:I
    :goto_8
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v41, v0

    move/from16 v0, v22

    move/from16 v1, v41

    if-ge v0, v1, :cond_16

    .line 970
    aget-object v29, v27, v22

    .line 971
    .local v29, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_15

    .line 969
    :goto_9
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 835
    .end local v9           #am:Landroid/app/ActivityManager;
    .end local v11           #asp:Landroid/widget/AppSecurityPermissions;
    .end local v13           #autoLaunchEnabled:Z
    .end local v14           #autoLaunchTitleView:Landroid/widget/TextView;
    .end local v15           #autoLaunchView:Landroid/widget/TextView;
    .end local v17           #compatMode:I
    .end local v20           #hasBindAppWidgetPermission:Z
    .end local v22           #i:I
    .end local v27           #packages:[Ljava/lang/String;
    .end local v28           #permsView:Landroid/widget/LinearLayout;
    .end local v29           #pkg:Ljava/lang/String;
    .end local v30           #pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v32           #premiumSmsPermission:I
    .end local v35           #securityBillingDesc:Landroid/widget/TextView;
    .end local v36           #securityBillingList:Landroid/widget/LinearLayout;
    .end local v37           #securityList:Landroid/widget/LinearLayout;
    :catch_0
    move-exception v19

    .line 836
    .local v19, e:Landroid/os/RemoteException;
    const-string v41, "InstalledAppDetails"

    const-string v42, "mUsbManager.hasDefaults"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 843
    .end local v19           #e:Landroid/os/RemoteException;
    .restart local v14       #autoLaunchTitleView:Landroid/widget/TextView;
    .restart local v15       #autoLaunchView:Landroid/widget/TextView;
    .restart local v20       #hasBindAppWidgetPermission:Z
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 847
    .restart local v13       #autoLaunchEnabled:Z
    :cond_8
    if-eqz v20, :cond_d

    if-eqz v13, :cond_d

    const/16 v40, 0x1

    .line 849
    .local v40, useBullets:Z
    :goto_a
    if-eqz v20, :cond_e

    .line 850
    const v41, 0x7f090612

    move/from16 v0, v41

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 855
    :goto_b
    const/16 v39, 0x0

    .line 856
    .local v39, text:Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f08000d

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 858
    .local v16, bulletIndent:I
    if-eqz v13, :cond_a

    .line 859
    const v41, 0x7f090626

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 860
    .local v12, autoLaunchEnableText:Ljava/lang/CharSequence;
    new-instance v34, Landroid/text/SpannableString;

    move-object/from16 v0, v34

    invoke-direct {v0, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 861
    .local v34, s:Landroid/text/SpannableString;
    if-eqz v40, :cond_9

    .line 862
    new-instance v41, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v41

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v42, 0x0

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v43

    const/16 v44, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    move/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 864
    :cond_9
    if-nez v39, :cond_f

    const/16 v41, 0x2

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aput-object v34, v41, v42

    const/16 v42, 0x1

    const-string v43, "\n"

    aput-object v43, v41, v42

    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v39

    .line 867
    .end local v12           #autoLaunchEnableText:Ljava/lang/CharSequence;
    .end local v34           #s:Landroid/text/SpannableString;
    :cond_a
    :goto_c
    if-eqz v20, :cond_c

    .line 868
    const v41, 0x7f090627

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 870
    .local v8, alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    new-instance v34, Landroid/text/SpannableString;

    move-object/from16 v0, v34

    invoke-direct {v0, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 871
    .restart local v34       #s:Landroid/text/SpannableString;
    if-eqz v40, :cond_b

    .line 872
    new-instance v41, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v41

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v42, 0x0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v43

    const/16 v44, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    move/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 875
    :cond_b
    if-nez v39, :cond_10

    const/16 v41, 0x2

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aput-object v34, v41, v42

    const/16 v42, 0x1

    const-string v43, "\n"

    aput-object v43, v41, v42

    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v39

    .line 878
    .end local v8           #alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    .end local v34           #s:Landroid/text/SpannableString;
    :cond_c
    :goto_d
    move-object/from16 v0, v39

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 847
    .end local v16           #bulletIndent:I
    .end local v39           #text:Ljava/lang/CharSequence;
    .end local v40           #useBullets:Z
    :cond_d
    const/16 v40, 0x0

    goto/16 :goto_a

    .line 852
    .restart local v40       #useBullets:Z
    :cond_e
    const v41, 0x7f090611

    move/from16 v0, v41

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_b

    .line 864
    .restart local v12       #autoLaunchEnableText:Ljava/lang/CharSequence;
    .restart local v16       #bulletIndent:I
    .restart local v34       #s:Landroid/text/SpannableString;
    .restart local v39       #text:Ljava/lang/CharSequence;
    :cond_f
    const/16 v41, 0x4

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aput-object v39, v41, v42

    const/16 v42, 0x1

    const-string v43, "\n"

    aput-object v43, v41, v42

    const/16 v42, 0x2

    aput-object v34, v41, v42

    const/16 v42, 0x3

    const-string v43, "\n"

    aput-object v43, v41, v42

    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v39

    goto/16 :goto_c

    .line 875
    .end local v12           #autoLaunchEnableText:Ljava/lang/CharSequence;
    .restart local v8       #alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    :cond_10
    const/16 v41, 0x4

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aput-object v39, v41, v42

    const/16 v42, 0x1

    const-string v43, "\n"

    aput-object v43, v41, v42

    const/16 v42, 0x2

    aput-object v34, v41, v42

    const/16 v42, 0x3

    const-string v43, "\n"

    aput-object v43, v41, v42

    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v39

    goto :goto_d

    .line 893
    .end local v8           #alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    .end local v16           #bulletIndent:I
    .end local v34           #s:Landroid/text/SpannableString;
    .end local v39           #text:Ljava/lang/CharSequence;
    .end local v40           #useBullets:Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 898
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_5

    .line 930
    .restart local v9       #am:Landroid/app/ActivityManager;
    .restart local v11       #asp:Landroid/widget/AppSecurityPermissions;
    .restart local v17       #compatMode:I
    .restart local v28       #permsView:Landroid/widget/LinearLayout;
    .restart local v32       #premiumSmsPermission:I
    :cond_13
    const/16 v41, 0x8

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 954
    .restart local v35       #securityBillingDesc:Landroid/widget/TextView;
    .restart local v36       #securityBillingList:Landroid/widget/LinearLayout;
    :cond_14
    const/16 v41, 0x8

    move-object/from16 v0, v35

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 955
    const/16 v41, 0x8

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 975
    .restart local v22       #i:I
    .restart local v27       #packages:[Ljava/lang/String;
    .restart local v29       #pkg:Ljava/lang/String;
    .restart local v30       #pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v37       #securityList:Landroid/widget/LinearLayout;
    :cond_15
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v29

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 976
    .local v7, ainfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v41

    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_9

    .line 977
    .end local v7           #ainfo:Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v41

    goto/16 :goto_9

    .line 980
    .end local v29           #pkg:Ljava/lang/String;
    :cond_16
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 981
    .local v5, N:I
    if-lez v5, :cond_17

    .line 982
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    .line 984
    .local v33, res:Landroid/content/res/Resources;
    const/16 v41, 0x1

    move/from16 v0, v41

    if-ne v5, v0, :cond_19

    .line 985
    const/16 v41, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/CharSequence;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 998
    .local v10, appListStr:Ljava/lang/String;
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v41, v0

    const v42, 0x7f0b00d3

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1000
    .local v18, descr:Landroid/widget/TextView;
    const v41, 0x7f09064f

    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v44

    aput-object v44, v42, v43

    const/16 v43, 0x1

    aput-object v10, v42, v43

    move-object/from16 v0, v33

    move/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    .end local v5           #N:I
    .end local v10           #appListStr:Ljava/lang/String;
    .end local v18           #descr:Landroid/widget/TextView;
    .end local v22           #i:I
    .end local v27           #packages:[Ljava/lang/String;
    .end local v30           #pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v33           #res:Landroid/content/res/Resources;
    .end local v37           #securityList:Landroid/widget/LinearLayout;
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 1008
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->refreshButtons()V

    .line 1009
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 1011
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mInitialized:Z

    move/from16 v41, v0

    if-nez v41, :cond_1e

    .line 1013
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mInitialized:Z

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v41, v0

    const/high16 v42, 0x80

    and-int v41, v41, v42

    if-nez v41, :cond_1d

    const/16 v41, 0x1

    :goto_f
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mShowUninstalled:Z

    .line 1033
    :cond_18
    const/16 v41, 0x1

    goto/16 :goto_1

    .line 986
    .restart local v5       #N:I
    .restart local v22       #i:I
    .restart local v27       #packages:[Ljava/lang/String;
    .restart local v30       #pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v33       #res:Landroid/content/res/Resources;
    .restart local v37       #securityList:Landroid/widget/LinearLayout;
    :cond_19
    const/16 v41, 0x2

    move/from16 v0, v41

    if-ne v5, v0, :cond_1a

    .line 987
    const v41, 0x7f090650

    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    aput-object v44, v42, v43

    const/16 v43, 0x1

    const/16 v44, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, v33

    move/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #appListStr:Ljava/lang/String;
    goto/16 :goto_e

    .line 990
    .end local v10           #appListStr:Ljava/lang/String;
    :cond_1a
    add-int/lit8 v41, v5, -0x2

    move-object/from16 v0, v30

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/CharSequence;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 991
    .restart local v10       #appListStr:Ljava/lang/String;
    add-int/lit8 v22, v5, -0x3

    :goto_10
    if-ltz v22, :cond_1c

    .line 992
    if-nez v22, :cond_1b

    const v41, 0x7f090652

    :goto_11
    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    aput-object v44, v42, v43

    const/16 v43, 0x1

    aput-object v10, v42, v43

    move-object/from16 v0, v33

    move/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 991
    add-int/lit8 v22, v22, -0x1

    goto :goto_10

    .line 992
    :cond_1b
    const v41, 0x7f090653

    goto :goto_11

    .line 995
    :cond_1c
    const v41, 0x7f090651

    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aput-object v10, v42, v43

    const/16 v43, 0x1

    add-int/lit8 v44, v5, -0x1

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, v33

    move/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_e

    .line 1014
    .end local v5           #N:I
    .end local v10           #appListStr:Ljava/lang/String;
    .end local v22           #i:I
    .end local v27           #packages:[Ljava/lang/String;
    .end local v30           #pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v33           #res:Landroid/content/res/Resources;
    .end local v37           #securityList:Landroid/widget/LinearLayout;
    :cond_1d
    const/16 v41, 0x0

    goto/16 :goto_f

    .line 1019
    :cond_1e
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v43, 0x2200

    invoke-virtual/range {v41 .. v43}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 1022
    .restart local v7       #ainfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mShowUninstalled:Z

    move/from16 v41, v0

    if-nez v41, :cond_18

    .line 1026
    iget v0, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v41, v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/high16 v42, 0x80

    and-int v41, v41, v42

    if-eqz v41, :cond_1f

    const/16 v41, 0x1

    goto/16 :goto_1

    :cond_1f
    const/16 v41, 0x0

    goto/16 :goto_1

    .line 1028
    .end local v7           #ainfo:Landroid/content/pm/ApplicationInfo;
    :catch_2
    move-exception v19

    .line 1029
    .local v19, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v41, 0x0

    goto/16 :goto_1
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .parameter "title"
    .parameter "autoLaunchView"

    .prologue
    .line 1073
    const v0, 0x7f090611

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1074
    const v0, 0x7f090628

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1076
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1077
    return-void
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 759
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 760
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 761
    .local v3, packageName:Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_3

    .line 762
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 764
    .local v2, intent:Landroid/content/Intent;
    :goto_1
    if-eqz v2, :cond_3

    .line 766
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_2

    .line 767
    const-string v4, "InstalledAppDetails"

    const-string v6, "intent.getData() == null"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 791
    .end local v2           #intent:Landroid/content/Intent;
    :goto_2
    return-object v4

    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    move-object v3, v5

    .line 760
    goto :goto_0

    .line 762
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_1
    const-string v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object v2, v4

    goto :goto_1

    .line 771
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 775
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mState:Lcom/android/jrdsettings/applications/ApplicationsState;

    invoke-virtual {v4, v3}, Lcom/android/jrdsettings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    .line 776
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_4

    .line 779
    :try_start_0
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x2240

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-object v4, v3

    .line 791
    goto :goto_2

    .line 783
    :catch_0
    move-exception v1

    .line 784
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "InstalledAppDetails"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 787
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    const-string v4, "InstalledAppDetails"

    const-string v6, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iput-object v5, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_3
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 9
    .parameter "pkgInfo"

    .prologue
    const/4 v8, 0x0

    .line 667
    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v4, 0x7f0b00af

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 668
    .local v0, appSnippet:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v8, v3, v8, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 670
    const v3, 0x7f0b0075

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 671
    .local v1, icon:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mState:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v3, v4}, Lcom/android/jrdsettings/applications/ApplicationsState;->ensureIcon(Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;)V

    .line 672
    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 674
    const v3, 0x7f0b0120

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 675
    .local v2, label:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    const v3, 0x7f0b0122

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    .line 679
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 680
    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 681
    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090659

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    :goto_0
    return-void

    .line 684
    :cond_0
    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .parameter "finish"
    .parameter "appChanged"

    .prologue
    .line 1081
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1082
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1083
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 1084
    .local v1, pa:Landroid/preference/PreferenceActivity;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 1085
    return-void
.end method

.method private setNotificationsEnabled(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1509
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1510
    .local v3, packageName:Ljava/lang/String;
    const-string v6, "notification"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 1513
    .local v2, nm:Landroid/app/INotificationManager;
    :try_start_0
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 1514
    .local v0, enable:Z
    invoke-interface {v2, v3, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;Z)V

    .line 1516
    if-eq v0, p1, :cond_0

    .line 1517
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->checkChangedFlag:Z

    .line 1518
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v6, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1519
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->checkChangedFlag:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1524
    .end local v0           #enable:Z
    :cond_0
    :goto_0
    return-void

    .line 1521
    :catch_0
    move-exception v1

    .line 1522
    .local v1, ex:Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method private showDialogInner(II)V
    .locals 4
    .parameter "id"
    .parameter "moveErrorCode"

    .prologue
    .line 1260
    invoke-static {p1, p2}, Lcom/android/jrdsettings/applications/InstalledAppDetails$MyAlertDialogFragment;->newInstance(II)Lcom/android/jrdsettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 1261
    .local v0, newFragment:Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1262
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1263
    return-void
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 4
    .parameter "packageName"
    .parameter "allUsers"
    .parameter "andDisable"

    .prologue
    .line 1429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1430
    .local v0, packageURI:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1431
    .local v1, uninstallIntent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1432
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1433
    iput-boolean p3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 1434
    return-void
.end method

.method private updateForceStopButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1457
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1458
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 643
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 644
    if-ne p1, v5, :cond_1

    .line 645
    iget-boolean v1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v1, :cond_0

    .line 646
    iput-boolean v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 648
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 651
    .local v0, ainfo:Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 652
    new-instance v2, Lcom/android/jrdsettings/applications/InstalledAppDetails$DisableChanger;

    iget-object v1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v1, v3}, Lcom/android/jrdsettings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/jrdsettings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    .end local v0           #ainfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 660
    invoke-direct {p0, v5, v5}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 663
    :cond_1
    return-void

    .line 656
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 725
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1626
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1627
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1629
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_1

    .line 1630
    invoke-virtual {v0, v1, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1645
    :cond_0
    :goto_0
    return-void

    .line 1631
    :cond_1
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_3

    .line 1632
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 1634
    :cond_3
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-ne p1, v4, :cond_0

    .line 1636
    iget-boolean v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->checkChangedFlag:Z

    if-nez v4, :cond_0

    .line 1639
    if-nez p2, :cond_4

    .line 1640
    const/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1642
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 1542
    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1543
    .local v5, packageName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_5

    .line 1544
    const-string v7, "InstalledAppDetails"

    const-string v8, "click uninstall button"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iget-boolean v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v7, :cond_1

    .line 1546
    invoke-direct {p0, v4, v9}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1622
    :cond_0
    :goto_0
    return-void

    .line 1548
    :cond_1
    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    .line 1549
    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v7, :cond_2

    .line 1550
    const/4 v6, 0x7

    invoke-direct {p0, v6, v9}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1552
    :cond_2
    new-instance v7, Lcom/android/jrdsettings/applications/InstalledAppDetails$DisableChanger;

    iget-object v8, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/jrdsettings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/jrdsettings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/Object;

    aput-object v6, v8, v9

    invoke-virtual {v7, v8}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1556
    :cond_3
    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x80

    and-int/2addr v7, v8

    if-nez v7, :cond_4

    .line 1557
    invoke-direct {p0, v5, v6, v9}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1559
    :cond_4
    invoke-direct {p0, v5, v9, v9}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1562
    :cond_5
    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_6

    .line 1563
    const/16 v6, 0x9

    invoke-direct {p0, v6, v9}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1564
    :cond_6
    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_7

    .line 1565
    const-string v6, "InstalledAppDetails"

    const-string v7, "click activiies button"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1568
    :try_start_0
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-interface {v6, v5, v7}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1572
    :goto_1
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v6, v5, v9}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 1573
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v7, 0x7f0b00c6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1575
    .local v0, autoLaunchTitleView:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v7, 0x7f0b00c7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1576
    .local v1, autoLaunchView:Landroid/widget/TextView;
    invoke-direct {p0, v0, v1}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 1569
    .end local v0           #autoLaunchTitleView:Landroid/widget/TextView;
    .end local v1           #autoLaunchView:Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 1570
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "InstalledAppDetails"

    const-string v7, "mUsbManager.clearDefaults"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1577
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_7
    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_9

    .line 1578
    const-string v7, "InstalledAppDetails"

    const-string v8, "click clear data button"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 1580
    invoke-static {}, Lcom/android/jrdsettings/Utils;->isMonkeyRunning()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1581
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1582
    .local v3, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1584
    invoke-virtual {p0, v3, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1587
    .end local v3           #intent:Landroid/content/Intent;
    :cond_8
    invoke-direct {p0, v6, v9}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1589
    :cond_9
    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_b

    .line 1590
    const-string v6, "InstalledAppDetails"

    const-string v7, "click clear cache button"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/jrdsettings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v6, :cond_a

    .line 1593
    new-instance v6, Lcom/android/jrdsettings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v6, p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/jrdsettings/applications/InstalledAppDetails;)V

    iput-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/jrdsettings/applications/InstalledAppDetails$ClearCacheObserver;

    .line 1595
    :cond_a
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/jrdsettings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    .line 1596
    :cond_b
    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_c

    .line 1597
    const-string v6, "InstalledAppDetails"

    const-string v7, "click force stop button"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    const/4 v6, 0x5

    invoke-direct {p0, v6, v9}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1600
    :cond_c
    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_f

    .line 1601
    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/jrdsettings/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v7, :cond_d

    .line 1602
    new-instance v7, Lcom/android/jrdsettings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v7, p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/jrdsettings/applications/InstalledAppDetails;)V

    iput-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/jrdsettings/applications/InstalledAppDetails$PackageMoveObserver;

    .line 1604
    :cond_d
    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x4

    and-int/2addr v7, v8

    if-eqz v7, :cond_e

    move v4, v6

    .line 1606
    .local v4, moveFlags:I
    :cond_e
    const-string v7, "InstalledAppDetails"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "click move app button , and the move flag is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iput-boolean v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1608
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->refreshButtons()V

    .line 1609
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/jrdsettings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v6, v7, v8, v4}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0

    .line 1610
    .end local v4           #moveFlags:I
    :cond_f
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_0

    .line 1611
    const-string v6, "InstalledAppDetails"

    const-string v7, "click launch button"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    :try_start_1
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    if-eqz v6, :cond_0

    .line 1614
    iget-object v6, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1616
    :catch_1
    move-exception v2

    .line 1617
    .local v2, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f090018

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 484
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 486
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/jrdsettings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/jrdsettings/applications/ApplicationsState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mState:Lcom/android/jrdsettings/applications/ApplicationsState;

    .line 487
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mState:Lcom/android/jrdsettings/applications/ApplicationsState;

    invoke-virtual {v2, p0}, Lcom/android/jrdsettings/applications/ApplicationsState;->newSession(Lcom/android/jrdsettings/applications/ApplicationsState$Callbacks;)Lcom/android/jrdsettings/applications/ApplicationsState$Session;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSession:Lcom/android/jrdsettings/applications/ApplicationsState$Session;

    .line 488
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 489
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    .line 490
    const-string v2, "usb"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 491
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 492
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 493
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 494
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    .line 496
    new-instance v2, Lcom/android/jrdsettings/applications/CanBeOnSdCardChecker;

    invoke-direct {v2}, Lcom/android/jrdsettings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/jrdsettings/applications/CanBeOnSdCardChecker;

    .line 498
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSession:Lcom/android/jrdsettings/applications/ApplicationsState$Session;

    invoke-virtual {v2}, Lcom/android/jrdsettings/applications/ApplicationsState$Session;->resume()V

    .line 500
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 502
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 504
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 505
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 506
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mExtStoragePath:Ljava/lang/String;

    .line 507
    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mExtStoragePath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->getSdDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    .line 510
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 511
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "com.mediatek.SD_SWAP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mDycSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 523
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 608
    const v0, 0x7f090620

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 610
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f0b022a

    const v8, 0x7f0b0229

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 538
    const v4, 0x7f04004e

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 539
    .local v3, view:Landroid/view/View;
    invoke-static {p2, v3, v3, v6}, Lcom/android/jrdsettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 541
    iput-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    .line 542
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090656

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    .line 545
    const v4, 0x7f0b00b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    .line 546
    const v4, 0x7f0b00b7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    .line 547
    const v4, 0x7f0b00bc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    .line 548
    const v4, 0x7f0b00b9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    .line 549
    const v4, 0x7f0b00be

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    .line 551
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 552
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 553
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 558
    :cond_0
    const v4, 0x7f0b00b8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mExternalCodeSizeLabel:Landroid/widget/TextView;

    .line 559
    const v4, 0x7f0b00bd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mExternalDataSizeLabel:Landroid/widget/TextView;

    .line 560
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->refreshSizeLabel(Ljava/lang/String;)V

    .line 564
    const v4, 0x7f0b00b0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 565
    .local v0, btnPanel:Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 566
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v5, 0x7f090619

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 567
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 568
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 571
    const v4, 0x7f0b00b1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    .line 572
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 573
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    .line 574
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 577
    const v4, 0x7f0b00bf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    .line 578
    const v4, 0x7f0b00c0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    .line 581
    const v4, 0x7f0b00c4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    .line 582
    const v4, 0x7f0b00c5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 584
    const v4, 0x7f0b00c8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 587
    const v4, 0x7f0b00cc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    .line 588
    const v4, 0x7f0b00cd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    .line 589
    const v4, 0x7f0b00ce

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    .line 591
    const v4, 0x7f0b00b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CompoundButton;

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    .line 593
    new-instance v4, Landroid/os/StatFs;

    const-string v5, "/data"

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mDataFileStats:Landroid/os/StatFs;

    .line 596
    const v4, 0x7f0b00cb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    .line 597
    const v4, 0x7f0b00c9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 598
    .local v1, c:Landroid/view/View;
    const v4, 0x7f0b00ca

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 599
    .local v2, t:Landroid/view/View;
    iget-object v4, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 600
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 601
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 603
    return-object v3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 706
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 708
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 712
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mDycSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 721
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 633
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 634
    .local v0, menuId:I
    if-ne v0, v1, :cond_0

    .line 635
    iget-object v3, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 638
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 729
    return-void
.end method

.method public onPackageListChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 734
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSession:Lcom/android/jrdsettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/jrdsettings/applications/ApplicationsState$Session;->resume()V

    .line 737
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    invoke-direct {p0, v1, v1}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 741
    :cond_0
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 752
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 700
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 701
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSession:Lcom/android/jrdsettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/jrdsettings/applications/ApplicationsState$Session;->pause()V

    .line 702
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 614
    const/4 v0, 0x1

    .line 615
    .local v0, showIt:Z
    iget-boolean v1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_1

    .line 616
    const/4 v0, 0x0

    .line 628
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 629
    return-void

    .line 617
    :cond_1
    iget-object v1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_2

    .line 618
    const/4 v0, 0x0

    goto :goto_0

    .line 619
    :cond_2
    iget-object v1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 620
    const/4 v0, 0x0

    goto :goto_0

    .line 621
    :cond_3
    iget-object v1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 622
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 623
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_6

    .line 624
    const/4 v0, 0x0

    goto :goto_0

    .line 625
    :cond_6
    iget-object v1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 626
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 745
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 690
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 692
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails;->mSession:Lcom/android/jrdsettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/jrdsettings/applications/ApplicationsState$Session;->resume()V

    .line 693
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    invoke-direct {p0, v1, v1}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 696
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .parameter "running"

    .prologue
    .line 756
    return-void
.end method
