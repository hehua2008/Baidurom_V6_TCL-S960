.class Lcom/android/server/WallpaperManagerService$WallpaperData;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperData"
.end annotation


# instance fields
.field private callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

.field height:I

.field imageWallpaperPending:Z

.field lastDiedTime:J

.field name:Ljava/lang/String;

.field nextWallpaperComponent:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;

.field userId:I

.field wallpaperComponent:Landroid/content/ComponentName;

.field wallpaperFile:Ljava/io/File;

.field wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

.field wallpaperUpdating:Z

.field width:I


# direct methods
.method constructor <init>(Lcom/android/server/WallpaperManagerService;I)V
    .locals 3
    .parameter
    .parameter "userId"

    .prologue
    const/4 v1, -0x1

    .line 213
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperData;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 207
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    .line 210
    iput v1, p0, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    .line 211
    iput v1, p0, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    .line 214
    iput p2, p0, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    .line 215
    #getter for: Lcom/android/server/WallpaperManagerService;->mSmartBookPlug:Z
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->access$400(Lcom/android/server/WallpaperManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Ljava/io/File;

    #calls: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {p2}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "smartbook_wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    new-instance v0, Ljava/io/File;

    #calls: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {p2}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    goto :goto_0
.end method

.method static synthetic access$800(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method
