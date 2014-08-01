.class public Lcom/android/jrdsettings/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;,
        Lcom/android/jrdsettings/applications/ApplicationsState$Session;,
        Lcom/android/jrdsettings/applications/ApplicationsState$MainHandler;,
        Lcom/android/jrdsettings/applications/ApplicationsState$PackageIntentReceiver;,
        Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;,
        Lcom/android/jrdsettings/applications/ApplicationsState$SizeInfo;,
        Lcom/android/jrdsettings/applications/ApplicationsState$AppFilter;,
        Lcom/android/jrdsettings/applications/ApplicationsState$Callbacks;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field static final DEBUG_LOCKING:Z = false

.field public static final EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_SD_CARD_FILTER:Lcom/android/jrdsettings/applications/ApplicationsState$AppFilter; = null

.field static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final SIZE_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final SIZE_INVALID:I = -0x2

.field static final SIZE_UNKNOWN:I = -0x1

.field static final TAG:Ljava/lang/String; = "ApplicationsState"

.field public static final THIRD_PARTY_FILTER:Lcom/android/jrdsettings/applications/ApplicationsState$AppFilter;

.field static sInstance:Lcom/android/jrdsettings/applications/ApplicationsState;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mActiveSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field final mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;

.field final mContext:Landroid/content/Context;

.field mCurComputingSizePkg:Ljava/lang/String;

.field mCurId:J

.field final mEntriesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mInterestingConfigChanges:Lcom/android/jrdsettings/applications/InterestingConfigChanges;

.field final mMainHandler:Lcom/android/jrdsettings/applications/ApplicationsState$MainHandler;

.field mPackageIntentReceiver:Lcom/android/jrdsettings/applications/ApplicationsState$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mRebuildingSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mResumed:Z

.field final mRetrieveFlags:I

.field final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mSessionsChanged:Z

.field final mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/jrdsettings/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    .line 168
    new-instance v0, Lcom/android/jrdsettings/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/jrdsettings/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/jrdsettings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 183
    new-instance v0, Lcom/android/jrdsettings/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/jrdsettings/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/android/jrdsettings/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 194
    new-instance v0, Lcom/android/jrdsettings/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/jrdsettings/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/android/jrdsettings/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 205
    new-instance v0, Lcom/android/jrdsettings/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/jrdsettings/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/android/jrdsettings/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 216
    new-instance v0, Lcom/android/jrdsettings/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/jrdsettings/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/jrdsettings/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/jrdsettings/applications/ApplicationsState$AppFilter;

    .line 231
    new-instance v0, Lcom/android/jrdsettings/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/jrdsettings/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/jrdsettings/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/jrdsettings/applications/ApplicationsState$AppFilter;

    .line 392
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/jrdsettings/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 4
    .parameter "app"

    .prologue
    const-wide/16 v1, 0x1

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    .line 256
    new-instance v0, Lcom/android/jrdsettings/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/jrdsettings/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/jrdsettings/applications/InterestingConfigChanges;

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 260
    iput-wide v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mCurId:J

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    .line 388
    new-instance v0, Lcom/android/jrdsettings/applications/ApplicationsState$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/jrdsettings/applications/ApplicationsState;)V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mMainHandler:Lcom/android/jrdsettings/applications/ApplicationsState$MainHandler;

    .line 419
    iput-object p1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 420
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    .line 421
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationsState.Loader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    .line 423
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 424
    new-instance v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/jrdsettings/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;

    .line 427
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 428
    const/16 v0, 0x2200

    iput v0, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mRetrieveFlags:I

    .line 448
    :goto_0
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    return-void

    .line 431
    :cond_0
    const/16 v0, 0x200

    iput v0, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mRetrieveFlags:I

    goto :goto_0

    .line 453
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 451
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/jrdsettings/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getInstance(Landroid/app/Application;)Lcom/android/jrdsettings/applications/ApplicationsState;
    .locals 2
    .parameter "app"

    .prologue
    .line 396
    sget-object v1, Lcom/android/jrdsettings/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :try_start_0
    sget-object v0, Lcom/android/jrdsettings/applications/ApplicationsState;->sInstance:Lcom/android/jrdsettings/applications/ApplicationsState;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lcom/android/jrdsettings/applications/ApplicationsState;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/applications/ApplicationsState;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/android/jrdsettings/applications/ApplicationsState;->sInstance:Lcom/android/jrdsettings/applications/ApplicationsState;

    .line 400
    :cond_0
    sget-object v0, Lcom/android/jrdsettings/applications/ApplicationsState;->sInstance:Lcom/android/jrdsettings/applications/ApplicationsState;

    monitor-exit v1

    return-object v0

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 860
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 863
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .parameter "ps"

    .prologue
    .line 849
    if-eqz p1, :cond_0

    .line 852
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    .line 856
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method private getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .parameter "ps"

    .prologue
    .line 842
    if-eqz p1, :cond_0

    .line 843
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    .line 845
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 71
    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, tmp:Ljava/lang/String;
    sget-object v1, Lcom/android/jrdsettings/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static removeInstance()V
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    sput-object v0, Lcom/android/jrdsettings/applications/ApplicationsState;->sInstance:Lcom/android/jrdsettings/applications/ApplicationsState;

    .line 407
    return-void
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 770
    :try_start_0
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :try_start_1
    iget-boolean v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_0

    .line 778
    monitor-exit v2

    .line 797
    :goto_0
    return-void

    .line 780
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 783
    monitor-exit v2

    goto :goto_0

    .line 794
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 795
    :catch_0
    move-exception v1

    goto :goto_0

    .line 785
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget v3, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mRetrieveFlags:I

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 786
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 788
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 790
    :cond_2
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mMainHandler:Lcom/android/jrdsettings/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 791
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mMainHandler:Lcom/android/jrdsettings/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 794
    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method doPauseIfNeededLocked()V
    .locals 2

    .prologue
    .line 693
    iget-boolean v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 697
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/applications/ApplicationsState$Session;

    iget-boolean v1, v1, Lcom/android/jrdsettings/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v1, :cond_0

    .line 696
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 701
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mResumed:Z

    .line 702
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/jrdsettings/applications/ApplicationsState$PackageIntentReceiver;

    if-eqz v1, :cond_0

    .line 703
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/jrdsettings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v1}, Lcom/android/jrdsettings/applications/ApplicationsState$PackageIntentReceiver;->unregisterReceiver()V

    .line 704
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/jrdsettings/applications/ApplicationsState$PackageIntentReceiver;

    goto :goto_0
.end method

.method doResumeIfNeededLocked()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 625
    iget-boolean v7, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mResumed:Z

    if-eqz v7, :cond_1

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iput-boolean v9, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mResumed:Z

    .line 629
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/jrdsettings/applications/ApplicationsState$PackageIntentReceiver;

    if-nez v7, :cond_2

    .line 630
    new-instance v7, Lcom/android/jrdsettings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-direct {v7, p0, v11}, Lcom/android/jrdsettings/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/jrdsettings/applications/ApplicationsState;Lcom/android/jrdsettings/applications/ApplicationsState$1;)V

    iput-object v7, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/jrdsettings/applications/ApplicationsState$PackageIntentReceiver;

    .line 631
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/jrdsettings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v7}, Lcom/android/jrdsettings/applications/ApplicationsState$PackageIntentReceiver;->registerReceiver()V

    .line 633
    :cond_2
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget v8, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mRetrieveFlags:I

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 634
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    if-nez v7, :cond_3

    .line 635
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 638
    :cond_3
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/jrdsettings/applications/InterestingConfigChanges;

    iget-object v8, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/jrdsettings/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 641
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 642
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 649
    :cond_4
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_d

    .line 650
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 654
    .local v5, info:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 655
    .local v6, packageName:Ljava/lang/String;
    iget-boolean v7, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v7, :cond_5

    iget v7, v5, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    :cond_5
    if-eqz v6, :cond_9

    const-string v7, "com.tct.hz.mobile.sales"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 660
    :cond_6
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 661
    add-int/lit8 v3, v3, -0x1

    .line 649
    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 644
    .end local v3           #i:I
    .end local v5           #info:Landroid/content/pm/ApplicationInfo;
    .end local v6           #packageName:Ljava/lang/String;
    :cond_8
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 645
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iput-boolean v9, v7, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 644
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 666
    .restart local v5       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #packageName:Ljava/lang/String;
    :cond_9
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a004c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 667
    .local v2, hideApp:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 668
    .local v1, hide:Z
    const/4 v4, 0x0

    .local v4, index:I
    :goto_4
    array-length v7, v2

    if-ge v4, v7, :cond_a

    .line 669
    if-eqz v6, :cond_b

    aget-object v7, v2, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 670
    const/4 v1, 0x1

    .line 674
    :cond_a
    if-eqz v1, :cond_c

    .line 675
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 676
    add-int/lit8 v3, v3, -0x1

    .line 677
    goto :goto_2

    .line 668
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 681
    :cond_c
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v8, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    .line 682
    .local v0, entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_7

    .line 683
    iput-object v5, v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_2

    .line 686
    .end local v0           #entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    .end local v1           #hide:Z
    .end local v2           #hideApp:[Ljava/lang/String;
    .end local v4           #index:I
    .end local v5           #info:Landroid/content/pm/ApplicationInfo;
    .end local v6           #packageName:Ljava/lang/String;
    :cond_d
    iput-object v11, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 687
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 688
    iget-object v7, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method ensureIcon(Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 727
    iget-object v0, p1, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 733
    :goto_0
    return-void

    .line 730
    :cond_0
    monitor-enter p1

    .line 731
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0, v1}, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    .line 732
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public exitBackgroundThread()V
    .locals 2

    .prologue
    .line 409
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 411
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 415
    .end local v0           #looper:Landroid/os/Looper;
    :cond_0
    return-void
.end method

.method getEntry(Ljava/lang/String;)Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    .locals 5
    .parameter "packageName"

    .prologue
    .line 710
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 711
    :try_start_0
    iget-object v3, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    .line 712
    .local v0, entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_0

    .line 713
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 714
    iget-object v3, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 715
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 716
    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 722
    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    monitor-exit v4

    return-object v0

    .line 713
    .restart local v1       #i:I
    .restart local v2       #info:Landroid/content/pm/ApplicationInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 723
    .end local v0           #entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    .locals 6
    .parameter "info"

    .prologue
    .line 826
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    .line 828
    .local v0, entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_1

    .line 830
    new-instance v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    .end local v0           #entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mCurId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mCurId:J

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 831
    .restart local v0       #entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_0
    :goto_0
    return-object v0

    .line 833
    :cond_1
    iget-object v1, v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq v1, p1, :cond_0

    .line 834
    iput-object p1, v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method indexOfApplicationInfoLocked(Ljava/lang/String;)I
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 760
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 761
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    .end local v0           #i:I
    :goto_1
    return v0

    .line 760
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 765
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method invalidatePackage(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 821
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/applications/ApplicationsState;->removePackage(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/applications/ApplicationsState;->addPackage(Ljava/lang/String;)V

    .line 823
    return-void
.end method

.method public newSession(Lcom/android/jrdsettings/applications/ApplicationsState$Callbacks;)Lcom/android/jrdsettings/applications/ApplicationsState$Session;
    .locals 3
    .parameter "callbacks"

    .prologue
    .line 617
    new-instance v0, Lcom/android/jrdsettings/applications/ApplicationsState$Session;

    invoke-direct {v0, p0, p1}, Lcom/android/jrdsettings/applications/ApplicationsState$Session;-><init>(Lcom/android/jrdsettings/applications/ApplicationsState;Lcom/android/jrdsettings/applications/ApplicationsState$Callbacks;)V

    .line 618
    .local v0, s:Lcom/android/jrdsettings/applications/ApplicationsState$Session;
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 619
    :try_start_0
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    monitor-exit v2

    .line 621
    return-object v0

    .line 620
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method rebuildActiveSessions()V
    .locals 4

    .prologue
    .line 325
    iget-object v3, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 326
    :try_start_0
    iget-boolean v2, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mSessionsChanged:Z

    if-nez v2, :cond_0

    .line 327
    monitor-exit v3

    .line 337
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 330
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 331
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/applications/ApplicationsState$Session;

    .line 332
    .local v1, s:Lcom/android/jrdsettings/applications/ApplicationsState$Session;
    iget-boolean v2, v1, Lcom/android/jrdsettings/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v2, :cond_1

    .line 333
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 336
    .end local v1           #s:Lcom/android/jrdsettings/applications/ApplicationsState$Session;
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method removePackage(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 800
    iget-object v3, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 802
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v1

    .line 804
    .local v1, idx:I
    if-ltz v1, :cond_1

    .line 805
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    .line 807
    .local v0, entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 808
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 811
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 812
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mMainHandler:Lcom/android/jrdsettings/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 813
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mMainHandler:Lcom/android/jrdsettings/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 817
    .end local v0           #entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    :cond_1
    monitor-exit v3

    .line 818
    return-void

    .line 817
    .end local v1           #idx:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method requestSize(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 737
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 738
    :try_start_0
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    .line 739
    .local v0, entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 740
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 743
    :cond_0
    monitor-exit v2

    .line 744
    return-void

    .line 743
    .end local v0           #entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method sumCacheSizes()J
    .locals 7

    .prologue
    .line 747
    const-wide/16 v1, 0x0

    .line 749
    .local v1, sum:J
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 751
    :try_start_0
    iget-object v3, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 752
    iget-object v3, p0, Lcom/android/jrdsettings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v3, Lcom/android/jrdsettings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    add-long/2addr v1, v5

    .line 751
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 755
    :cond_0
    monitor-exit v4

    .line 756
    return-wide v1

    .line 755
    .end local v0           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
