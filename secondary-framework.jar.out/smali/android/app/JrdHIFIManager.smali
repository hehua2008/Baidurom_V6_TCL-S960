.class public Landroid/app/JrdHIFIManager;
.super Ljava/lang/Object;
.source "JrdHIFIManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JrdHIFIManager"


# instance fields
.field private mService:Landroid/app/IJrdHIFI;


# direct methods
.method constructor <init>(Landroid/app/IJrdHIFI;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/JrdHIFIManager;->mService:Landroid/app/IJrdHIFI;

    .line 40
    iput-object p1, p0, Landroid/app/JrdHIFIManager;->mService:Landroid/app/IJrdHIFI;

    .line 41
    return-void
.end method


# virtual methods
.method public getHIFIStatus()I
    .locals 6

    .prologue
    const/4 v2, -0x2

    .line 71
    const-string v3, "JrdHIFIManager"

    const-string v4, " getHIFIStatus"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :try_start_0
    iget-object v3, p0, Landroid/app/JrdHIFIManager;->mService:Landroid/app/IJrdHIFI;

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, p0, Landroid/app/JrdHIFIManager;->mService:Landroid/app/IJrdHIFI;

    invoke-interface {v3}, Landroid/app/IJrdHIFI;->getHIFIStatus()I

    move-result v1

    .line 75
    .local v1, hifi:I
    const-string v3, "JrdHIFIManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHIFIStatus hifi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v3, p0, Landroid/app/JrdHIFIManager;->mService:Landroid/app/IJrdHIFI;

    invoke-interface {v3}, Landroid/app/IJrdHIFI;->getHIFIStatus()I

    move-result v2

    .line 84
    .end local v1           #hifi:I
    :goto_0
    return v2

    .line 78
    :cond_0
    const-string v3, "JrdHIFIManager"

    const-string v4, " Jrd HI-FI service is not publishing ... "

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "JrdHIFIManager"

    const-string v4, " RemoteException happened "

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setHIFIStatus(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 50
    const-string v1, "JrdHIFIManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setHIFIStatus status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :try_start_0
    iget-object v1, p0, Landroid/app/JrdHIFIManager;->mService:Landroid/app/IJrdHIFI;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Landroid/app/JrdHIFIManager;->mService:Landroid/app/IJrdHIFI;

    invoke-interface {v1, p1}, Landroid/app/IJrdHIFI;->setHIFIStatus(I)V

    .line 61
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v1, "JrdHIFIManager"

    const-string v2, " Jrd HI-FI service is not publishing ... "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "JrdHIFIManager"

    const-string v2, " RemoteException happened "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
