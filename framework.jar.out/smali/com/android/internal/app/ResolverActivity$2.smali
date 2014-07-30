.class Lcom/android/internal/app/ResolverActivity$2;
.super Ljava/lang/Thread;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->resetWallpaperSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$2;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$2;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mWallpaperManager:Landroid/app/WallpaperManager;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Landroid/app/WallpaperManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$2;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mWallpaperWidth:I
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$100(Lcom/android/internal/app/ResolverActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$2;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mWallpaperHeight:I
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
