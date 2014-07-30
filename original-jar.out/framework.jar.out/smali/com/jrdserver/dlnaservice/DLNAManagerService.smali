.class public Lcom/jrdserver/dlnaservice/DLNAManagerService;
.super Ljrdcom/dlnaservice/IDLNAManager$Stub;
.source "DLNAManagerService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DLNAServiceApk"

.field private static mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;


# instance fields
.field private mBoot:Z

.field private mContext:Landroid/content/Context;

.field mDLNAReciver:Landroid/content/BroadcastReceiver;

.field private mEnable:Z

.field private mRegister:Z

.field private mTVlistenner:Ljrdcom/dlnaservice/ITVListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;-><init>()V

    .line 37
    iput-boolean v1, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mEnable:Z

    .line 38
    iput-boolean v1, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mRegister:Z

    .line 39
    iput-boolean v1, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mBoot:Z

    .line 51
    new-instance v1, Lcom/jrdserver/dlnaservice/DLNAManagerService$1;

    invoke-direct {v1, p0}, Lcom/jrdserver/dlnaservice/DLNAManagerService$1;-><init>(Lcom/jrdserver/dlnaservice/DLNAManagerService;)V

    iput-object v1, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDLNAReciver:Landroid/content/BroadcastReceiver;

    .line 43
    iput-object p1, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDLNAReciver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/jrdserver/dlnaservice/DLNAManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jrdserver/dlnaservice/DLNAManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mRegister:Z

    return v0
.end method

.method static synthetic access$200(Lcom/jrdserver/dlnaservice/DLNAManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mEnable:Z

    return v0
.end method

.method static synthetic access$202(Lcom/jrdserver/dlnaservice/DLNAManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mEnable:Z

    return p1
.end method

.method static synthetic access$302(Lcom/jrdserver/dlnaservice/DLNAManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mBoot:Z

    return p1
.end method


# virtual methods
.method public getCurrentDevice(Ljava/lang/String;)Ljrdcom/dlnaservice/DeviceInfo;
    .locals 1
    .parameter "identification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 242
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-nez v0, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 244
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1}, Ljrdcom/dlnaservice/IDLNACallBack;->getCurrentDevice(Ljava/lang/String;)Ljrdcom/dlnaservice/DeviceInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "identification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1}, Ljrdcom/dlnaservice/IDLNACallBack;->getCurrentDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentDeviceSupportMediaType(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "identification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 226
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1}, Ljrdcom/dlnaservice/IDLNACallBack;->getCurrentDeviceSupportMediaType(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentDeviceUid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "identification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 217
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1}, Ljrdcom/dlnaservice/IDLNACallBack;->getCurrentDeviceUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDevicelist()[Ljrdcom/dlnaservice/DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 234
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 236
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0}, Ljrdcom/dlnaservice/IDLNACallBack;->getDevicelist()[Ljrdcom/dlnaservice/DeviceInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviousFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "identification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 415
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-nez v0, :cond_0

    .line 416
    const/4 v0, 0x0

    .line 417
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1}, Ljrdcom/dlnaservice/IDLNACallBack;->getPreviousFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getWifiName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 194
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mEnable:Z

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0}, Ljrdcom/dlnaservice/IDLNACallBack;->getWifiName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasConnected()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 209
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 211
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0}, Ljrdcom/dlnaservice/IDLNACallBack;->hasConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mEnable:Z

    return v0
.end method

.method public mediaControlGetCurPlayPosition(Ljava/lang/String;)J
    .locals 2
    .parameter "identification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 400
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-nez v0, :cond_0

    .line 401
    const-wide/16 v0, -0x1

    .line 402
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1}, Ljrdcom/dlnaservice/IDLNACallBack;->mediaControlGetCurPlayPosition(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public mediaControlGetMediaDuration(Ljava/lang/String;)J
    .locals 2
    .parameter "identification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 392
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-nez v0, :cond_0

    .line 393
    const-wide/16 v0, -0x1

    .line 394
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1}, Ljrdcom/dlnaservice/IDLNACallBack;->mediaControlGetMediaDuration(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public mediaControlGetMediaInfo(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter "identification"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 305
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-eqz v0, :cond_0

    .line 306
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1}, Ljrdcom/dlnaservice/IDLNACallBack;->mediaControlGetMediaInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mediaControlGetPlayState(Ljava/lang/String;)I
    .locals 1
    .parameter "identification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 368
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-nez v0, :cond_0

    .line 369
    const/4 v0, -0x1

    .line 370
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1}, Ljrdcom/dlnaservice/IDLNACallBack;->mediaControlGetPlayState(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public mediaControlGetVolume(Ljava/lang/String;)I
    .locals 1
    .parameter "identification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 264
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-nez v0, :cond_0

    .line 265
    const/4 v0, -0x1

    .line 266
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1}, Ljrdcom/dlnaservice/IDLNACallBack;->mediaControlGetVolume(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public mediaControlPause(Ljava/lang/String;)Z
    .locals 1
    .parameter "identification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 272
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1}, Ljrdcom/dlnaservice/IDLNACallBack;->mediaControlPause(Ljava/lang/String;)Z

    move-result v0

    .line 274
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mediaControlPlay(Ljava/lang/String;)Z
    .locals 1
    .parameter "identification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 288
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-eqz v0, :cond_0

    .line 289
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1}, Ljrdcom/dlnaservice/IDLNACallBack;->mediaControlPlay(Ljava/lang/String;)Z

    move-result v0

    .line 290
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mediaControlPlayCurr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "path"
    .parameter "fileType"
    .parameter "identification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 342
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-nez v0, :cond_0

    .line 343
    const/4 v0, 0x0

    .line 344
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1, p2, p3}, Ljrdcom/dlnaservice/IDLNACallBack;->mediaControlPlayCurr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public mediaControlPlayNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "path"
    .parameter "type"
    .parameter "identification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 360
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-nez v0, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 362
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1, p2, p3}, Ljrdcom/dlnaservice/IDLNACallBack;->mediaControlPlayNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public mediaControlPlayPrev(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "path"
    .parameter "type"
    .parameter "identification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 376
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-nez v0, :cond_0

    .line 377
    const/4 v0, 0x0

    .line 378
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1, p2, p3}, Ljrdcom/dlnaservice/IDLNACallBack;->mediaControlPlayPrev(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public mediaControlSearch(Z)Z
    .locals 1
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 312
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-eqz v0, :cond_0

    .line 313
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1}, Ljrdcom/dlnaservice/IDLNACallBack;->mediaControlSearch(Z)Z

    move-result v0

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mediaControlSeek(JLjava/lang/String;)Z
    .locals 1
    .parameter "position"
    .parameter "identification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 296
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-eqz v0, :cond_0

    .line 297
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1, p2, p3}, Ljrdcom/dlnaservice/IDLNACallBack;->mediaControlSeek(JLjava/lang/String;)Z

    move-result v0

    .line 298
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mediaControlSetVolume(ILjava/lang/String;)Z
    .locals 1
    .parameter "time"
    .parameter "identification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 384
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-eqz v0, :cond_0

    .line 385
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1, p2}, Ljrdcom/dlnaservice/IDLNACallBack;->mediaControlSetVolume(ILjava/lang/String;)Z

    move-result v0

    .line 386
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mediaControlStop(Ljava/lang/String;)Z
    .locals 1
    .parameter "identification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 280
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-eqz v0, :cond_0

    .line 281
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1}, Ljrdcom/dlnaservice/IDLNACallBack;->mediaControlStop(Ljava/lang/String;)Z

    move-result v0

    .line 282
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mediaControlStreamPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "urlStr"
    .parameter "name"
    .parameter "identification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 351
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-nez v0, :cond_0

    .line 352
    const/4 v0, 0x0

    .line 353
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1, p2, p3}, Ljrdcom/dlnaservice/IDLNACallBack;->mediaControlStreamPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public registerDLNACallBack(Ljrdcom/dlnaservice/IDLNACallBack;)V
    .locals 6
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 115
    iget-object v2, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dlna_mode_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 117
    .local v1, dLNAStatus:I
    const-string v2, "DLNAServiceApk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerDLNACallBack  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mBoot:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sput-object p1, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    .line 121
    iget-boolean v2, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mBoot:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mEnable:Z

    if-eqz v2, :cond_0

    .line 122
    new-instance v0, Lcom/jrdserver/dlnaservice/DLNAManagerService$2;

    invoke-direct {v0, p0}, Lcom/jrdserver/dlnaservice/DLNAManagerService$2;-><init>(Lcom/jrdserver/dlnaservice/DLNAManagerService;)V

    .line 134
    .local v0, asy:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Integer;>;"
    new-array v2, v5, [Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    .end local v0           #asy:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Integer;>;"
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mRegister:Z

    .line 138
    return-void
.end method

.method public restartWork()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v2, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dlna_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 179
    .local v0, dLNAStatus:I
    if-nez v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v1

    .line 181
    :cond_1
    sget-object v2, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-eqz v2, :cond_0

    .line 183
    sget-object v1, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v1}, Ljrdcom/dlnaservice/IDLNACallBack;->restartInnerWork()Z

    move-result v1

    goto :goto_0
.end method

.method public setCallbackListenerInner(Ljrdcom/dlnaservice/ITVListener;)V
    .locals 1
    .parameter "listenner"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 319
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-eqz v0, :cond_0

    .line 320
    iput-object p1, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mTVlistenner:Ljrdcom/dlnaservice/ITVListener;

    .line 321
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1}, Ljrdcom/dlnaservice/IDLNACallBack;->setCallbackListenerInner(Ljrdcom/dlnaservice/ITVListener;)V

    .line 323
    :cond_0
    return-void
.end method

.method public setCurrentDevice(Ljrdcom/dlnaservice/DeviceInfo;Ljava/lang/String;)V
    .locals 1
    .parameter "device"
    .parameter "identification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 257
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-eqz v0, :cond_0

    .line 258
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1, p2}, Ljrdcom/dlnaservice/IDLNACallBack;->setCurrentDevice(Ljrdcom/dlnaservice/DeviceInfo;Ljava/lang/String;)V

    .line 259
    :cond_0
    return-void
.end method

.method public setPlayStateListenerInner(Ljava/lang/String;Z)V
    .locals 1
    .parameter "identification"
    .parameter "start"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 335
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-eqz v0, :cond_0

    .line 336
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1, p2}, Ljrdcom/dlnaservice/IDLNACallBack;->setPlayStateListenerInner(Ljava/lang/String;Z)V

    .line 337
    :cond_0
    return-void
.end method

.method public setProgressListenerInner(Ljava/lang/String;Z)V
    .locals 1
    .parameter "identification"
    .parameter "start"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 328
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-eqz v0, :cond_0

    .line 329
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1, p2}, Ljrdcom/dlnaservice/IDLNACallBack;->setProgressListenerInner(Ljava/lang/String;Z)V

    .line 330
    :cond_0
    return-void
.end method

.method public setWifiName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 188
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mEnable:Z

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v0, p1}, Ljrdcom/dlnaservice/IDLNACallBack;->setWifiName(Ljava/lang/String;)V

    .line 190
    :cond_0
    return-void
.end method

.method public startWork()Z
    .locals 2

    .prologue
    .line 151
    :try_start_0
    sget-object v1, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v1}, Ljrdcom/dlnaservice/IDLNACallBack;->startInnerWork()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 155
    :goto_0
    return v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopWork()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 165
    sget-object v2, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    if-nez v2, :cond_0

    .line 172
    :goto_0
    return v1

    .line 168
    :cond_0
    :try_start_0
    sget-object v2, Lcom/jrdserver/dlnaservice/DLNAManagerService;->mDlnaCallback:Ljrdcom/dlnaservice/IDLNACallBack;

    invoke-interface {v2}, Ljrdcom/dlnaservice/IDLNACallBack;->stopInnerWork()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
