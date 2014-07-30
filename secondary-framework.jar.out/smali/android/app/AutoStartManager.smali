.class public Landroid/app/AutoStartManager;
.super Ljava/lang/Object;
.source "AutoStartManager.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "autostart"

.field public static final STATE_AUTOSTART_ENABLE:I = 0x0

.field public static final STATE_AUTOSTART_FORBIDDEN:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Landroid/app/IAutoStartManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/IAutoStartManager;)V
    .locals 0
    .parameter "context"
    .parameter "service"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/app/AutoStartManager;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Landroid/app/AutoStartManager;->mService:Landroid/app/IAutoStartManager;

    .line 50
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/app/AutoStartManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const-string v0, "autostart"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AutoStartManager;

    return-object v0
.end method


# virtual methods
.method public getAutoStartState(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Landroid/app/AutoStartManager;->mService:Landroid/app/IAutoStartManager;

    invoke-interface {v1, p1}, Landroid/app/IAutoStartManager;->getAutoStartState(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 85
    :goto_0
    return v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAutoStartState(Ljava/lang/String;I)Z
    .locals 2
    .parameter "packageName"
    .parameter "state"

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Landroid/app/AutoStartManager;->mService:Landroid/app/IAutoStartManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IAutoStartManager;->setAutoStartState(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 69
    :goto_0
    return v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    const/4 v1, 0x0

    goto :goto_0
.end method
