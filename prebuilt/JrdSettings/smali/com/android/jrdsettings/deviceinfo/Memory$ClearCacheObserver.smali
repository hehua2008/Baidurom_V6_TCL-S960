.class Lcom/android/jrdsettings/deviceinfo/Memory$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearCacheObserver"
.end annotation


# instance fields
.field private mRemaining:I

.field private final mTarget:Lcom/android/jrdsettings/deviceinfo/Memory;


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/deviceinfo/Memory;I)V
    .locals 0
    .parameter "target"
    .parameter "remaining"

    .prologue
    .line 692
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 693
    iput-object p1, p0, Lcom/android/jrdsettings/deviceinfo/Memory$ClearCacheObserver;->mTarget:Lcom/android/jrdsettings/deviceinfo/Memory;

    .line 694
    iput p2, p0, Lcom/android/jrdsettings/deviceinfo/Memory$ClearCacheObserver;->mRemaining:I

    .line 695
    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "succeeded"

    .prologue
    .line 699
    monitor-enter p0

    .line 700
    :try_start_0
    iget v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory$ClearCacheObserver;->mRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory$ClearCacheObserver;->mRemaining:I

    if-nez v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory$ClearCacheObserver;->mTarget:Lcom/android/jrdsettings/deviceinfo/Memory;

    #calls: Lcom/android/jrdsettings/deviceinfo/Memory;->onCacheCleared()V
    invoke-static {v0}, Lcom/android/jrdsettings/deviceinfo/Memory;->access$1400(Lcom/android/jrdsettings/deviceinfo/Memory;)V

    .line 703
    :cond_0
    monitor-exit p0

    .line 704
    return-void

    .line 703
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
