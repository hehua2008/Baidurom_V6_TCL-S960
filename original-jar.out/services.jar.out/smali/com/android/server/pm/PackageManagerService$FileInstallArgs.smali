.class Lcom/android/server/pm/PackageManagerService$FileInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileInstallArgs"
.end annotation


# instance fields
.field codeFileName:Ljava/lang/String;

.field created:Z

.field installDir:Ljava/io/File;

.field libraryPath:Ljava/lang/String;

.field resourceFileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "packageURI"
    .parameter "pkgName"
    .parameter "dataDir"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 7359
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v0, p0

    move-object v1, p2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    .line 7360
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;)V

    .line 7342
    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    .line 7361
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->isFwdLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    :goto_0
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    .line 7362
    const-string v0, ".apk"

    #calls: Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p3, v0}, Lcom/android/server/pm/PackageManagerService;->access$3600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 7363
    .local v7, apkName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 7364
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePathFromCodePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 7365
    new-instance v0, Ljava/io/File;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mAppLibInstallDir:Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->access$3700(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    .line 7366
    return-void

    .line 7361
    .end local v7           #apkName:Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 7
    .parameter
    .parameter "params"

    .prologue
    .line 7344
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 7345
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getPackageUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    iget v3, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    iget-object v4, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;)V

    .line 7342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    .line 7348
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "fullCodePath"
    .parameter "fullResourcePath"
    .parameter "nativeLibraryPath"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 7350
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    .line 7351
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;)V

    .line 7342
    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    .line 7352
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7353
    .local v7, codeFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    .line 7354
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 7355
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 7356
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    .line 7357
    return-void
.end method

.method private cleanUp()Z
    .locals 9

    .prologue
    .line 7599
    const/4 v3, 0x1

    .line 7600
    .local v3, ret:Z
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v4

    .line 7601
    .local v4, sourceDir:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v1

    .line 7602
    .local v1, publicSourceDir:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 7603
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7604
    .local v5, sourceFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 7605
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package source "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not exist."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7606
    const/4 v3, 0x0

    .line 7609
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 7611
    .end local v5           #sourceFile:Ljava/io/File;
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 7612
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7613
    .local v2, publicSourceFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 7614
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package public source "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not exist."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7616
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 7617
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 7621
    .end local v2           #publicSourceFile:Ljava/io/File;
    :cond_3
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 7622
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7623
    .local v0, nativeLibraryFile:Ljava/io/File;
    invoke-static {v0}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;)Z

    .line 7624
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_4

    .line 7625
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t delete native library directory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7629
    .end local v0           #nativeLibraryFile:Ljava/io/File;
    :cond_4
    return v3
.end method

.method private getLibraryPathFromCodePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 7587
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mAppLibInstallDir:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$3700(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->getApkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResourcePathFromCodePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 7562
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v0

    .line 7563
    .local v0, codePath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->isFwdLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7566
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7567
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7568
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->getApkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7569
    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7576
    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7577
    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7580
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7582
    .end local v0           #codePath:Ljava/lang/String;
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-object v0
.end method

.method private setPermissions()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 7647
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->isFwdLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7648
    const/16 v0, 0x1a4

    .line 7651
    .local v0, filePermissions:I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a4

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v1

    .line 7652
    .local v1, retCode:I
    if-eqz v1, :cond_0

    .line 7653
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t set new package file permissions for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". The return code was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7657
    const/4 v2, 0x0

    .line 7661
    .end local v0           #filePermissions:I
    .end local v1           #retCode:I
    :cond_0
    return v2
.end method


# virtual methods
.method checkFreeStorage(Lcom/android/internal/app/IMediaContainerService;)Z
    .locals 8
    .parameter "imcs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 7371
    const-string v3, "devicestoragemonitor"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceStorageMonitorService;

    .line 7373
    .local v0, dsm:Lcom/android/server/DeviceStorageMonitorService;
    if-nez v0, :cond_0

    .line 7374
    const-string v3, "PackageManager"

    const-string v4, "Couldn\'t get low memory threshold; no free limit imposed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7375
    const-wide/16 v1, 0x0

    .line 7386
    .local v1, lowThreshold:J
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "com.android.defcontainer"

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 7388
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->isFwdLocked()Z

    move-result v4

    invoke-interface {p1, v3, v4, v1, v2}, Lcom/android/internal/app/IMediaContainerService;->checkInternalFreeStorage(Landroid/net/Uri;ZJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 7390
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 7388
    .end local v1           #lowThreshold:J
    :goto_1
    return v3

    .line 7377
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/DeviceStorageMonitorService;->isMemoryLow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7378
    const-string v3, "PackageManager"

    const-string v4, "Memory is reported as being too low; aborting package install"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7379
    const/4 v3, 0x0

    goto :goto_1

    .line 7382
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/DeviceStorageMonitorService;->getMemoryLowThreshold()J

    move-result-wide v1

    .restart local v1       #lowThreshold:J
    goto :goto_0

    .line 7390
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v3
.end method

.method cleanUpResourcesLI()V
    .locals 5

    .prologue
    .line 7633
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    .line 7634
    .local v1, sourceDir:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7635
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Installer;->rmdex(Ljava/lang/String;)I

    move-result v0

    .line 7636
    .local v0, retCode:I
    if-gez v0, :cond_0

    .line 7637
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t remove dex file for package:  at location "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", retcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7643
    .end local v0           #retCode:I
    :cond_0
    return-void
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .locals 12
    .parameter "imcs"
    .parameter "temp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v1, -0x4

    .line 7417
    if-eqz p2, :cond_1

    .line 7420
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->createCopyFile()V

    .line 7421
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 7423
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to create temp copy package on : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7490
    :cond_0
    :goto_0
    return v1

    .line 7428
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7429
    .local v0, codeFile:Ljava/io/File;
    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    if-nez v7, :cond_2

    .line 7431
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 7433
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->setPermissions()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 7442
    :cond_2
    const/4 v5, 0x0

    .line 7444
    .local v5, out:Landroid/os/ParcelFileDescriptor;
    const/high16 v7, 0x3000

    :try_start_1
    invoke-static {v0, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 7450
    const/4 v6, -0x4

    .line 7452
    .local v6, ret:I
    :try_start_2
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v8, "com.android.defcontainer"

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 7454
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-interface {p1, v7, v8, v5}, Lcom/android/internal/app/IMediaContainerService;->copyResource(Landroid/net/Uri;Landroid/content/pm/ContainerEncryptionParams;Landroid/os/ParcelFileDescriptor;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 7456
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 7457
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v11}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 7460
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->isFwdLocked()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 7461
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7465
    .local v2, destResourceFile:Ljava/io/File;
    :try_start_3
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    invoke-static {v7, v2}, Lcom/android/internal/content/PackageHelper;->extractPublicFiles(Ljava/lang/String;Ljava/io/File;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 7474
    .end local v2           #destResourceFile:Ljava/io/File;
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getNativeLibraryPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7475
    .local v4, nativeLibraryFile:Ljava/io/File;
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Copying native libraries to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7476
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 7477
    invoke-static {v4}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;)Z

    .line 7478
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 7481
    :cond_4
    :try_start_4
    #calls: Lcom/android/server/pm/PackageManagerService;->copyNativeLibrariesForInternalApp(Ljava/io/File;Ljava/io/File;)I
    invoke-static {v0, v4}, Lcom/android/server/pm/PackageManagerService;->access$3800(Ljava/io/File;Ljava/io/File;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v1

    .line 7482
    .local v1, copyRet:I
    if-ne v1, v11, :cond_0

    .end local v1           #copyRet:I
    :goto_1
    move v1, v6

    .line 7490
    goto/16 :goto_0

    .line 7437
    .end local v4           #nativeLibraryFile:Ljava/io/File;
    .end local v5           #out:Landroid/os/ParcelFileDescriptor;
    .end local v6           #ret:I
    :catch_0
    move-exception v3

    .line 7438
    .local v3, e:Ljava/io/IOException;
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to create file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7445
    .end local v3           #e:Ljava/io/IOException;
    .restart local v5       #out:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v3

    .line 7446
    .local v3, e:Ljava/io/FileNotFoundException;
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to create file descriptor for : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7456
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .restart local v6       #ret:I
    :catchall_0
    move-exception v7

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 7457
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v11}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 7456
    throw v7

    .line 7466
    .restart local v2       #destResourceFile:Ljava/io/File;
    :catch_2
    move-exception v3

    .line 7467
    .local v3, e:Ljava/io/IOException;
    const-string v7, "PackageManager"

    const-string v8, "Couldn\'t create a new zip file for the public parts of a forward-locked app."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7469
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 7485
    .end local v2           #destResourceFile:Ljava/io/File;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #nativeLibraryFile:Ljava/io/File;
    :catch_3
    move-exception v3

    .line 7486
    .restart local v3       #e:Ljava/io/IOException;
    const-string v7, "PackageManager"

    const-string v8, "Copying native libraries failed"

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7487
    const/16 v6, -0x6e

    goto :goto_1
.end method

.method createCopyFile()V
    .locals 3

    .prologue
    .line 7399
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->isFwdLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    :goto_0
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    .line 7402
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    #calls: Lcom/android/server/pm/PackageManagerService;->createTempPackageFile(Ljava/io/File;)Ljava/io/File;
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$2500(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 7403
    .local v0, codeFile:Ljava/io/File;
    if-eqz v0, :cond_1

    .line 7404
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 7411
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePathFromCodePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 7412
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getLibraryPathFromCodePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    .line 7413
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    .line 7414
    :goto_1
    return-void

    .line 7399
    .end local v0           #codeFile:Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    goto :goto_0

    .line 7407
    .restart local v0       #codeFile:Ljava/io/File;
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    goto :goto_1
.end method

.method doPostDeleteLI(Z)Z
    .locals 1
    .parameter "delete"

    .prologue
    .line 7666
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUpResourcesLI()V

    .line 7667
    const/4 v0, 0x1

    return v0
.end method

.method doPostInstall(II)I
    .locals 1
    .parameter "status"
    .parameter "uid"

    .prologue
    .line 7551
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 7552
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 7554
    :cond_0
    return p1
.end method

.method doPreInstall(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 7494
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 7495
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 7497
    :cond_0
    return p1
.end method

.method doRename(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "status"
    .parameter "pkgName"
    .parameter "oldCodePath"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 7501
    if-eq p1, v8, :cond_1

    .line 7502
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 7546
    :cond_0
    :goto_0
    return v7

    .line 7505
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7506
    .local v4, oldCodeFile:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7507
    .local v6, oldResourceFile:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getNativeLibraryPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7510
    .local v5, oldLibraryFile:Ljava/io/File;
    const-string v9, ".apk"

    #calls: Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p3, p2, v9}, Lcom/android/server/pm/PackageManagerService;->access$3600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7511
    .local v0, apkName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".apk"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7512
    .local v1, newCodeFile:Ljava/io/File;
    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 7515
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 7518
    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePathFromCodePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7519
    .local v3, newResFile:Ljava/io/File;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->isFwdLocked()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v6, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 7522
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 7525
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getLibraryPathFromCodePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7526
    .local v2, newLibraryFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 7527
    invoke-static {v2}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;)Z

    .line 7528
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 7530
    :cond_3
    invoke-virtual {v5, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 7531
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot rename native library directory "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7535
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    .line 7538
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->setPermissions()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 7542
    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v8

    .line 7546
    goto/16 :goto_0
.end method

.method getCodePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7395
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    return-object v0
.end method

.method getNativeLibraryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7592
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 7593
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getLibraryPathFromCodePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    .line 7595
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    return-object v0
.end method

.method getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7558
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    return-object v0
.end method
