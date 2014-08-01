.class public Lcom/android/jrdsettings/applications/ManageApplications;
.super Landroid/app/Fragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/jrdsettings/applications/AppClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/jrdsettings/applications/ManageApplications$MyPagerAdapter;,
        Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    }
.end annotation


# static fields
.field public static final APP_CHG:Ljava/lang/String; = "chg"

.field static final DEBUG:Z = false

.field private static final EXTRA_DEFAULT_LIST_TYPE:Ljava/lang/String; = "defaultListType"

.field private static final EXTRA_RESET_DIALOG:Ljava/lang/String; = "resetDialog"

.field private static final EXTRA_SHOW_BACKGROUND:Ljava/lang/String; = "showBackground"

.field private static final EXTRA_SORT_ORDER:Ljava/lang/String; = "sortOrder"

.field public static final FILTER_APPS_ALL:I = 0x0

.field public static final FILTER_APPS_SDCARD:I = 0x2

.field public static final FILTER_APPS_THIRD_PARTY:I = 0x1

.field private static final INSTALLED_APP_DETAILS:I = 0x1

.field static final LIST_TYPE_ALL:I = 0x3

.field static final LIST_TYPE_DOWNLOADED:I = 0x0

.field static final LIST_TYPE_RUNNING:I = 0x1

.field static final LIST_TYPE_SDCARD:I = 0x2

.field private static final MENU_OPTIONS_BASE:I = 0x0

.field public static final RESET_APP_PREFERENCES:I = 0x8

.field public static final SHOW_BACKGROUND_PROCESSES:I = 0x7

.field public static final SHOW_RUNNING_SERVICES:I = 0x6

.field public static final SIZE_EXTERNAL:I = 0x2

.field public static final SIZE_INTERNAL:I = 0x1

.field public static final SIZE_TOTAL:I = 0x0

.field public static final SORT_ORDER_ALPHA:I = 0x4

.field public static final SORT_ORDER_SIZE:I = 0x5

.field static final TAG:Ljava/lang/String; = "ManageApplications"

.field private static sSdDescription:Ljava/lang/String;


# instance fields
.field private mActivityResumed:Z

.field private mApplicationsState:Lcom/android/jrdsettings/applications/ApplicationsState;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private final mContainerConnection:Landroid/content/ServiceConnection;

.field private volatile mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContentContainer:Landroid/view/ViewGroup;

.field mCurTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDefaultListType:I

.field private mExtStoragePath:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mOptionsMenu:Landroid/view/Menu;

.field mResetDialog:Landroid/app/AlertDialog;

.field private mRootView:Landroid/view/View;

.field private mShowBackground:Z

.field private mSortOrder:I

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 178
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mSortOrder:I

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mShowBackground:Z

    .line 465
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mDefaultListType:I

    .line 1257
    new-instance v0, Lcom/android/jrdsettings/applications/ManageApplications$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/applications/ManageApplications$2;-><init>(Lcom/android/jrdsettings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/android/jrdsettings/applications/ManageApplications;->sSdDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/applications/ManageApplications;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/jrdsettings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/jrdsettings/applications/ManageApplications;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mActivityResumed:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/jrdsettings/applications/ManageApplications;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mSortOrder:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/jrdsettings/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/jrdsettings/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/applications/ManageApplications;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method private getSdDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "path"

    .prologue
    .line 1274
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 1275
    .local v3, volumes:[Landroid/os/storage/StorageVolume;
    array-length v1, v3

    .line 1276
    .local v1, len:I
    const-string v2, ""

    .line 1277
    .local v2, sdDesc:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1278
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1279
    aget-object v4, v3, v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1285
    :cond_0
    return-object v2

    .line 1282
    :cond_1
    const-string v2, "error"

    .line 1277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 1019
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1020
    .local v2, args:Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v3, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1023
    .local v0, pa:Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/jrdsettings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09060f

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1025
    return-void
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .prologue
    .line 1098
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1099
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1100
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090633

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1101
    const v1, 0x7f090634

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1102
    const v1, 0x7f090635

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1103
    const v1, 0x7f090318

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1104
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1105
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1107
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1001
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mApplicationsState:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1004
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1120
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1121
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 1123
    .local v3, nm:Landroid/app/INotificationManager;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    .line 1124
    .local v4, npm:Landroid/net/NetworkPolicyManager;
    new-instance v5, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1125
    .local v5, handler:Landroid/os/Handler;
    new-instance v0, Lcom/android/jrdsettings/applications/ManageApplications$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/jrdsettings/applications/ManageApplications$1;-><init>(Lcom/android/jrdsettings/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1190
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #nm:Landroid/app/INotificationManager;
    .end local v4           #npm:Landroid/net/NetworkPolicyManager;
    .end local v5           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v13, 0x1

    .line 821
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 823
    invoke-virtual {p0, v13}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 825
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/jrdsettings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/jrdsettings/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mApplicationsState:Lcom/android/jrdsettings/applications/ApplicationsState;

    .line 826
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 827
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 828
    .local v7, action:Ljava/lang/String;
    const/4 v10, 0x0

    .line 829
    .local v10, defaultListType:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "classname"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 831
    .local v8, className:Ljava/lang/String;
    :goto_0
    if-nez v8, :cond_0

    .line 832
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 834
    :cond_0
    const-class v1, Lcom/android/jrdsettings/Settings$RunningServicesActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".RunningServices"

    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 836
    :cond_1
    const/4 v10, 0x1

    .line 847
    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    .line 848
    const-string v1, "sortOrder"

    iget v2, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mSortOrder:I

    .line 849
    const-string v1, "defaultListType"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 850
    .local v12, tmp:I
    if-eq v12, v3, :cond_3

    move v10, v12

    .line 851
    :cond_3
    const-string v1, "showBackground"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mShowBackground:Z

    .line 854
    .end local v12           #tmp:I
    :cond_4
    iput v10, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mDefaultListType:I

    .line 856
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/jrdsettings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    .line 858
    .local v9, containerIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v9, v2, v13}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 860
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090657

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 861
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090656

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 864
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "storage"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 865
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mExtStoragePath:Ljava/lang/String;

    .line 866
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mExtStoragePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/applications/ManageApplications;->getSdDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/jrdsettings/applications/ManageApplications;->sSdDescription:Ljava/lang/String;

    .line 869
    new-instance v0, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mApplicationsState:Lcom/android/jrdsettings/applications/ApplicationsState;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f09063a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/jrdsettings/applications/ManageApplications;Lcom/android/jrdsettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/jrdsettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 872
    .local v0, tab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    const-string v1, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Environment.isExternalStorageEmulated() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FeatureOption.MTK_2SDCARD_SWAP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/jrdsettings/Utils;->isExSdcardInserted()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 878
    const-string v1, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add tab "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/jrdsettings/applications/ManageApplications;->sSdDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    new-instance v0, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    .end local v0           #tab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mApplicationsState:Lcom/android/jrdsettings/applications/ApplicationsState;

    sget-object v3, Lcom/android/jrdsettings/applications/ManageApplications;->sSdDescription:Ljava/lang/String;

    const/4 v4, 0x2

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/jrdsettings/applications/ManageApplications;Lcom/android/jrdsettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/jrdsettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 881
    .restart local v0       #tab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_5
    new-instance v0, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    .end local v0           #tab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mApplicationsState:Lcom/android/jrdsettings/applications/ApplicationsState;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f09063b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, v13

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/jrdsettings/applications/ManageApplications;Lcom/android/jrdsettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/jrdsettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 887
    .restart local v0       #tab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    new-instance v0, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    .end local v0           #tab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mApplicationsState:Lcom/android/jrdsettings/applications/ApplicationsState;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f090639

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/jrdsettings/applications/ManageApplications;Lcom/android/jrdsettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/jrdsettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 892
    .restart local v0       #tab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    return-void

    .line 829
    .end local v0           #tab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    .end local v8           #className:Ljava/lang/String;
    .end local v9           #containerIntent:Landroid/content/Intent;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 837
    .restart local v8       #className:Ljava/lang/String;
    :cond_7
    const-class v1, Lcom/android/jrdsettings/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, ".StorageUse"

    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 840
    :cond_8
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mSortOrder:I

    .line 841
    const/4 v10, 0x3

    goto/16 :goto_1

    .line 842
    :cond_9
    const-string v1, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 844
    const/4 v10, 0x3

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1029
    iput-object p1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1032
    const v0, 0x7f09062e

    invoke-interface {p1, v3, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1035
    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f09062f

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1039
    const/4 v0, 0x6

    const v1, 0x7f090630

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200b1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1042
    const/4 v0, 0x7

    const v1, 0x7f090631

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200b0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1045
    const/16 v0, 0x8

    const v1, 0x7f090632

    invoke-interface {p1, v3, v0, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1047
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1048
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 899
    iput-object p1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 901
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040069

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 903
    .local v3, rootView:Landroid/view/View;
    iput-object p2, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    .line 904
    iput-object v3, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 906
    const v7, 0x7f0b011e

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    iput-object v7, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 907
    new-instance v0, Lcom/android/jrdsettings/applications/ManageApplications$MyPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/applications/ManageApplications$MyPagerAdapter;-><init>(Lcom/android/jrdsettings/applications/ManageApplications;)V

    .line 908
    .local v0, adapter:Lcom/android/jrdsettings/applications/ManageApplications$MyPagerAdapter;
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 909
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 910
    const v7, 0x7f0b011f

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/PagerTabStrip;

    .line 911
    .local v5, tabs:Landroid/support/v4/view/PagerTabStrip;
    const v7, 0x1060012

    invoke-virtual {v5, v7}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 914
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 915
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v6

    .line 916
    .local v6, themeColor:I
    if-eqz v6, :cond_0

    .line 917
    invoke-virtual {v5, v6}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColor(I)V

    .line 922
    :cond_0
    instance-of v7, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v7, :cond_1

    .line 923
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 926
    :cond_1
    if-eqz p3, :cond_2

    const-string v7, "resetDialog"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 927
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/ManageApplications;->buildResetDialog()V

    .line 930
    :cond_2
    if-nez p3, :cond_3

    .line 932
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 933
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    .line 934
    .local v4, tab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    iget v7, v4, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mListType:I

    iget v8, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mDefaultListType:I

    if-ne v7, v8, :cond_4

    .line 935
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 941
    .end local v1           #i:I
    .end local v4           #tab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    :cond_3
    return-object v3

    .line 932
    .restart local v1       #i:I
    .restart local v4       #tab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1062
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1064
    invoke-static {}, Lcom/android/jrdsettings/applications/ApplicationsState;->removeInstance()V

    .line 1065
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mApplicationsState:Lcom/android/jrdsettings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/jrdsettings/applications/ApplicationsState;->exitBackgroundThread()V

    .line 1067
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1068
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 1057
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1058
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 990
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 994
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 995
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->detachView()V

    .line 994
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 997
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1114
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "tab"
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1222
    .local p2, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p1, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p4, :cond_0

    .line 1223
    iget-object v1, p1, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p4}, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1224
    .local v0, entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 1225
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 1227
    .end local v0           #entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1194
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1195
    .local v0, menuId:I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    .line 1196
    :cond_0
    iput v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mSortOrder:I

    .line 1197
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_1

    .line 1198
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;

    iget v3, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v1, v3}, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    .line 1216
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/ManageApplications;->updateOptionsMenu()V

    move v1, v2

    .line 1217
    :cond_2
    return v1

    .line 1200
    :cond_3
    const/4 v3, 0x6

    if-ne v0, v3, :cond_4

    .line 1201
    iput-boolean v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mShowBackground:Z

    .line 1202
    iget-object v3, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/jrdsettings/applications/RunningProcessesView;
    invoke-static {v3}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;)Lcom/android/jrdsettings/applications/RunningProcessesView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1203
    iget-object v3, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/jrdsettings/applications/RunningProcessesView;
    invoke-static {v3}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;)Lcom/android/jrdsettings/applications/RunningProcessesView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/jrdsettings/applications/RunningProcessesView;->mAdapter:Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1205
    :cond_4
    const/4 v3, 0x7

    if-ne v0, v3, :cond_5

    .line 1206
    iput-boolean v2, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mShowBackground:Z

    .line 1207
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/jrdsettings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;)Lcom/android/jrdsettings/applications/RunningProcessesView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1208
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/jrdsettings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;)Lcom/android/jrdsettings/applications/RunningProcessesView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/jrdsettings/applications/RunningProcessesView;->mAdapter:Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1210
    :cond_5
    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    .line 1211
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/ManageApplications;->buildResetDialog()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 972
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 973
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mActivityResumed:Z

    .line 974
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 975
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->pause()V

    .line 974
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 977
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 1052
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1053
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 951
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 952
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mActivityResumed:Z

    .line 953
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/applications/ManageApplications;->updateCurrentTab(I)V

    .line 954
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 955
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 959
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 960
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 961
    iget v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mDefaultListType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 962
    const-string v0, "defaultListType"

    iget v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mDefaultListType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 964
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 965
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 966
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 968
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 946
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 947
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 981
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 982
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 984
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 986
    :cond_0
    return-void
.end method

.method tabForType(I)Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    .locals 3
    .parameter "type"

    .prologue
    .line 1007
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1008
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    .line 1009
    .local v1, tab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    iget v2, v1, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, p1, :cond_0

    .line 1013
    .end local v1           #tab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    :goto_1
    return-object v1

    .line 1007
    .restart local v1       #tab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1013
    .end local v1           #tab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateCurrentTab(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 1230
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    .line 1231
    .local v3, tab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    iput-object v3, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    .line 1234
    iget-boolean v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v4, :cond_1

    .line 1235
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    iget-object v5, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1236
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    iget v5, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v4, v5}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->resume(I)V

    .line 1240
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1241
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    .line 1242
    .local v2, t:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    if-eq v2, v4, :cond_0

    .line 1243
    invoke-virtual {v2}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->pause()V

    .line 1240
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1238
    .end local v1           #i:I
    .end local v2           #t:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->pause()V

    goto :goto_0

    .line 1247
    .restart local v1       #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 1248
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1249
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1250
    .local v0, host:Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 1251
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1253
    :cond_3
    return-void
.end method

.method updateOptionsMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1071
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v4, :cond_0

    .line 1095
    :goto_0
    return-void

    .line 1079
    :cond_0
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mCurTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    iget v4, v4, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v4, v3, :cond_3

    .line 1080
    invoke-virtual {p0, v3}, Lcom/android/jrdsettings/applications/ManageApplications;->tabForType(I)Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    move-result-object v1

    .line 1081
    .local v1, tab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    if-eqz v1, :cond_1

    #getter for: Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/jrdsettings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;)Lcom/android/jrdsettings/applications/RunningProcessesView;

    move-result-object v4

    if-eqz v4, :cond_1

    #getter for: Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/jrdsettings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;)Lcom/android/jrdsettings/applications/RunningProcessesView;

    move-result-object v4

    iget-object v4, v4, Lcom/android/jrdsettings/applications/RunningProcessesView;->mAdapter:Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v4}, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 1083
    .local v0, showingBackground:Z
    :goto_1
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1084
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1085
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1086
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_2

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1087
    iget-object v3, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v0           #showingBackground:Z
    :cond_1
    move v0, v2

    .line 1081
    goto :goto_1

    .restart local v0       #showingBackground:Z
    :cond_2
    move v3, v2

    .line 1086
    goto :goto_2

    .line 1089
    .end local v0           #showingBackground:Z
    .end local v1           #tab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    :cond_3
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v6, :cond_4

    move v4, v3

    :goto_3
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1090
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v7, :cond_5

    move v4, v3

    :goto_4
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1091
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1092
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1093
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x8

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_4
    move v4, v2

    .line 1089
    goto :goto_3

    :cond_5
    move v4, v2

    .line 1090
    goto :goto_4
.end method
