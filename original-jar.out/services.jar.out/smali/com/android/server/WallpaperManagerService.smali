.class Lcom/android/server/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/WallpaperManagerService$WallpaperData;,
        Lcom/android/server/WallpaperManagerService$WallpaperObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final IMAGE_WALLPAPER:Landroid/content/ComponentName; = null

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field private static final SMARTBOOK_WALLPAPER:Ljava/lang/String; = "smartbook_wallpaper"

.field private static final SMARTBOOK_WALLPAPER_INFO:Ljava/lang/String; = "smartbook_wallpaper_info.xml"

.field static final TAG:Ljava/lang/String; = "WallpaperManagerService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"


# instance fields
.field final mContext:Landroid/content/Context;

.field mCurrentUserId:I

.field private mHaveUsedSmartBook:Z

.field final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field private mLastPhoneWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

.field private mLastSmartBookWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

.field mLastWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

.field final mLock:Ljava/lang/Object;

.field final mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

.field private mPhoneWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartBookPlug:Z

.field private mSmartBookWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperFileName:Ljava/lang/String;

.field private mWallpaperInfoFileName:Ljava/lang/String;

.field mWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.ImageWallpaper"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 448
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 97
    new-array v0, v4, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 169
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 1439
    const-string v0, "wallpaper"

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    .line 1440
    const-string v0, "wallpaper_info.xml"

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperInfoFileName:Ljava/lang/String;

    .line 1447
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mPhoneWallpaperMap:Landroid/util/SparseArray;

    .line 1448
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mSmartBookWallpaperMap:Landroid/util/SparseArray;

    .line 449
    const-string v0, "WallpaperManagerService"

    const-string v1, "WallpaperService startup"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 451
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 453
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 454
    new-instance v0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    .line 455
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 456
    invoke-static {v4}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 457
    invoke-direct {p0, v4}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 458
    return-void
.end method

.method static synthetic access$000(I)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-static {p0}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/WallpaperManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/WallpaperManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/server/WallpaperManagerService;->mSmartBookPlug:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/WallpaperManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/server/WallpaperManagerService;->mSmartBookPlug:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/WallpaperManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->updateSettingsComponentName()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/WallpaperManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/server/WallpaperManagerService;->mHaveUsedSmartBook:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/WallpaperManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/WallpaperManagerService;->dynimicSwitchingWallpaper(Z)V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3
    .parameter "permission"

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1064
    :cond_0
    return-void
.end method

.method private dumpSmartBook()V
    .locals 4

    .prologue
    .line 1500
    const-string v1, "WallpaperManagerService"

    const-string v2, "========== Smart book dump start ============ "

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Plug in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WallpaperManagerService;->mSmartBookPlug:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWallpaperFileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWallpaperInfoFileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperInfoFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 1505
    .local v0, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_2

    .line 1506
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 1508
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    :cond_0
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 1511
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NextWallpaperComponent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_1
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 1514
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WallpaperFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_2
    const-string v1, "WallpaperManagerService"

    const-string v2, "========== Smart book dump end   ============ "

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    return-void
.end method

.method private dynimicSwitchingWallpaper(Z)V
    .locals 3
    .parameter "isSmartBookPlug"

    .prologue
    .line 1452
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->stopWatchingWallpaper()V

    .line 1454
    invoke-direct {p0, p1}, Lcom/android/server/WallpaperManagerService;->switching(Z)V

    .line 1456
    iget v1, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 1458
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->startWatchingWallpaper()V

    .line 1460
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 1461
    .local v0, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WallpaperManagerService;->switchWallpaper(Lcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 1462
    return-void
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .locals 1
    .parameter "userId"

    .prologue
    .line 461
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private loadSettingsLocked(I)V
    .locals 20
    .parameter "userId"

    .prologue
    .line 1160
    const-string v17, "WallpaperManagerService"

    const-string v18, "loadSettingsLocked"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    invoke-direct/range {p0 .. p1}, Lcom/android/server/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v8

    .line 1163
    .local v8, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v10, 0x0

    .line 1164
    .local v10, stream:Ljava/io/FileInputStream;
    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v7

    .line 1165
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    .line 1167
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WallpaperManagerService;->migrateFromOld()V

    .line 1169
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 1170
    .local v15, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v15, :cond_1

    .line 1171
    new-instance v15, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .end local v15           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/android/server/WallpaperManagerService$WallpaperData;-><init>(Lcom/android/server/WallpaperManagerService;I)V

    .line 1172
    .restart local v15       #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1174
    :cond_1
    const/4 v12, 0x0

    .line 1176
    .local v12, success:Z
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1177
    .end local v10           #stream:Ljava/io/FileInputStream;
    .local v11, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 1178
    .local v9, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v9, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1182
    :cond_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .line 1183
    .local v14, type:I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v14, v0, :cond_5

    .line 1184
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1185
    .local v13, tag:Ljava/lang/String;
    const-string v17, "wp"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1186
    const/16 v17, 0x0

    const-string v18, "width"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v15, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    .line 1187
    const/16 v17, 0x0

    const-string v18, "height"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v15, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    .line 1189
    const/16 v17, 0x0

    const-string v18, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1190
    const/16 v17, 0x0

    const-string v18, "component"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1191
    .local v2, comp:Ljava/lang/String;
    if-eqz v2, :cond_a

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v17

    :goto_0
    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 1194
    iget-object v0, v15, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    const-string v17, "android"

    iget-object v0, v15, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1197
    :cond_3
    sget-object v17, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 1201
    :cond_4
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mWidth:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v15, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mHeight:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v15, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mName:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v15, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mNextWallpaperComponent:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v15, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_7

    .line 1209
    .end local v2           #comp:Ljava/lang/String;
    .end local v13           #tag:Ljava/lang/String;
    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_2

    .line 1210
    const/4 v12, 0x1

    move-object v10, v11

    .line 1225
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v11           #stream:Ljava/io/FileInputStream;
    .end local v14           #type:I
    .restart local v10       #stream:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v10, :cond_6

    .line 1226
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 1232
    :cond_6
    :goto_2
    if-nez v12, :cond_7

    .line 1233
    const/16 v17, -0x1

    move/from16 v0, v17

    iput v0, v15, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    .line 1234
    const/16 v17, -0x1

    move/from16 v0, v17

    iput v0, v15, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    .line 1235
    const-string v17, ""

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1239
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "window"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 1240
    .local v16, wm:Landroid/view/WindowManager;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 1242
    .local v3, d:Landroid/view/Display;
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1243
    .local v5, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1080231

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1246
    .local v4, defaultWallpaper:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_9

    iget v0, v15, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    move/from16 v17, v0

    if-lez v17, :cond_8

    iget v0, v15, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    move/from16 v17, v0

    if-gtz v17, :cond_9

    .line 1247
    :cond_8
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    div-int v17, v17, v18

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_b

    .line 1248
    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    .line 1249
    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "multi_screen"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1265
    :cond_9
    :goto_3
    return-void

    .line 1191
    .end local v3           #d:Landroid/view/Display;
    .end local v4           #defaultWallpaper:Landroid/graphics/drawable/Drawable;
    .end local v5           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v10           #stream:Ljava/io/FileInputStream;
    .end local v16           #wm:Landroid/view/WindowManager;
    .restart local v2       #comp:Ljava/lang/String;
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    .restart local v13       #tag:Ljava/lang/String;
    .restart local v14       #type:I
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1211
    .end local v2           #comp:Ljava/lang/String;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v11           #stream:Ljava/io/FileInputStream;
    .end local v13           #tag:Ljava/lang/String;
    .end local v14           #type:I
    .restart local v10       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    .line 1212
    .local v6, e:Ljava/io/FileNotFoundException;
    :goto_4
    const-string v17, "WallpaperManagerService"

    const-string v18, "no current wallpaper -- first boot?"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1213
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    .line 1214
    .local v6, e:Ljava/lang/NullPointerException;
    :goto_5
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "failed parsing "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1215
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v6

    .line 1216
    .local v6, e:Ljava/lang/NumberFormatException;
    :goto_6
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "failed parsing "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1217
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v6

    .line 1218
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_7
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "failed parsing "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1219
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v6

    .line 1220
    .local v6, e:Ljava/io/IOException;
    :goto_8
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "failed parsing "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1221
    .end local v6           #e:Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 1222
    .local v6, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_9
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "failed parsing "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1252
    .end local v6           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v3       #d:Landroid/view/Display;
    .restart local v4       #defaultWallpaper:Landroid/graphics/drawable/Drawable;
    .restart local v5       #displayMetrics:Landroid/util/DisplayMetrics;
    .restart local v16       #wm:Landroid/view/WindowManager;
    :cond_b
    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v15, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    .line 1253
    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "multi_screen"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1228
    .end local v3           #d:Landroid/view/Display;
    .end local v4           #defaultWallpaper:Landroid/graphics/drawable/Drawable;
    .end local v5           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v16           #wm:Landroid/view/WindowManager;
    :catch_6
    move-exception v17

    goto/16 :goto_2

    .line 1221
    .end local v10           #stream:Ljava/io/FileInputStream;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v6

    move-object v10, v11

    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v10       #stream:Ljava/io/FileInputStream;
    goto :goto_9

    .line 1219
    .end local v10           #stream:Ljava/io/FileInputStream;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v6

    move-object v10, v11

    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v10       #stream:Ljava/io/FileInputStream;
    goto :goto_8

    .line 1217
    .end local v10           #stream:Ljava/io/FileInputStream;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v6

    move-object v10, v11

    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v10       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_7

    .line 1215
    .end local v10           #stream:Ljava/io/FileInputStream;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    :catch_a
    move-exception v6

    move-object v10, v11

    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v10       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 1213
    .end local v10           #stream:Ljava/io/FileInputStream;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    :catch_b
    move-exception v6

    move-object v10, v11

    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v10       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 1211
    .end local v10           #stream:Ljava/io/FileInputStream;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    :catch_c
    move-exception v6

    move-object v10, v11

    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v10       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_4
.end method

.method private makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .parameter "userId"

    .prologue
    .line 1067
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperInfoFileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1068
    .local v0, base:Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private migrateFromOld()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1144
    const-string v4, "WallpaperManagerService"

    const-string v5, "migrateFromOld.."

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1146
    .local v3, oldWallpaper:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1147
    .local v2, oldInfo:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1148
    new-instance v1, Ljava/io/File;

    invoke-static {v7}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1149
    .local v1, newWallpaper:Ljava/io/File;
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1150
    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "migrateFromOld..oldWallpaper: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Rename to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    .end local v1           #newWallpaper:Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1153
    new-instance v0, Ljava/io/File;

    invoke-static {v7}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperInfoFileName:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1154
    .local v0, newInfo:Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1155
    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "migrateFromOld..oldInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Rename to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    .end local v0           #newInfo:Ljava/io/File;
    :cond_1
    return-void
.end method

.method private notifyCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 6
    .parameter "wallpaper"

    .prologue
    .line 1044
    #getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$800(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1045
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1047
    :try_start_0
    #getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$800(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1054
    :cond_0
    #getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$800(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1055
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1056
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1057
    return-void

    .line 1048
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 8
    .parameter "wallpaper"

    .prologue
    .line 1109
    iget v5, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v5}, Lcom/android/server/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v1

    .line 1110
    .local v1, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v3, 0x0

    .line 1112
    .local v3, stream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .local v4, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1114
    .local v2, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1115
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1117
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1118
    const/4 v5, 0x0

    const-string v6, "width"

    iget v7, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1119
    const/4 v5, 0x0

    const-string v6, "height"

    iget v7, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1120
    const/4 v5, 0x0

    const-string v6, "name"

    iget-object v7, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1121
    iget-object v5, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    sget-object v6, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1123
    const/4 v5, 0x0

    const-string v6, "component"

    iget-object v7, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1126
    :cond_0
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1128
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1129
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1130
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 1141
    .end local v2           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v4           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1131
    :catch_0
    move-exception v0

    .line 1133
    .local v0, e:Ljava/io/IOException;
    :goto_1
    if-eqz v3, :cond_1

    .line 1134
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1139
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_0

    .line 1136
    :catch_1
    move-exception v5

    goto :goto_2

    .line 1131
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v4       #stream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private startWatchingWallpaper()V
    .locals 3

    .prologue
    .line 1465
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 1466
    .local v0, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    if-nez v1, :cond_0

    .line 1467
    new-instance v1, Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    iput-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    .line 1469
    :cond_0
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 1470
    return-void
.end method

.method private stopWatchingWallpaper()V
    .locals 3

    .prologue
    .line 1473
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 1474
    .local v0, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    if-eqz v1, :cond_0

    .line 1475
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 1477
    :cond_0
    return-void
.end method

.method private switching(Z)V
    .locals 1
    .parameter "isSmartBookPlug"

    .prologue
    .line 1480
    if-eqz p1, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mPhoneWallpaperMap:Landroid/util/SparseArray;

    .line 1485
    const-string v0, "smartbook_wallpaper"

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    .line 1486
    const-string v0, "smartbook_wallpaper_info.xml"

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperInfoFileName:Ljava/lang/String;

    .line 1487
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mSmartBookWallpaperMap:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 1497
    :goto_0
    return-void

    .line 1491
    :cond_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mSmartBookWallpaperMap:Landroid/util/SparseArray;

    .line 1493
    const-string v0, "wallpaper"

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    .line 1494
    const-string v0, "wallpaper_info.xml"

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperInfoFileName:Ljava/lang/String;

    .line 1495
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mPhoneWallpaperMap:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    goto :goto_0
.end method

.method private updateSettingsComponentName()V
    .locals 11

    .prologue
    .line 1077
    iget-object v8, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1078
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 1079
    .local v6, wallpaperData:Lcom/android/server/WallpaperManagerService$WallpaperData;
    const/4 v7, 0x0

    .line 1080
    .local v7, wallpaperInfo:Landroid/app/WallpaperInfo;
    const/4 v1, 0x0

    .line 1081
    .local v1, currentWallpaperName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1082
    .local v3, packageName:Ljava/lang/String;
    const v4, 0x2050105

    .line 1083
    .local v4, resId:I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 1084
    .local v5, userId:I
    iget-object v9, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1085
    :try_start_0
    iget-object v8, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    move-object v6, v0

    .line 1086
    iget-object v8, v6, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v8, :cond_0

    .line 1087
    iget-object v8, v6, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v7, v8, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 1089
    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    if-eqz v7, :cond_1

    sget-object v8, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    iget-object v9, v6, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1092
    invoke-virtual {v7}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1093
    invoke-virtual {v7}, Landroid/app/WallpaperInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iget v4, v8, Landroid/content/pm/ServiceInfo;->labelRes:I

    .line 1095
    :cond_1
    if-nez v4, :cond_2

    .line 1096
    invoke-virtual {v7, v2}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1100
    :goto_0
    iget-object v8, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "current_wallpaper_component_name"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1102
    const-string v8, "WallpaperManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentWallpaperName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/Throwable;

    invoke-direct {v10}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v8, v9, v10}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1104
    return-void

    .line 1089
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 1098
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method attachServiceLocked(Lcom/android/server/WallpaperManagerService$WallpaperConnection;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 10
    .parameter "conn"
    .parameter "wallpaper"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1032
    :try_start_0
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v2, p1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v3, 0x7dd

    const/4 v4, 0x0

    iget v5, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    iget v6, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1035
    :catch_0
    move-exception v7

    .line 1036
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "WallpaperManagerService"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1037
    iget-boolean v0, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, v9

    move v2, v8

    move v3, v8

    move-object v4, p2

    move-object v5, v9

    .line 1038
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_0
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .locals 21
    .parameter "componentName"
    .parameter "force"
    .parameter "fromUser"
    .parameter "wallpaper"
    .parameter "reply"

    .prologue
    .line 845
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindWallpaperComponentLocked: componentName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WallpaperManagerService;->isStorageLow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 849
    const-string v3, "WallpaperManagerService"

    const-string v4, "Storage low, fail to set wallpaper"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/4 v3, 0x0

    .line 994
    :goto_0
    return v3

    .line 854
    :cond_0
    if-nez p2, :cond_2

    .line 855
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_2

    .line 856
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_1

    .line 857
    if-nez p1, :cond_2

    .line 858
    const-string v3, "WallpaperManagerService"

    const-string v4, "bindWallpaperComponentLocked: still using default"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/4 v3, 0x1

    goto :goto_0

    .line 862
    :cond_1
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 864
    const-string v3, "WallpaperManagerService"

    const-string v4, "same wallpaper"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/4 v3, 0x1

    goto :goto_0

    .line 871
    :cond_2
    if-nez p1, :cond_4

    .line 872
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104001f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 874
    .local v9, defaultComponent:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 876
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 877
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Use default component wallpaper:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_3
    if-nez p1, :cond_4

    .line 881
    sget-object p1, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    .line 884
    const-string v3, "WallpaperManagerService"

    const-string v4, "Using image wallpaper"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    .end local v9           #defaultComponent:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    move/from16 v17, v0

    .line 888
    .local v17, serviceUserId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v4, 0x1080

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v3, v0, v4, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v18

    .line 891
    .local v18, si:Landroid/content/pm/ServiceInfo;
    if-nez v18, :cond_5

    .line 892
    const-string v3, "WallpaperManagerService"

    const-string v4, "Fail to get service info"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 896
    :cond_5
    const-string v3, "android.permission.BIND_WALLPAPER"

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 897
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected service does not require android.permission.BIND_WALLPAPER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 900
    .local v13, msg:Ljava/lang/String;
    if-eqz p3, :cond_6

    .line 901
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    .end local v13           #msg:Ljava/lang/String;
    .end local v17           #serviceUserId:I
    .end local v18           #si:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v10

    .line 987
    .local v10, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 988
    .restart local v13       #msg:Ljava/lang/String;
    if-eqz p3, :cond_12

    .line 989
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 903
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v17       #serviceUserId:I
    .restart local v18       #si:Landroid/content/pm/ServiceInfo;
    :cond_6
    :try_start_1
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 907
    .end local v13           #msg:Ljava/lang/String;
    :cond_7
    const/16 v19, 0x0

    .line 909
    .local v19, wi:Landroid/app/WallpaperInfo;
    new-instance v12, Landroid/content/Intent;

    const-string v3, "android.service.wallpaper.WallpaperService"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 910
    .local v12, intent:Landroid/content/Intent;
    if-eqz p1, :cond_d

    sget-object v3, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 912
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    move/from16 v0, v17

    invoke-interface {v3, v12, v4, v5, v0}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v15

    .line 916
    .local v15, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_8

    .line 917
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    .line 918
    .local v16, rsi:Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_b

    .line 921
    :try_start_2
    new-instance v19, Landroid/app/WallpaperInfo;

    .end local v19           #wi:Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v3}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 938
    .end local v16           #rsi:Landroid/content/pm/ServiceInfo;
    .restart local v19       #wi:Landroid/app/WallpaperInfo;
    :cond_8
    if-nez v19, :cond_d

    .line 939
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected service is not a wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 941
    .restart local v13       #msg:Ljava/lang/String;
    if-eqz p3, :cond_c

    .line 942
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 922
    .end local v13           #msg:Ljava/lang/String;
    .end local v19           #wi:Landroid/app/WallpaperInfo;
    .restart local v16       #rsi:Landroid/content/pm/ServiceInfo;
    :catch_1
    move-exception v10

    .line 923
    .local v10, e:Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz p3, :cond_9

    .line 924
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 926
    :cond_9
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 927
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 928
    .end local v10           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v10

    .line 929
    .local v10, e:Ljava/io/IOException;
    if-eqz p3, :cond_a

    .line 930
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 932
    :cond_a
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 933
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 916
    .end local v10           #e:Ljava/io/IOException;
    .restart local v19       #wi:Landroid/app/WallpaperInfo;
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 944
    .end local v16           #rsi:Landroid/content/pm/ServiceInfo;
    .restart local v13       #msg:Ljava/lang/String;
    :cond_c
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 950
    .end local v11           #i:I
    .end local v13           #msg:Ljava/lang/String;
    .end local v15           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_d
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    new-instance v14, Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-direct {v14, v0, v1, v2}, Lcom/android/server/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 952
    .local v14, newConn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 953
    const-string v3, "android.intent.extra.client_label"

    const v4, 0x10404bb

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 955
    const-string v20, "android.intent.extra.client_intent"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v7, 0x10404bc

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 960
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v12, v14, v4, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    move-result v3

    if-nez v3, :cond_f

    .line 961
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 963
    .restart local v13       #msg:Ljava/lang/String;
    if-eqz p3, :cond_e

    .line 964
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 966
    :cond_e
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 969
    .end local v13           #msg:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    if-ne v3, v4, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    if-eqz v3, :cond_10

    .line 970
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 972
    :cond_10
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 973
    move-object/from16 v0, p4

    iput-object v14, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 974
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p4

    iput-wide v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    .line 975
    move-object/from16 v0, p5

    iput-object v0, v14, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 977
    :try_start_4
    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    if-ne v3, v4, :cond_11

    .line 979
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding window token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v14, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v4, v14, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v5, 0x7dd

    invoke-interface {v3, v4, v5}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V

    .line 982
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 994
    :cond_11
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 991
    .end local v12           #intent:Landroid/content/Intent;
    .end local v14           #newConn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    .end local v17           #serviceUserId:I
    .end local v18           #si:Landroid/content/pm/ServiceInfo;
    .end local v19           #wi:Landroid/app/WallpaperInfo;
    .local v10, e:Landroid/os/RemoteException;
    .restart local v13       #msg:Ljava/lang/String;
    :cond_12
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 984
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v13           #msg:Ljava/lang/String;
    .restart local v12       #intent:Landroid/content/Intent;
    .restart local v14       #newConn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    .restart local v17       #serviceUserId:I
    .restart local v18       #si:Landroid/content/pm/ServiceInfo;
    .restart local v19       #wi:Landroid/app/WallpaperInfo;
    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method public clearWallpaper()V
    .locals 4

    .prologue
    .line 602
    const-string v0, "WallpaperManagerService"

    const-string v1, "clearWallpaper"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 604
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 605
    monitor-exit v1

    .line 606
    return-void

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method clearWallpaperComponentLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 1
    .parameter "wallpaper"

    .prologue
    .line 1026
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1027
    invoke-virtual {p0, p1}, Lcom/android/server/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 1028
    return-void
.end method

.method clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V
    .locals 11
    .parameter "defaultFailed"
    .parameter "userId"
    .parameter "reply"

    .prologue
    const/4 v1, 0x0

    .line 609
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 610
    .local v4, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    new-instance v8, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    invoke-direct {v8, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 611
    .local v8, f:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 614
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 615
    .local v9, ident:J
    const/4 v6, 0x0

    .line 617
    .local v6, e:Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 618
    iget v0, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    if-eq p2, v0, :cond_3

    .line 627
    :cond_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 642
    :cond_2
    :goto_0
    return-void

    .line 619
    :cond_3
    if-eqz p1, :cond_4

    :try_start_1
    sget-object v1, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    :cond_4
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_1

    .line 627
    :goto_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 634
    const-string v0, "WallpaperManagerService"

    const-string v1, "Default wallpaper component not found!"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 635
    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 636
    if-eqz p3, :cond_2

    .line 638
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p3, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 639
    :catch_0
    move-exception v0

    goto :goto_0

    .line 624
    :catch_1
    move-exception v7

    .line 625
    .local v7, e1:Ljava/lang/IllegalArgumentException;
    move-object v6, v7

    goto :goto_1

    .line 627
    .end local v7           #e1:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method detachWallpaperLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 4
    .parameter "wallpaper"

    .prologue
    const/4 v3, 0x0

    .line 998
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_2

    .line 999
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 1001
    :try_start_0
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1004
    :goto_0
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 1006
    :cond_0
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_1

    .line 1008
    :try_start_1
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1012
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1015
    :try_start_2
    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing window token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1019
    :goto_2
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 1020
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 1021
    iput-object v3, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 1023
    :cond_2
    return-void

    .line 1017
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1009
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1002
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1392
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump wallpaper service from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1434
    :goto_0
    return-void

    .line 1401
    :cond_0
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1402
    :try_start_0
    const-string v3, "Current Wallpaper Service state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1403
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1404
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 1405
    .local v2, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " User "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1406
    const-string v3, "  mWidth="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1407
    iget v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1408
    const-string v3, " mHeight="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1409
    iget v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1410
    const-string v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1411
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1412
    const-string v3, "  mWallpaperComponent="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1413
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1414
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_2

    .line 1415
    iget-object v0, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 1416
    .local v0, conn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    const-string v3, "  Wallpaper connection "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1418
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v3, :cond_1

    .line 1420
    const-string v3, "    mInfo.component="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1421
    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1423
    :cond_1
    const-string v3, "    mToken="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1424
    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1425
    const-string v3, "    mService="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1426
    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1427
    const-string v3, "    mEngine="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1428
    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1429
    const-string v3, "    mLastDiedTime="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1430
    iget-wide v5, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {p2, v5, v6}, Ljava/io/PrintWriter;->println(J)V

    .line 1403
    .end local v0           #conn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1433
    .end local v2           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_3
    monitor-exit v4

    goto/16 :goto_0

    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 466
    invoke-super {p0}, Landroid/app/IWallpaperManager$Stub;->finalize()V

    .line 467
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 468
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 469
    .local v1, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    .end local v1           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_0
    return-void
.end method

.method public getHeightHint()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 707
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 708
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 709
    .local v0, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    monitor-exit v2

    return v1

    .line 710
    .end local v0           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 536
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .parameter "cb"
    .parameter "outParams"

    .prologue
    const/4 v5, 0x0

    .line 715
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 718
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 719
    .local v0, callingUid:I
    const/4 v4, 0x0

    .line 720
    .local v4, wallpaperUserId:I
    const/16 v7, 0x3e8

    if-ne v0, v7, :cond_1

    .line 721
    iget v4, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    .line 725
    :goto_0
    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WallpaperManagerService$WallpaperData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    .local v3, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-eqz p2, :cond_0

    .line 728
    :try_start_1
    const-string v7, "width"

    iget v8, v3, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 729
    const-string v7, "height"

    iget v8, v3, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 731
    :cond_0
    #getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$800(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 732
    new-instance v2, Ljava/io/File;

    invoke-static {v4}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 733
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-nez v7, :cond_2

    .line 734
    :try_start_2
    monitor-exit v6

    .line 741
    .end local v2           #f:Ljava/io/File;
    :goto_1
    return-object v5

    .line 723
    .end local v3           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_1
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    goto :goto_0

    .line 736
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_2
    const/high16 v7, 0x1000

    :try_start_3
    invoke-static {v2, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v5

    :try_start_4
    monitor-exit v6

    goto :goto_1

    .line 742
    .end local v0           #callingUid:I
    .end local v2           #f:Ljava/io/File;
    .end local v3           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    .end local v4           #wallpaperUserId:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 737
    .restart local v0       #callingUid:I
    .restart local v3       #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    .restart local v4       #wallpaperUserId:I
    :catch_0
    move-exception v1

    .line 739
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v7, "WallpaperManagerService"

    const-string v8, "Error getting wallpaper"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 741
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 4

    .prologue
    .line 746
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 747
    .local v0, userId:I
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 748
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 749
    .local v1, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_0

    .line 750
    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v3

    .line 752
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 753
    .end local v1           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getWidthHint()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 700
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 701
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 702
    .local v0, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    monitor-exit v2

    return v1

    .line 703
    .end local v0           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .locals 9
    .parameter "name"

    .prologue
    .line 645
    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 647
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    .line 649
    .local v1, ident:J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v8, "user"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 651
    .local v4, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 653
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 654
    .local v3, user:Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 655
    .local v5, wd:Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_1

    .line 657
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 658
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #wd:Lcom/android/server/WallpaperManagerService$WallpaperData;
    check-cast v5, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 660
    .restart local v5       #wd:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_1
    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 661
    const/4 v6, 0x1

    monitor-exit v7

    .line 665
    .end local v3           #user:Landroid/content/pm/UserInfo;
    .end local v5           #wd:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :goto_0
    return v6

    .line 651
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v4           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v6

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 664
    .end local v1           #ident:J
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #ident:J
    .restart local v4       #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 665
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public isStorageLow()Z
    .locals 1

    .prologue
    .line 835
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isStorageLow()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 840
    :goto_0
    return v0

    .line 838
    :catch_0
    move-exception v0

    .line 840
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onRemoveUser(I)V
    .locals 5
    .parameter "userId"

    .prologue
    .line 556
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 564
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 558
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/WallpaperManagerService;->onStoppingUser(I)V

    .line 559
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 560
    .local v0, wallpaperFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 561
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperInfoFileName:Ljava/lang/String;

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 562
    .local v1, wallpaperInfoFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 563
    monitor-exit v3

    goto :goto_0

    .end local v0           #wallpaperFile:Ljava/io/File;
    .end local v1           #wallpaperInfoFile:Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method onStoppingUser(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 542
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 553
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 545
    .local v0, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_2

    .line 546
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    if-eqz v1, :cond_1

    .line 547
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 548
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    .line 550
    :cond_1
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 552
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetWallpaper()V
    .locals 5

    .prologue
    .line 1526
    const-string v3, "WallpaperManagerService"

    const-string v4, "reset wallpaper "

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 1528
    .local v0, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    if-eqz v3, :cond_0

    .line 1529
    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v3}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 1531
    :cond_0
    new-instance v1, Ljava/io/File;

    iget v3, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-static {v3}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string v4, "wallpaper"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1532
    .local v1, wallpaperFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1533
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1535
    :cond_1
    new-instance v2, Ljava/io/File;

    iget v3, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-static {v3}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string v4, "wallpaper_info.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1536
    .local v2, wallpaperInfoFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1537
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1539
    :cond_2
    return-void
.end method

.method restoreNamedResourceLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)Z
    .locals 21
    .parameter "wallpaper"

    .prologue
    .line 1317
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    const-string v17, "res:"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x4

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1318
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 1320
    .local v14, resName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1321
    .local v10, pkg:Ljava/lang/String;
    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1322
    .local v5, colon:I
    if-lez v5, :cond_0

    .line 1323
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1326
    :cond_0
    const/4 v9, 0x0

    .line 1327
    .local v9, ident:Ljava/lang/String;
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 1328
    .local v15, slash:I
    if-lez v15, :cond_1

    .line 1329
    add-int/lit8 v17, v15, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1332
    :cond_1
    const/16 v16, 0x0

    .line 1333
    .local v16, type:Ljava/lang/String;
    if-lez v5, :cond_2

    if-lez v15, :cond_2

    sub-int v17, v15, v5

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 1334
    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 1337
    :cond_2
    if-eqz v10, :cond_8

    if-eqz v9, :cond_8

    if-eqz v16, :cond_8

    .line 1338
    const/4 v13, -0x1

    .line 1339
    .local v13, resId:I
    const/4 v12, 0x0

    .line 1340
    .local v12, res:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 1342
    .local v7, fos:Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 1343
    .local v4, c:Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1344
    .local v11, r:Landroid/content/res/Resources;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v14, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 1345
    if-nez v13, :cond_5

    .line 1346
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "couldn\'t resolve identifier pkg="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " type="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ident="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1348
    const/16 v17, 0x0

    .line 1373
    if-eqz v12, :cond_3

    .line 1375
    :try_start_1
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 1378
    :cond_3
    :goto_0
    if-eqz v7, :cond_4

    .line 1379
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1381
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1387
    .end local v4           #c:Landroid/content/Context;
    .end local v5           #colon:I
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v9           #ident:Ljava/lang/String;
    .end local v10           #pkg:Ljava/lang/String;
    .end local v11           #r:Landroid/content/res/Resources;
    .end local v12           #res:Ljava/io/InputStream;
    .end local v13           #resId:I
    .end local v14           #resName:Ljava/lang/String;
    .end local v15           #slash:I
    .end local v16           #type:Ljava/lang/String;
    :cond_4
    :goto_1
    return v17

    .line 1351
    .restart local v4       #c:Landroid/content/Context;
    .restart local v5       #colon:I
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #ident:Ljava/lang/String;
    .restart local v10       #pkg:Ljava/lang/String;
    .restart local v11       #r:Landroid/content/res/Resources;
    .restart local v12       #res:Ljava/io/InputStream;
    .restart local v13       #resId:I
    .restart local v14       #resName:Ljava/lang/String;
    .restart local v15       #slash:I
    .restart local v16       #type:Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v12

    .line 1352
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1353
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 1355
    :cond_6
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1357
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .local v8, fos:Ljava/io/FileOutputStream;
    const v17, 0x8000

    :try_start_4
    move/from16 v0, v17

    new-array v3, v0, [B

    .line 1359
    .local v3, buffer:[B
    :goto_2
    invoke-virtual {v12, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, amt:I
    if-lez v2, :cond_9

    .line 1360
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v3, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c

    goto :goto_2

    .line 1366
    .end local v2           #amt:I
    .end local v3           #buffer:[B
    :catch_0
    move-exception v6

    move-object v7, v8

    .line 1367
    .end local v4           #c:Landroid/content/Context;
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v11           #r:Landroid/content/res/Resources;
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package name "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1373
    if-eqz v12, :cond_7

    .line 1375
    :try_start_6
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 1378
    :cond_7
    :goto_4
    if-eqz v7, :cond_8

    .line 1379
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1381
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1387
    .end local v5           #colon:I
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v9           #ident:Ljava/lang/String;
    .end local v10           #pkg:Ljava/lang/String;
    .end local v12           #res:Ljava/io/InputStream;
    .end local v13           #resId:I
    .end local v14           #resName:Ljava/lang/String;
    .end local v15           #slash:I
    .end local v16           #type:Ljava/lang/String;
    :cond_8
    :goto_5
    const/16 v17, 0x0

    goto :goto_1

    .line 1364
    .restart local v2       #amt:I
    .restart local v3       #buffer:[B
    .restart local v4       #c:Landroid/content/Context;
    .restart local v5       #colon:I
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #ident:Ljava/lang/String;
    .restart local v10       #pkg:Ljava/lang/String;
    .restart local v11       #r:Landroid/content/res/Resources;
    .restart local v12       #res:Ljava/io/InputStream;
    .restart local v13       #resId:I
    .restart local v14       #resName:Ljava/lang/String;
    .restart local v15       #slash:I
    .restart local v16       #type:Ljava/lang/String;
    :cond_9
    :try_start_8
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Restored wallpaper: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    .line 1365
    const/16 v17, 0x1

    .line 1373
    if-eqz v12, :cond_a

    .line 1375
    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    .line 1378
    :cond_a
    :goto_6
    if-eqz v8, :cond_4

    .line 1379
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1381
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    .line 1382
    .end local v2           #amt:I
    .end local v3           #buffer:[B
    .end local v8           #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v18

    goto/16 :goto_1

    .line 1368
    .end local v4           #c:Landroid/content/Context;
    .end local v11           #r:Landroid/content/res/Resources;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v6

    .line 1369
    .local v6, e:Landroid/content/res/Resources$NotFoundException;
    :goto_7
    :try_start_b
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Resource not found: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1373
    if-eqz v12, :cond_b

    .line 1375
    :try_start_c
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 1378
    :cond_b
    :goto_8
    if-eqz v7, :cond_8

    .line 1379
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1381
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_5

    .line 1382
    .end local v6           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v17

    goto :goto_5

    .line 1370
    :catch_4
    move-exception v6

    .line 1371
    .local v6, e:Ljava/io/IOException;
    :goto_9
    :try_start_e
    const-string v17, "WallpaperManagerService"

    const-string v18, "IOException while restoring wallpaper "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1373
    if-eqz v12, :cond_c

    .line 1375
    :try_start_f
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 1378
    :cond_c
    :goto_a
    if-eqz v7, :cond_8

    .line 1379
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1381
    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    goto :goto_5

    .line 1373
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    :goto_b
    if-eqz v12, :cond_d

    .line 1375
    :try_start_11
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    .line 1378
    :cond_d
    :goto_c
    if-eqz v7, :cond_e

    .line 1379
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1381
    :try_start_12
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    .line 1373
    :cond_e
    :goto_d
    throw v17

    .line 1376
    :catch_5
    move-exception v18

    goto :goto_c

    .line 1382
    :catch_6
    move-exception v18

    goto :goto_d

    .line 1376
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_7
    move-exception v17

    goto/16 :goto_4

    .local v6, e:Landroid/content/res/Resources$NotFoundException;
    :catch_8
    move-exception v17

    goto :goto_8

    .local v6, e:Ljava/io/IOException;
    :catch_9
    move-exception v17

    goto :goto_a

    .end local v6           #e:Ljava/io/IOException;
    .restart local v4       #c:Landroid/content/Context;
    .restart local v11       #r:Landroid/content/res/Resources;
    :catch_a
    move-exception v18

    goto/16 :goto_0

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #amt:I
    .restart local v3       #buffer:[B
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v18

    goto :goto_6

    .line 1373
    .end local v2           #amt:I
    .end local v3           #buffer:[B
    :catchall_1
    move-exception v17

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    goto :goto_b

    .line 1370
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    :catch_c
    move-exception v6

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    goto :goto_9

    .line 1368
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    :catch_d
    move-exception v6

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 1366
    .end local v4           #c:Landroid/content/Context;
    .end local v11           #r:Landroid/content/res/Resources;
    :catch_e
    move-exception v6

    goto/16 :goto_3
.end method

.method public setDimensionHints(II)V
    .locals 6
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 669
    const-string v2, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v2}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 670
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 671
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 672
    .local v0, userId:I
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 673
    .local v1, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v1, :cond_0

    .line 674
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper not yet initialized for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 696
    .end local v0           #userId:I
    .end local v1           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 676
    .restart local v0       #userId:I
    .restart local v1       #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    .line 677
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "width and height must be > 0"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 680
    :cond_2
    iget v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    if-ne p1, v2, :cond_3

    iget v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    if-eq p2, v2, :cond_5

    .line 681
    :cond_3
    iput p1, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    .line 682
    iput p2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    .line 683
    invoke-direct {p0, v1}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 684
    iget v2, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    if-eq v2, v0, :cond_4

    monitor-exit v3

    .line 697
    :goto_0
    return-void

    .line 685
    :cond_4
    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_5

    .line 686
    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    .line 688
    :try_start_2
    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v2, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 692
    :goto_1
    :try_start_3
    invoke-direct {p0, v1}, Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 696
    :cond_5
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 690
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .parameter "name"

    .prologue
    .line 757
    const-string v5, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v5}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 758
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 759
    :try_start_0
    const-string v5, "WallpaperManagerService"

    const-string v7, "setWallpaper"

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 766
    .local v3, userId:I
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 767
    .local v4, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_0

    .line 768
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wallpaper not yet initialized for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 780
    .end local v3           #userId:I
    .end local v4           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 770
    .restart local v3       #userId:I
    .restart local v4       #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 772
    .local v0, ident:J
    :try_start_2
    invoke-virtual {p0, p1, v4}, Lcom/android/server/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 773
    .local v2, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    .line 774
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 778
    :cond_1
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 776
    monitor-exit v6

    return-object v2

    .line 778
    .end local v2           #pfd:Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 10
    .parameter "name"

    .prologue
    .line 814
    const-string v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v0}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 815
    iget-object v9, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 816
    :try_start_0
    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWallpaperComponent name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 818
    .local v8, userId:I
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 819
    .local v4, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_0

    .line 820
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper not yet initialized for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    .end local v4           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    .end local v8           #userId:I
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 822
    .restart local v4       #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    .restart local v8       #userId:I
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 824
    .local v6, ident:J
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 825
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 827
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 829
    monitor-exit v9

    .line 830
    return-void

    .line 827
    :catchall_1
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method settingsRestored()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1271
    const-string v1, "WallpaperManagerService"

    const-string v2, "settingsRestored"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    const/4 v5, 0x0

    .line 1273
    .local v5, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    const/4 v7, 0x0

    .line 1274
    .local v7, success:Z
    iget-object v8, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1275
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 1276
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    move-object v5, v0

    .line 1277
    iget-object v1, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    iget-object v1, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    sget-object v2, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1279
    iget-object v2, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1284
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1286
    :cond_0
    const/4 v7, 0x1

    .line 1303
    :cond_1
    :goto_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1305
    if-nez v7, :cond_2

    .line 1306
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to restore wallpaper: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const-string v1, ""

    iput-object v1, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1308
    invoke-static {v9}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1311
    :cond_2
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1312
    :try_start_1
    invoke-direct {p0, v5}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 1313
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1314
    return-void

    .line 1290
    :cond_3
    :try_start_2
    const-string v1, ""

    iget-object v2, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1291
    const-string v1, "WallpaperManagerService"

    const-string v2, "settingsRestored: name is empty"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    const/4 v7, 0x1

    .line 1297
    :goto_1
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settingsRestored: success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    if-eqz v7, :cond_1

    .line 1299
    iget-object v2, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_0

    .line 1303
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1294
    :cond_4
    :try_start_3
    const-string v1, "WallpaperManagerService"

    const-string v2, "settingsRestored: attempting to restore named resource"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    invoke-virtual {p0, v5}, Lcom/android/server/WallpaperManagerService;->restoreNamedResourceLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    goto :goto_1

    .line 1313
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .locals 3
    .parameter "userId"
    .parameter "reply"

    .prologue
    .line 567
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 568
    :try_start_0
    iput p1, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    .line 569
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 570
    .local v0, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_0

    .line 571
    new-instance v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .end local v0           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    invoke-direct {v0, p0, p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;-><init>(Lcom/android/server/WallpaperManagerService;I)V

    .line 572
    .restart local v0       #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 573
    invoke-direct {p0, p1}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 576
    :cond_0
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    if-nez v1, :cond_1

    .line 577
    new-instance v1, Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    iput-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    .line 578
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 580
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/android/server/WallpaperManagerService;->switchWallpaper(Lcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 581
    monitor-exit v2

    .line 582
    return-void

    .line 581
    .end local v0           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method switchWallpaper(Lcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .locals 9
    .parameter "wallpaper"
    .parameter "reply"

    .prologue
    .line 585
    iget-object v8, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 586
    const/4 v6, 0x0

    .line 588
    .local v6, e:Ljava/lang/RuntimeException;
    :try_start_0
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 590
    .local v1, cname:Landroid/content/ComponentName;
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    .end local v1           #cname:Landroid/content/ComponentName;
    :goto_1
    return-void

    .line 588
    :cond_0
    :try_start_2
    iget-object v1, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 593
    :catch_0
    move-exception v7

    .line 594
    .local v7, e1:Ljava/lang/RuntimeException;
    move-object v6, v7

    .line 596
    .end local v7           #e1:Ljava/lang/RuntimeException;
    :cond_1
    :try_start_3
    const-string v0, "WallpaperManagerService"

    const-string v2, "Failure starting previous wallpaper"

    invoke-static {v0, v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    const/4 v0, 0x0

    iget v2, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p0, v0, v2, p2}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 598
    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 5

    .prologue
    .line 474
    const-string v3, "WallpaperManagerService"

    const-string v4, "systemReady"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 476
    .local v2, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/WallpaperManagerService;->switchWallpaper(Lcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 477
    new-instance v3, Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    iput-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    .line 478
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v3}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 480
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 481
    .local v1, userFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    const-string v3, "android.intent.action.USER_STOPPING"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/WallpaperManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/WallpaperManagerService$1;-><init>(Lcom/android/server/WallpaperManagerService;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 518
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/WallpaperManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/WallpaperManagerService$2;-><init>(Lcom/android/server/WallpaperManagerService;)V

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 531
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .parameter "name"
    .parameter "wallpaper"

    .prologue
    const/4 v4, 0x0

    .line 784
    if-nez p1, :cond_0

    const-string p1, ""

    .line 786
    :cond_0
    :try_start_0
    iget v5, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v5}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 787
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 789
    const-string v5, "WallpaperManagerService"

    const-string v6, "WALLPAPER_DIR doesn\'t exist, recreate and start watching it"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v5, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v5}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 791
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 792
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 796
    iget-object v5, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v5}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 799
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 800
    .local v3, file:Ljava/io/File;
    const/high16 v5, 0x3800

    invoke-static {v3, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 802
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v2, v4

    .line 810
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #file:Ljava/io/File;
    :goto_0
    return-object v2

    .line 805
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #file:Ljava/io/File;
    :cond_2
    iput-object p1, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 807
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 808
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v5, "WallpaperManagerService"

    const-string v6, "Error setting wallpaper"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 810
    goto :goto_0
.end method
