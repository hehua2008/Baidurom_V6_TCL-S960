.class public Ljrdcom/dlnaservice/DLNAManager;
.super Ljava/lang/Object;
.source "DLNAManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljrdcom/dlnaservice/DLNAManager$TVListenerInner;
    }
.end annotation


# static fields
.field public static final DEVICE_ADD:Ljava/lang/String; = "android.intent.device_add"

.field public static final DEVICE_REMOVE:Ljava/lang/String; = "android.intent.device_remove"

.field public static final SERVICE_START:Ljava/lang/String; = "android.intent.action.DLNA_START"

.field public static final SERVICE_STOP:Ljava/lang/String; = "android.intent.action.DLNA_STOP"

.field public static final SHARED_INNER_STOP:Ljava/lang/String; = "android.intent.action.shared_inner_stop"

.field public static final SHARED_OUTER_STOP:Ljava/lang/String; = "android.intent.action.shared_outer_stop"

.field private static mService:Ljrdcom/dlnaservice/IDLNAManager;


# instance fields
.field private mListenner:Ljrdcom/dlnaservice/DLNAManager$TVListenerInner;

.field private mPlayStateListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljrdcom/dlnaservice/PlayStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljrdcom/dlnaservice/ProgressListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "dlna"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->asInterface(Landroid/os/IBinder;)Ljrdcom/dlnaservice/IDLNAManager;

    move-result-object v0

    sput-object v0, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    .line 91
    const-string v0, "ProgressTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " DLNAManager   DLNAManager .... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljrdcom/dlnaservice/DLNAManager;->mProgressListeners:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljrdcom/dlnaservice/DLNAManager;->mPlayStateListeners:Ljava/util/Map;

    .line 100
    return-void
.end method

.method static synthetic access$000(Ljrdcom/dlnaservice/DLNAManager;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Ljrdcom/dlnaservice/DLNAManager;->mProgressListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Ljrdcom/dlnaservice/DLNAManager;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Ljrdcom/dlnaservice/DLNAManager;->mPlayStateListeners:Ljava/util/Map;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Ljrdcom/dlnaservice/DLNAManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 104
    const-string v0, "dlna"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljrdcom/dlnaservice/DLNAManager;

    return-object v0
.end method


# virtual methods
.method public getCurrentDevice(Ljava/lang/String;)Ljrdcom/dlnaservice/DeviceInfo;
    .locals 2
    .parameter "identification"

    .prologue
    .line 181
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1, p1}, Ljrdcom/dlnaservice/IDLNAManager;->getCurrentDevice(Ljava/lang/String;)Ljrdcom/dlnaservice/DeviceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 185
    :goto_0
    return-object v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 185
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "identification"

    .prologue
    .line 132
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1, p1}, Ljrdcom/dlnaservice/IDLNAManager;->getCurrentDeviceName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 136
    :goto_0
    return-object v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentDeviceSupportMediaType(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "identification"

    .prologue
    .line 151
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1, p1}, Ljrdcom/dlnaservice/IDLNAManager;->getCurrentDeviceSupportMediaType(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 155
    :goto_0
    return-object v1

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

.method public getCurrentDeviceUid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "identification"

    .prologue
    .line 141
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1, p1}, Ljrdcom/dlnaservice/IDLNAManager;->getCurrentDeviceUid(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 145
    :goto_0
    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDevicelist()[Ljrdcom/dlnaservice/DeviceInfo;
    .locals 2

    .prologue
    .line 172
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1}, Ljrdcom/dlnaservice/IDLNAManager;->getDevicelist()[Ljrdcom/dlnaservice/DeviceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 176
    :goto_0
    return-object v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIDLNAManager()Ljrdcom/dlnaservice/IDLNAManager;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    return-object v0
.end method

.method public getPreviousFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "identification"

    .prologue
    .line 374
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1, p1}, Ljrdcom/dlnaservice/IDLNAManager;->getPreviousFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 378
    :goto_0
    return-object v1

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 378
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1}, Ljrdcom/dlnaservice/IDLNAManager;->getWifiName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 126
    :goto_0
    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasConnected()Z
    .locals 2

    .prologue
    .line 162
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1}, Ljrdcom/dlnaservice/IDLNAManager;->hasConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 166
    :goto_0
    return v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mediaControlGetCurPlayPosition(Ljava/lang/String;)J
    .locals 3
    .parameter "identification"

    .prologue
    .line 291
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1, p1}, Ljrdcom/dlnaservice/IDLNAManager;->mediaControlGetCurPlayPosition(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 295
    :goto_0
    return-wide v1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 295
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public mediaControlGetMediaDuration(Ljava/lang/String;)J
    .locals 3
    .parameter "identification"

    .prologue
    .line 282
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1, p1}, Ljrdcom/dlnaservice/IDLNAManager;->mediaControlGetMediaDuration(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 286
    :goto_0
    return-wide v1

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 286
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public mediaControlGetMediaInfo(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
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

    .prologue
    .line 300
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1, p1}, Ljrdcom/dlnaservice/IDLNAManager;->mediaControlGetMediaInfo(Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 304
    :goto_0
    return-object v1

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 304
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mediaControlGetPlayState(Ljava/lang/String;)I
    .locals 2
    .parameter "identification"

    .prologue
    .line 273
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1, p1}, Ljrdcom/dlnaservice/IDLNAManager;->mediaControlGetPlayState(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 277
    :goto_0
    return v1

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 277
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public mediaControlGetVolume(Ljava/lang/String;)I
    .locals 2
    .parameter "identification"

    .prologue
    .line 255
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1, p1}, Ljrdcom/dlnaservice/IDLNAManager;->mediaControlGetVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 259
    :goto_0
    return v1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 259
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public mediaControlPause(Ljava/lang/String;)Z
    .locals 2
    .parameter "identification"

    .prologue
    .line 218
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1, p1}, Ljrdcom/dlnaservice/IDLNAManager;->mediaControlPause(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 222
    :goto_0
    return v1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 222
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mediaControlPlay(Ljava/lang/String;)Z
    .locals 2
    .parameter "identification"

    .prologue
    .line 237
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1, p1}, Ljrdcom/dlnaservice/IDLNAManager;->mediaControlPlay(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 241
    :goto_0
    return v1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 241
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mediaControlPlayCurr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "path"
    .parameter "fileType"
    .parameter "identification"

    .prologue
    .line 197
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 199
    .local v1, identity:J
    :try_start_0
    sget-object v3, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v3, p1, p2, p3}, Ljrdcom/dlnaservice/IDLNAManager;->mediaControlPlayCurr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    const/4 v3, 0x1

    return v3

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public mediaControlPlayNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "path"
    .parameter "type"
    .parameter "identification"

    .prologue
    .line 328
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1, p1, p2, p3}, Ljrdcom/dlnaservice/IDLNAManager;->mediaControlPlayNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 332
    :goto_0
    return v1

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 332
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mediaControlPlayPrev(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "path"
    .parameter "type"
    .parameter "identification"

    .prologue
    .line 337
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1, p1, p2, p3}, Ljrdcom/dlnaservice/IDLNAManager;->mediaControlPlayPrev(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 341
    :goto_0
    return v1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 341
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mediaControlSearch(Z)Z
    .locals 2
    .parameter "force"

    .prologue
    .line 309
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1, p1}, Ljrdcom/dlnaservice/IDLNAManager;->mediaControlSearch(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 313
    :goto_0
    return v1

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 313
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mediaControlSeek(JLjava/lang/String;)Z
    .locals 2
    .parameter "position"
    .parameter "identification"

    .prologue
    .line 246
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1, p1, p2, p3}, Ljrdcom/dlnaservice/IDLNAManager;->mediaControlSeek(JLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 250
    :goto_0
    return v1

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 250
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mediaControlSetVolume(ILjava/lang/String;)Z
    .locals 2
    .parameter "time"
    .parameter "identification"

    .prologue
    .line 264
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1, p1, p2}, Ljrdcom/dlnaservice/IDLNAManager;->mediaControlSetVolume(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 268
    :goto_0
    return v1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 268
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mediaControlStop(Ljava/lang/String;)Z
    .locals 2
    .parameter "identification"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 228
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1, p1}, Ljrdcom/dlnaservice/IDLNAManager;->mediaControlStop(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 232
    :goto_0
    return v1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 232
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mediaControlStreamPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "url"
    .parameter "name"
    .parameter "identification"

    .prologue
    .line 209
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1, p1, p2, p3}, Ljrdcom/dlnaservice/IDLNAManager;->mediaControlStreamPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 213
    :goto_0
    return v1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 213
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removePlayStateListener(Ljava/lang/String;Ljrdcom/dlnaservice/PlayStateListener;)V
    .locals 3
    .parameter "identification"
    .parameter "listener"

    .prologue
    .line 434
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljrdcom/dlnaservice/IDLNAManager;->setPlayStateListenerInner(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public removeProgressListener(Ljava/lang/String;Ljrdcom/dlnaservice/ProgressListener;)V
    .locals 3
    .parameter "identification"
    .parameter "listener"

    .prologue
    .line 426
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljrdcom/dlnaservice/IDLNAManager;->setProgressListenerInner(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public restartWork()Z
    .locals 2

    .prologue
    .line 364
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1}, Ljrdcom/dlnaservice/IDLNAManager;->restartWork()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 368
    :goto_0
    return v1

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 368
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCurrentDevice(Ljrdcom/dlnaservice/DeviceInfo;Ljava/lang/String;)V
    .locals 2
    .parameter "device"
    .parameter "identification"

    .prologue
    .line 190
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1, p1, p2}, Ljrdcom/dlnaservice/IDLNAManager;->setCurrentDevice(Ljrdcom/dlnaservice/DeviceInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setTVListener(Ljava/lang/String;Ljrdcom/dlnaservice/PlayStateListener;Ljrdcom/dlnaservice/ProgressListener;)V
    .locals 3
    .parameter "identification"
    .parameter "listener"
    .parameter "progressListener"

    .prologue
    .line 390
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 391
    const/4 v1, 0x0

    iput-object v1, p0, Ljrdcom/dlnaservice/DLNAManager;->mListenner:Ljrdcom/dlnaservice/DLNAManager$TVListenerInner;

    .line 395
    :goto_0
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    iget-object v2, p0, Ljrdcom/dlnaservice/DLNAManager;->mListenner:Ljrdcom/dlnaservice/DLNAManager$TVListenerInner;

    invoke-interface {v1, v2}, Ljrdcom/dlnaservice/IDLNAManager;->setCallbackListenerInner(Ljrdcom/dlnaservice/ITVListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_1
    :try_start_1
    iget-object v1, p0, Ljrdcom/dlnaservice/DLNAManager;->mPlayStateListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 402
    iget-object v1, p0, Ljrdcom/dlnaservice/DLNAManager;->mPlayStateListeners:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :goto_2
    iget-object v1, p0, Ljrdcom/dlnaservice/DLNAManager;->mProgressListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 409
    iget-object v1, p0, Ljrdcom/dlnaservice/DLNAManager;->mProgressListeners:Ljava/util/Map;

    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :goto_3
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Ljrdcom/dlnaservice/IDLNAManager;->setPlayStateListenerInner(Ljava/lang/String;Z)V

    .line 416
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Ljrdcom/dlnaservice/IDLNAManager;->setProgressListenerInner(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 422
    :goto_4
    return-void

    .line 393
    :cond_0
    new-instance v1, Ljrdcom/dlnaservice/DLNAManager$TVListenerInner;

    invoke-direct {v1, p0}, Ljrdcom/dlnaservice/DLNAManager$TVListenerInner;-><init>(Ljrdcom/dlnaservice/DLNAManager;)V

    iput-object v1, p0, Ljrdcom/dlnaservice/DLNAManager;->mListenner:Ljrdcom/dlnaservice/DLNAManager$TVListenerInner;

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 404
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_2
    iget-object v1, p0, Ljrdcom/dlnaservice/DLNAManager;->mPlayStateListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v1, p0, Ljrdcom/dlnaservice/DLNAManager;->mPlayStateListeners:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 419
    :catch_1
    move-exception v0

    .line 420
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 411
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_3
    iget-object v1, p0, Ljrdcom/dlnaservice/DLNAManager;->mProgressListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v1, p0, Ljrdcom/dlnaservice/DLNAManager;->mProgressListeners:Ljava/util/Map;

    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method public setWifiName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 114
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1, p1}, Ljrdcom/dlnaservice/IDLNAManager;->setWifiName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public startWork()Z
    .locals 2

    .prologue
    .line 346
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1}, Ljrdcom/dlnaservice/IDLNAManager;->startWork()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 350
    :goto_0
    return v1

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 350
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopWork()Z
    .locals 2

    .prologue
    .line 355
    :try_start_0
    sget-object v1, Ljrdcom/dlnaservice/DLNAManager;->mService:Ljrdcom/dlnaservice/IDLNAManager;

    invoke-interface {v1}, Ljrdcom/dlnaservice/IDLNAManager;->stopWork()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 359
    :goto_0
    return v1

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 359
    const/4 v1, 0x0

    goto :goto_0
.end method
