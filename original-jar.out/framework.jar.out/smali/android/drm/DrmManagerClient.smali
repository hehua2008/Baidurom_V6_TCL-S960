.class public Landroid/drm/DrmManagerClient;
.super Ljava/lang/Object;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/DrmManagerClient$CustomAlertDialog;,
        Landroid/drm/DrmManagerClient$DrmOperationListener;,
        Landroid/drm/DrmManagerClient$InfoHandler;,
        Landroid/drm/DrmManagerClient$EventHandler;,
        Landroid/drm/DrmManagerClient$OnErrorListener;,
        Landroid/drm/DrmManagerClient$OnEventListener;,
        Landroid/drm/DrmManagerClient$OnInfoListener;
    }
.end annotation


# static fields
.field private static final ACTION_PROCESS_DRM_INFO:I = 0x3ea

.field private static final ACTION_PROCESS_EXTRA_DRM_INFO:I = 0x7d1

.field private static final ACTION_REMOVE_ALL_RIGHTS:I = 0x3e9

.field public static final ACTION_SET_RINGTONE_CHECKER:Ljava/lang/String; = "jrdcom.intent.action.SET_RINGTONE_CHECKER"

.field public static final ACTION_SET_VIDEO_RINGTONE_CHECKER:Ljava/lang/String; = "jrdcom.intent.action.SET_VIDEO_RINGTONE_CHECKER"

.field public static final ACTION_SET_WALLPAPER_CHECKER:Ljava/lang/String; = "jrdcom.intent.action.SET_WALLPAPER_CHECKER"

.field public static final CROPIMAGE_FILEPATH:Ljava/lang/String; = "drm_cropimage_filepath"

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x7d0

#the value of this static final field might be set in the static constructor
.field private static final OMA_DRM_FL_ONLY:Z = false

.field private static final TAG:Ljava/lang/String; = "DrmManagerClient"

.field public static final WALLPAPER_FILEPATH:Ljava/lang/String; = "drm_wallpaper_filepath"

.field private static mDrmClient:Landroid/drm/DrmManagerClient;

.field private static mMTKDrmEable:Ljava/lang/Boolean;

.field private static sConsumeDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/drm/DrmManagerClient$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private static sLicenseDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/drm/DrmManagerClient$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private static sProtectionInfoDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/drm/DrmManagerClient$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private static sSecureTimerDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/drm/DrmManagerClient$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private drmConstraintsTime:J

.field private drmTrustSecureTime:J

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

.field mEventThread:Landroid/os/HandlerThread;

.field private mFilePath:Ljava/lang/String;

.field private mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

.field mInfoThread:Landroid/os/HandlerThread;

.field private mNativeContext:I

.field private mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

.field private mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

.field private mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

.field private mReleased:Z

.field private mUniqueId:I

.field private mUri:Ljava/lang/String;

.field private processDrmExtraInfoResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    const-string v1, "drmframework_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 95
    const-string v1, "drm.forwardlock.only"

    const-string/jumbo v2, "no"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, drmFLOnly:Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Landroid/drm/DrmManagerClient;->OMA_DRM_FL_ONLY:Z

    .line 183
    sput-object v3, Landroid/drm/DrmManagerClient;->mDrmClient:Landroid/drm/DrmManagerClient;

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/drm/DrmManagerClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/drm/DrmManagerClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/drm/DrmManagerClient;->sProtectionInfoDialogQueue:Ljava/util/ArrayList;

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/drm/DrmManagerClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    .line 1790
    sput-object v3, Landroid/drm/DrmManagerClient;->mMTKDrmEable:Ljava/lang/Boolean;

    return-void

    .line 96
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const-wide/16 v0, -0x1

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-wide v0, p0, Landroid/drm/DrmManagerClient;->drmConstraintsTime:J

    .line 187
    iput-wide v0, p0, Landroid/drm/DrmManagerClient;->drmTrustSecureTime:J

    .line 189
    const/16 v0, -0x7d0

    iput v0, p0, Landroid/drm/DrmManagerClient;->processDrmExtraInfoResult:I

    .line 380
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/drm/DrmManagerClient;->mReleased:Z

    .line 383
    const-string v0, "DrmManagerClient"

    const-string v1, "create DrmManagerClient instance & create event threads."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createEventThreads()V

    .line 387
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->_initialize()I

    move-result v0

    iput v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    .line 388
    return-void
.end method

.method private native _acquireDrmInfo(ILandroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
.end method

.method private native _canHandle(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native _checkRightsStatus(ILjava/lang/String;I)I
.end method

.method private native _closeConvertSession(II)Landroid/drm/DrmConvertedStatus;
.end method

.method private native _consume(ILjava/lang/String;I)I
.end method

.method private native _convertData(II[B)Landroid/drm/DrmConvertedStatus;
.end method

.method private native _getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;
.end method

.method private native _getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;
.end method

.method private native _getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native _getMetadata(ILjava/lang/String;)Landroid/content/ContentValues;
.end method

.method private native _getOriginalMimeType(ILjava/lang/String;Ljava/io/FileDescriptor;)Ljava/lang/String;
.end method

.method private native _initialize()I
.end method

.method private native _installDrmEngine(ILjava/lang/String;)V
.end method

.method private native _openConvertSession(ILjava/lang/String;)I
.end method

.method private native _processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
.end method

.method private native _release(I)V
.end method

.method private native _removeAllRights(I)I
.end method

.method private native _removeRights(ILjava/lang/String;)I
.end method

.method private native _saveRights(ILandroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native _setListeners(ILjava/lang/Object;)V
.end method

.method static synthetic access$000(Landroid/drm/DrmManagerClient;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    return v0
.end method

.method static synthetic access$100(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmManagerClient;->_processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/drm/DrmManagerClient;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Landroid/drm/DrmManagerClient;->mDrmClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/drm/DrmManagerClient;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/drm/DrmManagerClient;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 74
    iget-wide v0, p0, Landroid/drm/DrmManagerClient;->drmConstraintsTime:J

    return-wide v0
.end method

.method static synthetic access$1402(Landroid/drm/DrmManagerClient;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-wide p1, p0, Landroid/drm/DrmManagerClient;->drmConstraintsTime:J

    return-wide p1
.end method

.method static synthetic access$1500(Landroid/drm/DrmManagerClient;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 74
    iget-wide v0, p0, Landroid/drm/DrmManagerClient;->drmTrustSecureTime:J

    return-wide v0
.end method

.method static synthetic access$1502(Landroid/drm/DrmManagerClient;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-wide p1, p0, Landroid/drm/DrmManagerClient;->drmTrustSecureTime:J

    return-wide p1
.end method

.method static synthetic access$1600(Landroid/drm/DrmManagerClient;Ljava/lang/Long;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Landroid/drm/DrmManagerClient;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/drm/DrmManagerClient;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/drm/DrmManagerClient;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->getEventType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/drm/DrmManagerClient;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->getErrorType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/drm/DrmManagerClient;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->_removeAllRights(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    return-object v0
.end method

.method static synthetic access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    return-object v0
.end method

.method private static checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/drm/DrmManagerClient$CustomAlertDialog;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1192
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/DrmManagerClient$CustomAlertDialog;>;"
    const-string v2, "DrmManagerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCustomAlertDialog(): check within context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    monitor-enter p0

    .line 1194
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1195
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/drm/DrmManagerClient$CustomAlertDialog;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1196
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/drm/DrmManagerClient$CustomAlertDialog;

    .line 1197
    .local v0, dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    const-string v2, "DrmManagerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCustomAlertDialog(): stored dialog with creator context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->getCreatorContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->getCreatorContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1199
    const-string v2, "DrmManagerClient"

    const-string v3, "checkCustomAlertDialog(): context match, dismiss it"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->dismiss()V

    .line 1204
    .end local v0           #dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    :cond_1
    monitor-exit p0

    .line 1205
    return-void

    .line 1204
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/drm/DrmManagerClient$CustomAlertDialog;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .parameter "uri"

    .prologue
    .line 994
    const/4 v8, 0x0

    .line 995
    .local v8, path:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 996
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 997
    .local v10, scheme:Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 999
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 1028
    .end local v10           #scheme:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v8

    .line 1001
    .restart local v10       #scheme:Ljava/lang/String;
    :cond_2
    const-string v0, "http"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1002
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1004
    :cond_3
    const-string v0, "content"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1005
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 1006
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1008
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1010
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1011
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri could not be found in media store"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    :catch_0
    move-exception v7

    .line 1017
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1020
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1021
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1020
    :cond_5
    throw v0

    .line 1014
    :cond_6
    :try_start_2
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1015
    .local v9, pathIndex:I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 1020
    if-eqz v6, :cond_1

    .line 1021
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1025
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #pathIndex:I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri scheme is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createEventThreads()V
    .locals 2

    .prologue
    .line 2674
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-nez v0, :cond_0

    .line 2675
    const-string v0, "DrmManagerClient"

    const-string v1, "create info handler thread."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmManagerClient.InfoHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    .line 2677
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2678
    new-instance v0, Landroid/drm/DrmManagerClient$InfoHandler;

    iget-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmManagerClient$InfoHandler;-><init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    .line 2680
    const-string v0, "DrmManagerClient"

    const-string v1, "create event handler thread."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmManagerClient.EventHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    .line 2682
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2683
    new-instance v0, Landroid/drm/DrmManagerClient$EventHandler;

    iget-object v1, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmManagerClient$EventHandler;-><init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    .line 2685
    :cond_0
    return-void
.end method

.method private createListeners()V
    .locals 2

    .prologue
    .line 2688
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Landroid/drm/DrmManagerClient;->_setListeners(ILjava/lang/Object;)V

    .line 2689
    return-void
.end method

.method private getErrorType(I)I
    .locals 1
    .parameter "infoType"

    .prologue
    .line 972
    const/4 v0, -0x1

    .line 974
    .local v0, error:I
    packed-switch p1, :pswitch_data_0

    .line 981
    :goto_0
    return v0

    .line 978
    :pswitch_0
    const/16 v0, 0x7d6

    goto :goto_0

    .line 974
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getEventType(I)I
    .locals 1
    .parameter "infoType"

    .prologue
    .line 959
    const/4 v0, -0x1

    .line 961
    .local v0, eventType:I
    packed-switch p1, :pswitch_data_0

    .line 968
    :goto_0
    return v0

    .line 965
    :pswitch_0
    const/16 v0, 0x3ea

    goto :goto_0

    .line 961
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "res"
    .parameter "name"
    .parameter "defType"
    .parameter "defPackage"

    .prologue
    .line 2561
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2563
    .local v0, id:I
    if-nez v0, :cond_1

    .line 2564
    const-string v1, "DrmManagerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": id= 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    :cond_0
    :goto_0
    return v0

    .line 2565
    :cond_1
    const-string v1, "bool"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2566
    const-string v1, "DrmManagerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": i ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2567
    :cond_2
    const-string/jumbo v1, "string"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2568
    const-string v1, "DrmManagerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": i ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2569
    :cond_3
    const-string v1, "integer"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2570
    const-string v1, "DrmManagerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": i ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/drm/DrmManagerClient;
    .locals 1
    .parameter "context"

    .prologue
    .line 198
    sget-object v0, Landroid/drm/DrmManagerClient;->mDrmClient:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/drm/DrmManagerClient;->mDrmClient:Landroid/drm/DrmManagerClient;

    .line 201
    :cond_0
    sget-object v0, Landroid/drm/DrmManagerClient;->mDrmClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method private getInternalRingtones(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "mContext"
    .parameter "path"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2637
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "_data"

    aput-object v3, v2, v7

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "title_key"

    aput-object v4, v2, v3

    const-string v3, "_data=?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p2, v4, v6

    const-string/jumbo v5, "title_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getMediaRingtones(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "mContext"
    .parameter "path"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 2656
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 2658
    .local v6, status:Ljava/lang/String;
    const-string/jumbo v0, "mounted"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mounted_ro"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "_data"

    aput-object v3, v2, v7

    const/4 v3, 0x2

    const-string/jumbo v4, "title_key"

    aput-object v4, v2, v3

    const-string v3, "_data=?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p2, v4, v5

    const-string/jumbo v5, "title_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMimeTypeBeforInstall(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "filePath"

    .prologue
    .line 2929
    const/4 v1, 0x0

    .line 2930
    .local v1, contentType:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2932
    .local v5, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2933
    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v6, fis:Ljava/io/FileInputStream;
    const/16 v8, 0x3e8

    :try_start_1
    new-array v0, v8, [B

    .line 2934
    .local v0, buffer:[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 2935
    .local v2, count:I
    const/4 v8, 0x0

    invoke-static {v0, v8, v2}, Landroid/drm/DrmManagerClient;->getRawDrmScheme([BII)I

    move-result v3

    .line 2936
    .local v3, drmScheme:I
    const/4 v8, 0x1

    if-ne v3, v8, :cond_3

    .line 2937
    const-string v1, "application/vnd.oma.drm.message"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 2946
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 2948
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    move-object v5, v6

    .line 2954
    .end local v0           #buffer:[B
    .end local v2           #count:I
    .end local v3           #drmScheme:I
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :cond_2
    :goto_2
    return-object v1

    .line 2938
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #count:I
    .restart local v3       #drmScheme:I
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :cond_3
    const/4 v8, 0x2

    if-ne v3, v8, :cond_4

    .line 2939
    :try_start_3
    const-string v1, "application/vnd.oma.drm.rights+xml"

    goto :goto_0

    .line 2940
    :cond_4
    const/4 v8, 0x3

    if-ne v3, v8, :cond_0

    .line 2941
    const-string v1, "application/vnd.oma.drm.content"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 2943
    .end local v0           #buffer:[B
    .end local v2           #count:I
    .end local v3           #drmScheme:I
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    .line 2944
    .local v7, ie:Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v8, "DrmManagerClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fail to create input stream for file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2946
    if-eqz v5, :cond_2

    .line 2948
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 2949
    :catch_1
    move-exception v4

    .line 2950
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2946
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #ie:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v5, :cond_5

    .line 2948
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 2946
    :cond_5
    :goto_5
    throw v8

    .line 2949
    :catch_2
    move-exception v4

    .line 2950
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 2949
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #count:I
    .restart local v3       #drmScheme:I
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    .line 2950
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2946
    .end local v0           #buffer:[B
    .end local v2           #count:I
    .end local v3           #drmScheme:I
    .end local v4           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 2943
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v7

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private static getRawDrmScheme([BII)I
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 2963
    const/4 v1, 0x0

    .line 2964
    .local v1, scheme:I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2965
    .local v0, head:Ljava/lang/String;
    const-string v2, "content-type:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    const-string v2, "content-transfer-encoding:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 2966
    const-string v2, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 2967
    const/4 v1, 0x2

    .line 2974
    :goto_0
    const-string v2, "DrmManagerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRawDrmScheme E, raw drm scheme = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    return v1

    .line 2969
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 2972
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/drm/DrmManagerClient;->getSDRawDrmScheme([BII)I

    move-result v1

    goto :goto_0
.end method

.method public static getRingtoneStrType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 2538
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 2539
    const-string/jumbo v0, "ringtone"

    .line 2547
    :goto_0
    return-object v0

    .line 2540
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 2541
    const-string/jumbo v0, "notification_sound"

    goto :goto_0

    .line 2542
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 2543
    const-string v0, "alarm_alert"

    goto :goto_0

    .line 2544
    :cond_2
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_3

    .line 2545
    const-string/jumbo v0, "video_call"

    goto :goto_0

    .line 2547
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSDRawDrmScheme([BII)I
    .locals 12
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 2984
    const/4 v4, 0x0

    .line 2985
    .local v4, scheme:I
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p0}, Ljava/lang/String;-><init>([B)V

    .line 2986
    .local v7, str:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2988
    .local v6, start_index:I
    const/4 v9, 0x1

    aget-byte v5, p0, v9

    .line 2989
    .local v5, second_byte:B
    const/4 v9, 0x2

    aget-byte v8, p0, v9

    .line 2990
    .local v8, third_byte:B
    and-int/lit16 v1, v8, 0xff

    .line 2991
    .local v1, cid_length:I
    and-int/lit16 v3, v5, 0xff

    .line 2992
    .local v3, ctype_length:I
    const-string v9, "DrmManagerClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cid_length  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    if-lez v1, :cond_0

    if-lez v3, :cond_0

    .line 2994
    add-int/lit8 v6, v3, 0x2

    .line 2996
    :cond_0
    if-eqz v6, :cond_1

    add-int/lit8 v9, v6, 0x3

    if-ge v9, p2, :cond_1

    .line 2997
    const/4 v9, 0x3

    new-array v0, v9, [B

    const/4 v9, 0x0

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    aput-byte v10, v0, v9

    const/4 v9, 0x1

    add-int/lit8 v10, v6, 0x2

    aget-byte v10, p0, v10

    aput-byte v10, v0, v9

    const/4 v9, 0x2

    add-int/lit8 v10, v6, 0x3

    aget-byte v10, p0, v10

    aput-byte v10, v0, v9

    .line 2999
    .local v0, cid_byte_array:[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 3000
    .local v2, cid_str:Ljava/lang/String;
    const-string v9, "DrmManagerClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cid_Str: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    const-string v9, "cid"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3002
    const-string v9, "Rights-Issuer"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 3003
    const/4 v4, 0x3

    .line 3005
    .end local v0           #cid_byte_array:[B
    .end local v2           #cid_str:Ljava/lang/String;
    :cond_1
    return v4
.end method

.method private getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .parameter "mContext"
    .parameter "path"

    .prologue
    .line 2602
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmManagerClient;->getInternalRingtones(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2603
    .local v0, internalCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 2604
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 2605
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2609
    .local v2, uriString:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2626
    .end local v2           #uriString:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2611
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2614
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmManagerClient;->getMediaRingtones(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2615
    .local v1, mediaCursor:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 2616
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 2617
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2618
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2622
    .restart local v2       #uriString:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 2624
    .end local v2           #uriString:Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2626
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isDrm(Ljava/lang/String;)Z
    .locals 12
    .parameter "filePath"

    .prologue
    const/4 v8, 0x0

    .line 1955
    const/4 v6, 0x0

    .line 1956
    .local v6, result:Z
    invoke-static {}, Landroid/drm/DrmManagerClient;->isMTKDrmEnable()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1996
    :cond_0
    :goto_0
    return v8

    .line 1961
    :cond_1
    const-string v9, "http://"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "https://"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "rtsp://"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, ".sdp"

    invoke-virtual {p0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1963
    :cond_2
    const-string v9, "DrmManagerClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "streaming url "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " can not be handled by drm"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1968
    :cond_3
    const-string v8, "content://"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1969
    sget-object v8, Landroid/drm/DrmManagerClient;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 1974
    :cond_4
    :goto_1
    const/4 v3, 0x0

    .line 1976
    .local v3, fis:Ljava/io/FileInputStream;
    if-eqz p0, :cond_5

    .line 1977
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1978
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    const/16 v8, 0x3e8

    :try_start_1
    new-array v0, v8, [B

    .line 1979
    .local v0, buffer:[B
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 1980
    .local v1, count:I
    const/4 v8, 0x0

    invoke-static {v0, v8, v1}, Landroid/drm/DrmManagerClient;->isDrm([BII)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v6

    move-object v3, v4

    .line 1985
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_5
    if-eqz v3, :cond_6

    .line 1987
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1994
    :cond_6
    :goto_2
    const-string v8, "DrmManagerClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", drm status = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v6

    .line 1996
    goto/16 :goto_0

    .line 1970
    .end local v3           #fis:Ljava/io/FileInputStream;
    :cond_7
    const-string v8, "file://"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1971
    const-string v8, "file://"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    .line 1972
    .local v7, start_index:I
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1982
    .end local v7           #start_index:I
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v5

    .line 1983
    .local v5, ie:Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v8, "DrmManagerClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fail to create input stream for file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1985
    if-eqz v3, :cond_6

    .line 1987
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1988
    :catch_1
    move-exception v2

    .line 1989
    .end local v5           #ie:Ljava/io/IOException;
    .local v2, e:Ljava/io/IOException;
    :goto_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1985
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v3, :cond_8

    .line 1987
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1985
    :cond_8
    :goto_6
    throw v8

    .line 1988
    :catch_2
    move-exception v2

    .line 1989
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1988
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    goto :goto_4

    .line 1985
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 1982
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static isDrm([BII)Z
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 2012
    const/4 v1, 0x0

    .line 2017
    .local v1, result:Z
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-direct {v0, p0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 2019
    .local v0, header:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v3, "MTK_FL_cid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "MTK_CD_cid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2020
    :cond_0
    const/4 v1, 0x1

    .line 2031
    :cond_1
    :goto_0
    return v1

    .line 2026
    :cond_2
    invoke-static {p0, p1, p2}, Landroid/drm/DrmManagerClient;->getSDRawDrmScheme([BII)I

    move-result v2

    .line 2027
    .local v2, scheme:I
    if-eqz v2, :cond_1

    .line 2028
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isDrmSD(Ljava/lang/String;)Z
    .locals 11
    .parameter "filePath"

    .prologue
    .line 2042
    const/4 v6, 0x0

    .line 2043
    .local v6, result:Z
    const/4 v3, 0x0

    .line 2045
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2046
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    const/16 v8, 0x3e8

    :try_start_1
    new-array v0, v8, [B

    .line 2047
    .local v0, buffer:[B
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 2048
    .local v1, count:I
    const/16 v8, 0xc

    invoke-static {v0, v8, v1}, Landroid/drm/DrmManagerClient;->getSDRawDrmScheme([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v7

    .line 2049
    .local v7, scheme:I
    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 2050
    const/4 v6, 0x1

    .line 2055
    :cond_0
    if-eqz v4, :cond_1

    .line 2057
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v3, v4

    .line 2063
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #scheme:I
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    return v6

    .line 2052
    :catch_0
    move-exception v5

    .line 2053
    .local v5, ie:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v8, "DrmManagerClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fail to create input stream for file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2055
    if-eqz v3, :cond_2

    .line 2057
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2058
    :catch_1
    move-exception v2

    .line 2059
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2055
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #ie:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v3, :cond_3

    .line 2057
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2055
    :cond_3
    :goto_4
    throw v8

    .line 2058
    :catch_2
    move-exception v2

    .line 2059
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 2058
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v7       #scheme:I
    :catch_3
    move-exception v2

    .line 2059
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2055
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #scheme:I
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 2052
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static isMTKDrmEnable()Z
    .locals 2

    .prologue
    .line 1796
    sget-object v0, Landroid/drm/DrmManagerClient;->mMTKDrmEable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1797
    const-string/jumbo v0, "ro_drm_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/drm/DrmManagerClient;->mMTKDrmEable:Ljava/lang/Boolean;

    .line 1799
    :cond_0
    sget-object v0, Landroid/drm/DrmManagerClient;->mMTKDrmEable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isUriExisted(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 9
    .parameter "mContext"
    .parameter "uri"

    .prologue
    .line 2512
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 2513
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2514
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x1

    .line 2516
    .local v8, result:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2517
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 2518
    :cond_0
    const/4 v8, 0x0

    .line 2524
    :cond_1
    if-eqz v6, :cond_2

    .line 2525
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2527
    :cond_2
    return v8

    .line 2520
    :catch_0
    move-exception v7

    .line 2521
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2522
    const/4 v8, 0x0

    .line 2524
    if-eqz v6, :cond_2

    goto :goto_0

    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2525
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2524
    :cond_3
    throw v0
.end method

.method public static notify(Ljava/lang/Object;IILjava/lang/String;)V
    .locals 4
    .parameter "thisReference"
    .parameter "uniqueId"
    .parameter "infoType"
    .parameter "message"

    .prologue
    .line 311
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/drm/DrmManagerClient;

    .line 313
    .local v0, instance:Landroid/drm/DrmManagerClient;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-eqz v2, :cond_0

    .line 314
    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/drm/DrmManagerClient$InfoHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 316
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient$InfoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 318
    .end local v1           #m:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private parsePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter "mContext"
    .parameter "path"
    .parameter "type"

    .prologue
    .line 2584
    const-string/jumbo v0, "silent"

    .line 2585
    .local v0, fullPath:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "silent"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getCustpackDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/JRD_custres/audio/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2588
    :cond_0
    const-string v1, "DrmManagerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fullPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    const-string v1, "DrmManagerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, v0}, Landroid/drm/DrmManagerClient;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    invoke-direct {p0, p1, v0}, Landroid/drm/DrmManagerClient;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static showConsume(Landroid/content/Context;Landroid/drm/DrmManagerClient$DrmOperationListener;)Landroid/app/Dialog;
    .locals 7
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 2697
    const-string v4, "DrmManagerClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showConsume() within context: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    sget-object v4, Landroid/drm/DrmManagerClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-static {v4, p0}, Landroid/drm/DrmManagerClient;->checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 2700
    sget-object v4, Landroid/drm/DrmManagerClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-static {v4, p0}, Landroid/drm/DrmManagerClient;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v3

    .line 2701
    .local v3, result:Landroid/app/Dialog;
    if-eqz v3, :cond_0

    .line 2702
    const-string v4, "DrmManagerClient"

    const-string/jumbo v5, "showConsume(): use the existing one"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    .end local v3           #result:Landroid/app/Dialog;
    :goto_0
    return-object v3

    .line 2706
    .restart local v3       #result:Landroid/app/Dialog;
    :cond_0
    new-instance v0, Landroid/drm/DrmManagerClient$CustomAlertDialog;

    sget-object v4, Landroid/drm/DrmManagerClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v4}, Landroid/drm/DrmManagerClient$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2707
    .local v0, dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2709
    .local v2, res:Landroid/content/res/Resources;
    const/4 v4, -0x1

    const v5, 0x104000a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/drm/DrmManagerClient$7;

    invoke-direct {v6, p1}, Landroid/drm/DrmManagerClient$7;-><init>(Landroid/drm/DrmManagerClient$DrmOperationListener;)V

    invoke-virtual {v0, v4, v5, v6}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2720
    const/4 v4, -0x2

    const/high16 v5, 0x104

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/drm/DrmManagerClient$8;

    invoke-direct {v6, p1}, Landroid/drm/DrmManagerClient$8;-><init>(Landroid/drm/DrmManagerClient$DrmOperationListener;)V

    invoke-virtual {v0, v4, v5, v6}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2730
    const v4, 0x108009b

    invoke-virtual {v0, v4}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setIcon(I)V

    .line 2731
    const v4, 0x20500e0

    invoke-virtual {v0, v4}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setTitle(I)V

    .line 2732
    const v4, 0x20500e1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2734
    new-instance v4, Landroid/drm/DrmManagerClient$9;

    invoke-direct {v4, p1}, Landroid/drm/DrmManagerClient$9;-><init>(Landroid/drm/DrmManagerClient$DrmOperationListener;)V

    invoke-virtual {v0, v4}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2744
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110054

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 2745
    .local v1, display:Z
    if-nez v1, :cond_2

    .line 2746
    if-eqz p1, :cond_1

    .line 2747
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/drm/DrmManagerClient$DrmOperationListener;->onOperated(I)V

    :cond_1
    :goto_1
    move-object v3, v0

    .line 2753
    goto :goto_0

    .line 2750
    :cond_2
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->show()V

    goto :goto_1
.end method

.method public static showConsumeDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 8
    .parameter "context"
    .parameter "listener"
    .parameter "dismissListener"

    .prologue
    const/4 v7, -0x1

    .line 1291
    const-string v4, "DrmManagerClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showConsumeDialog() within context: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    sget-object v4, Landroid/drm/DrmManagerClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-static {v4, p0}, Landroid/drm/DrmManagerClient;->checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 1294
    sget-object v4, Landroid/drm/DrmManagerClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-static {v4, p0}, Landroid/drm/DrmManagerClient;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v3

    .line 1295
    .local v3, result:Landroid/app/Dialog;
    if-eqz v3, :cond_0

    .line 1296
    const-string v4, "DrmManagerClient"

    const-string/jumbo v5, "showConsumeDialog(): use the existing one"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    .end local v3           #result:Landroid/app/Dialog;
    :goto_0
    return-object v3

    .line 1300
    .restart local v3       #result:Landroid/app/Dialog;
    :cond_0
    new-instance v0, Landroid/drm/DrmManagerClient$CustomAlertDialog;

    sget-object v4, Landroid/drm/DrmManagerClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v4}, Landroid/drm/DrmManagerClient$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1301
    .local v0, dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1302
    .local v2, res:Landroid/content/res/Resources;
    const v4, 0x104000a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v7, v4, p1}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1305
    const/4 v4, -0x2

    const/high16 v5, 0x104

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5, p1}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1308
    const v4, 0x108009b

    invoke-virtual {v0, v4}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setIcon(I)V

    .line 1309
    const v4, 0x20500e0

    invoke-virtual {v0, v4}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setTitle(I)V

    .line 1310
    const v4, 0x20500e1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1311
    invoke-virtual {v0, p2}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1313
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110054

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1314
    .local v1, display:Z
    if-nez v1, :cond_2

    .line 1315
    if-eqz p1, :cond_1

    .line 1316
    invoke-interface {p1, v0, v7}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    :goto_1
    move-object v3, v0

    .line 1322
    goto :goto_0

    .line 1319
    :cond_2
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->show()V

    goto :goto_1
.end method

.method public static showSecureTimerInvalid(Landroid/content/Context;Landroid/drm/DrmManagerClient$DrmOperationListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 2762
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showSecureTimerInvalid() within context: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    sget-object v3, Landroid/drm/DrmManagerClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p0}, Landroid/drm/DrmManagerClient;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v2

    .line 2765
    .local v2, result:Landroid/app/Dialog;
    if-eqz v2, :cond_0

    .line 2766
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "showSecureTimerInvalid(): use the existing one"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    .end local v2           #result:Landroid/app/Dialog;
    :goto_0
    return-object v2

    .line 2770
    .restart local v2       #result:Landroid/app/Dialog;
    :cond_0
    new-instance v0, Landroid/drm/DrmManagerClient$CustomAlertDialog;

    sget-object v3, Landroid/drm/DrmManagerClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2771
    .local v0, dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2773
    .local v1, res:Landroid/content/res/Resources;
    const/4 v3, -0x1

    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/drm/DrmManagerClient$10;

    invoke-direct {v5}, Landroid/drm/DrmManagerClient$10;-><init>()V

    invoke-virtual {v0, v3, v4, v5}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2781
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setIcon(I)V

    .line 2782
    const v3, 0x20500de

    invoke-virtual {v0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setTitle(I)V

    .line 2783
    const v3, 0x20500df

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2785
    new-instance v3, Landroid/drm/DrmManagerClient$11;

    invoke-direct {v3, p1}, Landroid/drm/DrmManagerClient$11;-><init>(Landroid/drm/DrmManagerClient$DrmOperationListener;)V

    invoke-virtual {v0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2795
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->show()V

    move-object v2, v0

    .line 2797
    goto :goto_0
.end method

.method public static showSecureTimerInvalidDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "clickListener"
    .parameter "dismissListener"

    .prologue
    .line 1256
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showSecureTimerInvalidDialog() within context: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    sget-object v3, Landroid/drm/DrmManagerClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p0}, Landroid/drm/DrmManagerClient;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v2

    .line 1259
    .local v2, result:Landroid/app/Dialog;
    if-eqz v2, :cond_0

    .line 1260
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "showSecureTimerInvalidDialog(): use the existing one"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    .end local v2           #result:Landroid/app/Dialog;
    :goto_0
    return-object v2

    .line 1264
    .restart local v2       #result:Landroid/app/Dialog;
    :cond_0
    new-instance v0, Landroid/drm/DrmManagerClient$CustomAlertDialog;

    sget-object v3, Landroid/drm/DrmManagerClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1265
    .local v0, dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1266
    .local v1, res:Landroid/content/res/Resources;
    const/4 v3, -0x1

    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, p1}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1269
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setIcon(I)V

    .line 1270
    const v3, 0x20500de

    invoke-virtual {v0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setTitle(I)V

    .line 1271
    const v3, 0x20500df

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1272
    invoke-virtual {v0, p2}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1273
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->show()V

    move-object v2, v0

    .line 1275
    goto :goto_0
.end method

.method private toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;
    .locals 7
    .parameter "sec"

    .prologue
    .line 1780
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 1781
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 1782
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1783
    .local v2, str:Ljava/lang/String;
    return-object v2
.end method

.method private static validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;
    .locals 6
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/drm/DrmManagerClient$CustomAlertDialog;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .line 1174
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/DrmManagerClient$CustomAlertDialog;>;"
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "validateCustomAlertDialog(): validate within context: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    const/4 v2, 0x0

    .line 1176
    .local v2, result:Landroid/app/Dialog;
    monitor-enter p0

    .line 1177
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1178
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/drm/DrmManagerClient$CustomAlertDialog;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1179
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/drm/DrmManagerClient$CustomAlertDialog;

    .line 1180
    .local v0, dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "validateCustomAlertDialog(): stored dialog with creator context: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->getCreatorContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->getCreatorContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1182
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "validateCustomAlertDialog(): context match"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    move-object v2, v0

    .line 1187
    .end local v0           #dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    :cond_1
    monitor-exit p0

    .line 1188
    return-object v2

    .line 1187
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/drm/DrmManagerClient$CustomAlertDialog;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
    .locals 2
    .parameter "drmInfoRequest"

    .prologue
    .line 652
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/drm/DrmInfoRequest;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 653
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given drmInfoRequest is invalid/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_acquireDrmInfo(ILandroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    return-object v0
.end method

.method public acquireRights(Landroid/drm/DrmInfoRequest;)I
    .locals 2
    .parameter "drmInfoRequest"

    .prologue
    .line 673
    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 674
    .local v0, drmInfo:Landroid/drm/DrmInfo;
    if-nez v0, :cond_0

    .line 675
    const/16 v1, -0x7d0

    .line 677
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v1

    goto :goto_0
.end method

.method public canHandle(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 619
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 620
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_2
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 604
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 605
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_2
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_canHandle(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;)I
    .locals 2
    .parameter "uri"

    .prologue
    .line 791
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 792
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;I)I
    .locals 2
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 823
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 824
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 780
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;I)I
    .locals 2
    .parameter "path"
    .parameter "action"

    .prologue
    .line 807
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 808
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given path or action is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_checkRightsStatus(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkRightsStatusForTap(Landroid/net/Uri;I)I
    .locals 2
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 1765
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 1766
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1768
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatusForTap(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkRightsStatusForTap(Ljava/lang/String;I)I
    .locals 4
    .parameter "path"
    .parameter "action"

    .prologue
    .line 1739
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1740
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Given path or action is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1742
    :cond_1
    const-string v1, "DrmManagerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRightsStatusForTap(): java api. path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    iget v1, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v1, p1, p2}, Landroid/drm/DrmManagerClient;->_checkRightsStatus(ILjava/lang/String;I)I

    move-result v0

    .line 1745
    .local v0, result:I
    const-string v1, "DrmManagerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRightsStatusForTap(): java api. the result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    return v0
.end method

.method public clearDrmWallpaperFilepath(Landroid/content/Context;)V
    .locals 3
    .parameter "mContext"

    .prologue
    .line 2191
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "drm_wallpaper_filepath"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2192
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "drm_cropimage_filepath"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2193
    return-void
.end method

.method public closeConvertSession(I)Landroid/drm/DrmConvertedStatus;
    .locals 1
    .parameter "convertId"

    .prologue
    .line 921
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_closeConvertSession(II)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    return-object v0
.end method

.method public consume(Landroid/net/Uri;I)I
    .locals 6
    .parameter "uri"
    .parameter "action"

    .prologue
    const/16 v2, -0x7d0

    .line 1214
    if-eqz p1, :cond_0

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v3, p1, :cond_0

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1215
    :cond_0
    const-string v3, "DrmManagerClient"

    const-string v4, "consume() : Given uri or action is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :goto_0
    return v2

    .line 1219
    :cond_1
    const/4 v1, 0x0

    .line 1221
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1226
    invoke-virtual {p0, v1, p2}, Landroid/drm/DrmManagerClient;->consume(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "consume() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public consume(Ljava/lang/String;I)I
    .locals 2
    .parameter "path"
    .parameter "action"

    .prologue
    .line 1237
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1238
    :cond_0
    const-string v0, "DrmManagerClient"

    const-string v1, "consume() : Given path should be non null or action is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    const/16 v0, -0x7d0

    .line 1241
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_consume(ILjava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public consumeRights(Ljava/lang/String;)V
    .locals 6
    .parameter "filePath"

    .prologue
    .line 1928
    const-string v3, "DrmManagerClient"

    const-string v4, "DrmManagerClietn.consumeRights method invoked."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1930
    const-string v3, "content://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1931
    sget-object v3, Landroid/drm/DrmManagerClient;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 1936
    :cond_0
    :goto_0
    sget-object v3, Landroid/drm/DrmManagerClient;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v3, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1937
    .local v1, mimeType:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1938
    .local v0, action:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1939
    invoke-static {v1}, Landroid/drm/DrmUtils;->getAction(Ljava/lang/String;)I

    move-result v0

    .line 1940
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filepath :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "action :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    :cond_1
    sget-object v3, Landroid/drm/DrmManagerClient;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v3, p1, v0}, Landroid/drm/DrmManagerClient;->consume(Ljava/lang/String;I)I

    .line 1945
    .end local v0           #action:I
    .end local v1           #mimeType:Ljava/lang/String;
    :cond_2
    return-void

    .line 1932
    :cond_3
    const-string v3, "file://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1933
    const-string v3, "file://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 1934
    .local v2, start_index:I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public convertData(I[B)Landroid/drm/DrmConvertedStatus;
    .locals 2
    .parameter "convertId"
    .parameter "inputData"

    .prologue
    .line 903
    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    .line 904
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given inputData should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_convertData(II[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    return-object v0
.end method

.method public deleteDrmWallpaper(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "filepath"

    .prologue
    .line 2235
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2236
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "drm_wallpaper_filepath"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2237
    .local v2, wallpaper:Ljava/lang/String;
    const-string v4, "DrmManagerClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deletedrmwallpaper wallpaper:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    const-string v4, "DrmManagerClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deletedrmwallpaper filepath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2241
    const-string/jumbo v4, "wallpaper"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    .line 2242
    .local v3, wallpaperMgr:Landroid/app/WallpaperManager;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2243
    const/4 v4, 0x1

    .line 2248
    .end local v3           #wallpaperMgr:Landroid/app/WallpaperManager;
    :goto_0
    return v4

    .line 2245
    :catch_0
    move-exception v1

    .line 2246
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "DrmManagerClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clear DRM wallpaper failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public drmSetAsWallpaper(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2206
    const-string v3, "DrmManagerClient"

    const-string v4, "enter drmSetWallpaper "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    sget-object v3, Landroid/drm/DrmManagerClient;->mDrmClient:Landroid/drm/DrmManagerClient;

    const/4 v4, 0x7

    invoke-virtual {v3, p2, v4}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 2208
    const v3, 0x305000d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2209
    .local v0, toastMsg:Ljava/lang/String;
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2224
    .end local v0           #toastMsg:Ljava/lang/String;
    :goto_0
    return v1

    .line 2212
    :cond_0
    invoke-virtual {p0, p2}, Landroid/drm/DrmManagerClient;->hasCountConstraint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2213
    const v3, 0x305000e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2214
    .restart local v0       #toastMsg:Ljava/lang/String;
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2217
    .end local v0           #toastMsg:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "drm_cropimage_filepath"

    invoke-static {v1, v3, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2218
    const-string v1, "DrmManagerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drmSetAsWallpaper  successful"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    :goto_1
    invoke-virtual {p0, p2}, Landroid/drm/DrmManagerClient;->consumeRights(Ljava/lang/String;)V

    move v1, v2

    .line 2224
    goto :goto_0

    .line 2220
    :cond_2
    const-string v1, "DrmManagerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drmSetAsWallpaper faile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 392
    const-string v0, "DrmManagerClient"

    const-string v1, "finalize DrmManagerClient instance."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-boolean v0, p0, Landroid/drm/DrmManagerClient;->mReleased:Z

    if-nez v0, :cond_0

    .line 394
    const-string v0, "DrmManagerClient"

    const-string v1, "You should have called release()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p0}, Landroid/drm/DrmManagerClient;->release()V

    .line 397
    :cond_0
    return-void
.end method

.method public getAvailableDrmEngines()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 480
    iget v4, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v4}, Landroid/drm/DrmManagerClient;->_getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;

    move-result-object v3

    .line 481
    .local v3, supportInfos:[Landroid/drm/DrmSupportInfo;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v0, descriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 484
    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/drm/DrmSupportInfo;->getDescriprition()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 487
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 488
    .local v1, drmEngines:[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public getConstraintFromFilePath(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 7
    .parameter "filePath"

    .prologue
    .line 2108
    const/4 v4, 0x0

    .line 2109
    .local v4, original_mimetype:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2111
    .local v0, action:I
    :try_start_0
    sget-object v5, Landroid/drm/DrmManagerClient;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v5, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2115
    :goto_0
    if-nez v4, :cond_0

    .line 2116
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 2117
    .local v3, index:I
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2118
    .local v1, extension:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2121
    .end local v1           #extension:Ljava/lang/String;
    .end local v3           #index:I
    :cond_0
    if-eqz v4, :cond_1

    .line 2122
    invoke-static {v4}, Landroid/drm/DrmUtils;->getAction(Ljava/lang/String;)I

    move-result v0

    .line 2124
    :cond_1
    sget-object v5, Landroid/drm/DrmManagerClient;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v5, p1, v0}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v5

    return-object v5

    .line 2112
    :catch_0
    move-exception v2

    .line 2113
    .local v2, iae:Ljava/lang/IllegalArgumentException;
    const-string v5, "DrmManagerClient"

    const-string v6, "fail to get mimetype"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;
    .locals 2
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 533
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 534
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 2
    .parameter "path"
    .parameter "action"

    .prologue
    .line 502
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 503
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given usage or path is invalid/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRingtoneUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .parameter "mContext"
    .parameter "type"

    .prologue
    .line 2485
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mtk_audioprofile_active"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2487
    .local v0, activeProfileKey:Ljava/lang/String;
    const-string v2, "general"

    .line 2488
    .local v2, profileName:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 2489
    const-string/jumbo v3, "mtk_audioprofile_"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 2492
    :cond_0
    const/4 v1, 0x0

    .line 2494
    .local v1, defaultringtoneuri:Landroid/net/Uri;
    const-string/jumbo v3, "ringtone"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "video_call"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2495
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ro_voice_ringtone_uri_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ringtones"

    invoke-direct {p0, p1, v3, v4}, Landroid/drm/DrmManagerClient;->parsePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2497
    :cond_2
    const-string/jumbo v3, "notification_sound"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ro_notification_uri_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "notifications"

    invoke-direct {p0, p1, v3, v4}, Landroid/drm/DrmManagerClient;->parsePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2500
    :cond_3
    return-object v1
.end method

.method public getDrmObjectType(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 708
    if-eqz p1, :cond_0

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, p1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 709
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Uri or the mimetype should be non null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 711
    :cond_2
    const-string v1, ""

    .line 713
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 718
    :goto_0
    invoke-virtual {p0, v1, p2}, Landroid/drm/DrmManagerClient;->getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 714
    :catch_0
    move-exception v0

    .line 716
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DrmManagerClient"

    const-string v3, "Given Uri could not be found in media store"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 691
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 692
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_2
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 3017
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 3018
    .local v0, mDrmClient:Landroid/drm/DrmManagerClient;
    invoke-direct {v0, p2}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 2
    .parameter "uri"

    .prologue
    .line 548
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 549
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .parameter "path"

    .prologue
    .line 517
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given path is invalid/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_getMetadata(ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getMethod(Landroid/net/Uri;)I
    .locals 2
    .parameter "uri"

    .prologue
    .line 1696
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 1697
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1699
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->getMethod(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMethod(Ljava/lang/String;)I
    .locals 4
    .parameter "path"

    .prologue
    .line 1710
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1711
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Given path should be non null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1714
    :cond_1
    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1715
    .local v0, cv:Landroid/content/ContentValues;
    if-eqz v0, :cond_2

    const-string v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1716
    const-string v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1717
    .local v1, m:Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 1718
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1721
    .end local v1           #m:Ljava/lang/Integer;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 766
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 767
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "path"

    .prologue
    .line 729
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 730
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Given path should be non null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 733
    :cond_1
    const/4 v5, 0x0

    .line 735
    .local v5, mime:Ljava/lang/String;
    const/4 v3, 0x0

    .line 737
    .local v3, is:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 738
    .local v0, fd:Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 739
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 740
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    .end local v3           #is:Ljava/io/FileInputStream;
    .local v4, is:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    move-object v3, v4

    .line 743
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    :cond_2
    :try_start_2
    iget v6, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v6, p1, v0}, Landroid/drm/DrmManagerClient;->_getOriginalMimeType(ILjava/lang/String;Ljava/io/FileDescriptor;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    .line 748
    if-eqz v3, :cond_3

    .line 750
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 755
    .end local v1           #file:Ljava/io/File;
    :cond_3
    :goto_0
    return-object v5

    .line 744
    :catch_0
    move-exception v2

    .line 746
    .local v2, ioe:Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v6, "DrmManagerClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOriginalMimeType: File I/O exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 748
    if-eqz v3, :cond_3

    .line 750
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 751
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v6

    goto :goto_0

    .line 748
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_4

    .line 750
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 748
    :cond_4
    :goto_3
    throw v6

    .line 751
    :catch_2
    move-exception v7

    goto :goto_3

    .line 748
    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v4       #is:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    goto :goto_2

    .line 744
    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public getTimeConstraint(Ljava/lang/String;)J
    .locals 5
    .parameter "filepath"

    .prologue
    .line 2074
    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient;->getConstraintFromFilePath(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2075
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "0"

    .line 2076
    .local v1, timeConstraintStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2077
    const-string/jumbo v2, "license_expiry_time"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2078
    const-string v2, "DrmManagerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTimeConstraint getTimeInSecondes:= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    :cond_0
    const-string v2, "DrmManagerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  timeConstraintStr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public hasCountConstraint(Ljava/lang/String;)Z
    .locals 3
    .parameter "filePath"

    .prologue
    const/4 v1, 0x0

    .line 2092
    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient;->getConstraintFromFilePath(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2093
    .local v0, cv:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 2094
    const-string/jumbo v2, "remaining_repeat_count"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "remaining_repeat_count"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 2097
    :cond_0
    return v1
.end method

.method public hasTimeConstraint(Ljava/lang/String;)Z
    .locals 6
    .parameter "filePath"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 2135
    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient;->getConstraintFromFilePath(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2136
    .local v0, cv:Landroid/content/ContentValues;
    if-eqz v0, :cond_1

    .line 2137
    const-string/jumbo v2, "license_start_time"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const-string/jumbo v2, "license_expiry_time"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 2140
    :cond_1
    return v1
.end method

.method public installDrmEngine(Ljava/lang/String;)V
    .locals 3
    .parameter "engineFilePath"

    .prologue
    .line 588
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given engineFilePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_installDrmEngine(ILjava/lang/String;)V

    .line 593
    return-void
.end method

.method public isValidCDSDType(Ljava/lang/String;)Z
    .locals 3
    .parameter "filePath"

    .prologue
    .line 2151
    const/4 v0, 0x0

    .line 2153
    .local v0, result:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2154
    const/4 v1, 0x0

    .line 2160
    :goto_0
    return v1

    .line 2156
    :cond_0
    const/4 v1, 0x2

    sget-object v2, Landroid/drm/DrmManagerClient;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getMethod(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x4

    sget-object v2, Landroid/drm/DrmManagerClient;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getMethod(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 2158
    :cond_1
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 2160
    goto :goto_0
.end method

.method public openConvertSession(Ljava/lang/String;)I
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 883
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 884
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path or the mimeType should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_openConvertSession(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public processDrmInfo(Landroid/drm/DrmInfo;)I
    .locals 4
    .parameter "drmInfo"

    .prologue
    .line 632
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/drm/DrmInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 633
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Given drmInfo is invalid/null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 635
    :cond_1
    const/16 v1, -0x7d0

    .line 636
    .local v1, result:I
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v2, :cond_2

    .line 637
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3, p1}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 638
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .line 640
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    return v1
.end method

.method public processExtraDrmInfo(Landroid/drm/DrmInfo;)I
    .locals 4
    .parameter "info"

    .prologue
    .line 932
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/drm/DrmInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 933
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Given extra drmInfo is invalid/null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 935
    :cond_1
    const/16 v1, -0x7d0

    .line 936
    .local v1, result:I
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v2, :cond_2

    .line 937
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/16 v3, 0x7d1

    invoke-virtual {v2, v3, p1}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 938
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .line 940
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    return v1
.end method

.method public processExtraDrmInfoSync(Landroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
    .locals 3
    .parameter "info"

    .prologue
    .line 949
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/drm/DrmInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 950
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Given extra drmInfo is invalid/null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 954
    :cond_1
    iget v1, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v1, p1}, Landroid/drm/DrmManagerClient;->_processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v0

    .line 955
    .local v0, status:Landroid/drm/DrmInfoStatus;
    return-object v0
.end method

.method public refreshMediaStore(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 2471
    const-string v0, "DrmManagerClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshMediaStore for filePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2473
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 407
    iget-boolean v0, p0, Landroid/drm/DrmManagerClient;->mReleased:Z

    if-eqz v0, :cond_0

    .line 408
    const-string v0, "DrmManagerClient"

    const-string v1, "You have already called release()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :goto_0
    return-void

    .line 412
    :cond_0
    const-string v0, "DrmManagerClient"

    const-string/jumbo v1, "release event threads."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/drm/DrmManagerClient;->mReleased:Z

    .line 414
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v0, :cond_1

    .line 416
    const-string v0, "DrmManagerClient"

    const-string/jumbo v1, "quit event handler thread."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 418
    iput-object v2, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    .line 420
    :cond_1
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-eqz v0, :cond_2

    .line 422
    const-string v0, "DrmManagerClient"

    const-string/jumbo v1, "quit info handler thread."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 424
    iput-object v2, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    .line 426
    :cond_2
    iput-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    .line 427
    iput-object v2, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    .line 428
    iput-object v2, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 429
    iput-object v2, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    .line 430
    iput-object v2, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 431
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0}, Landroid/drm/DrmManagerClient;->_release(I)V

    goto :goto_0
.end method

.method public removeAllRights()I
    .locals 4

    .prologue
    .line 864
    const/16 v1, -0x7d0

    .line 865
    .local v1, result:I
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v2, :cond_0

    .line 866
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 867
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 869
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return v1
.end method

.method public removeRights(Landroid/net/Uri;)I
    .locals 2
    .parameter "uri"

    .prologue
    .line 851
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 852
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->removeRights(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removeRights(Ljava/lang/String;)I
    .locals 2
    .parameter "path"

    .prologue
    .line 837
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given path should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_removeRights(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public saveRights(Landroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "drmRights"
    .parameter "rightsPath"
    .parameter "contentPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/drm/DrmRights;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 572
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given drmRights or contentPath is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_1
    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 575
    invoke-virtual {p1}, Landroid/drm/DrmRights;->getData()[B

    move-result-object v0

    invoke-static {p2, v0}, Landroid/drm/DrmUtils;->writeToFile(Ljava/lang/String;[B)V

    .line 577
    :cond_2
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/drm/DrmManagerClient;->_saveRights(ILandroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setDrmWallpaperFilepath(Landroid/content/Context;)V
    .locals 5
    .parameter "mContext"

    .prologue
    .line 2170
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "drm_cropimage_filepath"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2172
    .local v0, cropimage_path:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "drm_wallpaper_filepath"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2174
    .local v1, wallpaper_path:Ljava/lang/String;
    const-string v2, "DrmManagerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDrmWallpaperFilePath cropimage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    const-string v2, "DrmManagerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDrmWallpaperFilePath wallpaper_path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2177
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "drm_wallpaper_filepath"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2178
    invoke-virtual {p0, p1, v0}, Landroid/drm/DrmManagerClient;->watchingDrmWallpaperStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 2181
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "drm_cropimage_filepath"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2182
    return-void
.end method

.method public declared-synchronized setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V
    .locals 1
    .parameter "errorListener"

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 468
    if-eqz p1, :cond_0

    .line 469
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    :cond_0
    monitor-exit p0

    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V
    .locals 1
    .parameter "eventListener"

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 455
    if-eqz p1, :cond_0

    .line 456
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :cond_0
    monitor-exit p0

    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnInfoListener(Landroid/drm/DrmManagerClient$OnInfoListener;)V
    .locals 1
    .parameter "infoListener"

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    .line 442
    if-eqz p1, :cond_0

    .line 443
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :cond_0
    monitor-exit p0

    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showLicenseAcquisition(Landroid/content/Context;Landroid/net/Uri;Landroid/drm/DrmManagerClient$DrmOperationListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 2806
    sget-boolean v3, Landroid/drm/DrmManagerClient;->OMA_DRM_FL_ONLY:Z

    if-eqz v3, :cond_0

    .line 2807
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "showLicenseAcquisition() : Forward-lock-only is set."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    :goto_0
    return-object v2

    .line 2810
    :cond_0
    if-eqz p2, :cond_1

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v3, p2, :cond_2

    .line 2811
    :cond_1
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "showLicenseAcquisition() : Given uri is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2814
    :cond_2
    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_3

    .line 2815
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "showLicenseAcquisition() : not an Activity context, give up"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2819
    :cond_3
    const/4 v1, 0x0

    .line 2821
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p2}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2826
    invoke-virtual {p0, p1, v1, p3}, Landroid/drm/DrmManagerClient;->showLicenseAcquisition(Landroid/content/Context;Ljava/lang/String;Landroid/drm/DrmManagerClient$DrmOperationListener;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 2822
    :catch_0
    move-exception v0

    .line 2823
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showLicenseAcquisition() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showLicenseAcquisition(Landroid/content/Context;Ljava/lang/String;Landroid/drm/DrmManagerClient$DrmOperationListener;)Landroid/app/Dialog;
    .locals 11
    .parameter "context"
    .parameter "path"
    .parameter "listener"

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 2835
    sget-boolean v7, Landroid/drm/DrmManagerClient;->OMA_DRM_FL_ONLY:Z

    if-eqz v7, :cond_0

    .line 2836
    const-string v7, "DrmManagerClient"

    const-string/jumbo v8, "showLicenseAcquisition() : Forward-lock-only is set."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 2919
    :goto_0
    return-object v4

    .line 2839
    :cond_0
    const-string v7, "DrmManagerClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "showLicenseAcquisition() within context: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    if-eqz p2, :cond_1

    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2842
    :cond_1
    const-string v7, "DrmManagerClient"

    const-string/jumbo v8, "showLicenseAcquisition() : Given path should be non null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 2843
    goto :goto_0

    .line 2845
    :cond_2
    instance-of v7, p1, Landroid/app/Activity;

    if-nez v7, :cond_3

    .line 2846
    const-string v7, "DrmManagerClient"

    const-string/jumbo v8, "showLicenseAcquisition() : not an Activity context, give up"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 2847
    goto :goto_0

    .line 2850
    :cond_3
    sget-object v7, Landroid/drm/DrmManagerClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-static {v7, p1}, Landroid/drm/DrmManagerClient;->checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 2851
    sget-object v7, Landroid/drm/DrmManagerClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-static {v7, p1}, Landroid/drm/DrmManagerClient;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v4

    .line 2852
    .local v4, result:Landroid/app/Dialog;
    if-eqz v4, :cond_4

    .line 2853
    const-string v7, "DrmManagerClient"

    const-string/jumbo v8, "showLicenseAcquisition(): use the existing one"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2858
    :cond_4
    invoke-virtual {p0, p2}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2859
    .local v0, cv:Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 2860
    .local v5, rightsIssuer:Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string v7, "drm_rights_issuer"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2861
    const-string v7, "drm_rights_issuer"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2865
    :cond_5
    if-eqz v5, :cond_6

    const-string v7, "http"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 2866
    :cond_6
    const v7, 0x20500d9

    invoke-static {p1, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 2869
    if-eqz p3, :cond_7

    .line 2870
    const/4 v7, 0x2

    invoke-interface {p3, v7}, Landroid/drm/DrmManagerClient$DrmOperationListener;->onOperated(I)V

    :cond_7
    move-object v4, v1

    .line 2872
    goto/16 :goto_0

    .line 2876
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2877
    .local v3, res:Landroid/content/res/Resources;
    const v7, 0x20500d8

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2880
    .local v2, message:Ljava/lang/String;
    move-object v6, v5

    .line 2882
    .local v6, rightsIssuerFinal:Ljava/lang/String;
    new-instance v1, Landroid/drm/DrmManagerClient$CustomAlertDialog;

    sget-object v7, Landroid/drm/DrmManagerClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v1, p1, v7}, Landroid/drm/DrmManagerClient$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2884
    .local v1, dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    const/4 v7, -0x1

    const v8, 0x20500d6

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/drm/DrmManagerClient$12;

    invoke-direct {v9, p0, v6, p1}, Landroid/drm/DrmManagerClient$12;-><init>(Landroid/drm/DrmManagerClient;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v7, v8, v9}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2895
    const/4 v7, -0x2

    const/high16 v8, 0x104

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/drm/DrmManagerClient$13;

    invoke-direct {v9, p0}, Landroid/drm/DrmManagerClient$13;-><init>(Landroid/drm/DrmManagerClient;)V

    invoke-virtual {v1, v7, v8, v9}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2903
    const v7, 0x108009b

    invoke-virtual {v1, v7}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setIcon(I)V

    .line 2904
    const v7, 0x20500d7

    invoke-virtual {v1, v7}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setTitle(I)V

    .line 2905
    invoke-virtual {v1, v2}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2907
    new-instance v7, Landroid/drm/DrmManagerClient$14;

    invoke-direct {v7, p0, p3}, Landroid/drm/DrmManagerClient$14;-><init>(Landroid/drm/DrmManagerClient;Landroid/drm/DrmManagerClient$DrmOperationListener;)V

    invoke-virtual {v1, v7}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2917
    invoke-virtual {v1}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->show()V

    move-object v4, v1

    .line 2919
    goto/16 :goto_0
.end method

.method public showLicenseAcquisitionDialog(Landroid/content/Context;Landroid/net/Uri;)Landroid/app/Dialog;
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 1554
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/drm/DrmManagerClient;->showLicenseAcquisitionDialog(Landroid/content/Context;Landroid/net/Uri;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public showLicenseAcquisitionDialog(Landroid/content/Context;Landroid/net/Uri;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "dismissListener"

    .prologue
    const/4 v2, 0x0

    .line 1580
    sget-boolean v3, Landroid/drm/DrmManagerClient;->OMA_DRM_FL_ONLY:Z

    if-eqz v3, :cond_0

    .line 1581
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "showLicenseAcquisitionDialog() : Forward-lock-only is set."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :goto_0
    return-object v2

    .line 1584
    :cond_0
    if-eqz p2, :cond_1

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v3, p2, :cond_2

    .line 1585
    :cond_1
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "showLicenseAcquisitionDialog() : Given uri is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1588
    :cond_2
    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_3

    .line 1589
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "showLicenseAcquisitionDialog() : not an Activity context, give up"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1593
    :cond_3
    const/4 v1, 0x0

    .line 1595
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p2}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1600
    invoke-virtual {p0, p1, v1, p3}, Landroid/drm/DrmManagerClient;->showLicenseAcquisitionDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 1596
    :catch_0
    move-exception v0

    .line 1597
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showLicenseAcquisitionDialog() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showLicenseAcquisitionDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .parameter "context"
    .parameter "path"

    .prologue
    .line 1566
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/drm/DrmManagerClient;->showLicenseAcquisitionDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public showLicenseAcquisitionDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 11
    .parameter "context"
    .parameter "path"
    .parameter "dismissListener"

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 1614
    sget-boolean v7, Landroid/drm/DrmManagerClient;->OMA_DRM_FL_ONLY:Z

    if-eqz v7, :cond_0

    .line 1615
    const-string v7, "DrmManagerClient"

    const-string/jumbo v8, "showLicenseAcquisitionDialog() : Forward-lock-only is set."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 1685
    :goto_0
    return-object v4

    .line 1618
    :cond_0
    const-string v7, "DrmManagerClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "showLicenseAcquisitionDialog() within context: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    if-eqz p2, :cond_1

    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1621
    :cond_1
    const-string v7, "DrmManagerClient"

    const-string/jumbo v8, "showLicenseAcquisitionDialog() : Given path should be non null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 1622
    goto :goto_0

    .line 1624
    :cond_2
    instance-of v7, p1, Landroid/app/Activity;

    if-nez v7, :cond_3

    .line 1625
    const-string v7, "DrmManagerClient"

    const-string/jumbo v8, "showLicenseAcquisitionDialog() : not an Activity context, give up"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 1626
    goto :goto_0

    .line 1629
    :cond_3
    sget-object v7, Landroid/drm/DrmManagerClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-static {v7, p1}, Landroid/drm/DrmManagerClient;->checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 1630
    sget-object v7, Landroid/drm/DrmManagerClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-static {v7, p1}, Landroid/drm/DrmManagerClient;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v4

    .line 1631
    .local v4, result:Landroid/app/Dialog;
    if-eqz v4, :cond_4

    .line 1632
    const-string v7, "DrmManagerClient"

    const-string/jumbo v8, "showLicenseAcquisitionDialog(): use the existing one"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1637
    :cond_4
    invoke-virtual {p0, p2}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1638
    .local v0, cv:Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 1639
    .local v5, rightsIssuer:Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string v7, "drm_rights_issuer"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1640
    const-string v7, "drm_rights_issuer"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1644
    :cond_5
    if-eqz v5, :cond_6

    const-string v7, "http"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1645
    :cond_6
    const v7, 0x20500d9

    invoke-static {p1, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    move-object v4, v1

    .line 1648
    goto :goto_0

    .line 1652
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1653
    .local v3, res:Landroid/content/res/Resources;
    const v7, 0x20500d8

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1656
    .local v2, message:Ljava/lang/String;
    move-object v6, v5

    .line 1658
    .local v6, rightsIssuerFinal:Ljava/lang/String;
    new-instance v1, Landroid/drm/DrmManagerClient$CustomAlertDialog;

    sget-object v7, Landroid/drm/DrmManagerClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v1, p1, v7}, Landroid/drm/DrmManagerClient$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1660
    .local v1, dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    const/4 v7, -0x1

    const v8, 0x20500d6

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/drm/DrmManagerClient$3;

    invoke-direct {v9, p0, v6, p1}, Landroid/drm/DrmManagerClient$3;-><init>(Landroid/drm/DrmManagerClient;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v7, v8, v9}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1671
    const/4 v7, -0x2

    const/high16 v8, 0x104

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/drm/DrmManagerClient$4;

    invoke-direct {v9, p0}, Landroid/drm/DrmManagerClient$4;-><init>(Landroid/drm/DrmManagerClient;)V

    invoke-virtual {v1, v7, v8, v9}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1679
    const v7, 0x108009b

    invoke-virtual {v1, v7}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setIcon(I)V

    .line 1680
    const v7, 0x20500d7

    invoke-virtual {v1, v7}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setTitle(I)V

    .line 1681
    invoke-virtual {v1, v2}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1682
    invoke-virtual {v1, p3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1683
    invoke-virtual {v1}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->show()V

    move-object v4, v1

    .line 1685
    goto/16 :goto_0
.end method

.method public showProtectionInfoDialog(Landroid/content/Context;Landroid/net/Uri;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 1334
    if-eqz p2, :cond_0

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v3, p2, :cond_1

    .line 1335
    :cond_0
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "showProtectionInfoDialog() : Given uri is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :goto_0
    return-object v2

    .line 1339
    :cond_1
    const/4 v1, 0x0

    .line 1341
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p2}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1346
    invoke-virtual {p0, p1, v1}, Landroid/drm/DrmManagerClient;->showProtectionInfoDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 1342
    :catch_0
    move-exception v0

    .line 1343
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showProtectionInfoDialog() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showProtectionInfoDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 33
    .parameter "context"
    .parameter "path"

    .prologue
    .line 1358
    const-string v29, "DrmManagerClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "showProtectionInfoDialog() withing context: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    if-eqz p2, :cond_0

    const-string v29, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 1361
    :cond_0
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : Given path should be non null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    const/16 v19, 0x0

    .line 1542
    :goto_0
    return-object v19

    .line 1365
    :cond_1
    sget-object v29, Landroid/drm/DrmManagerClient;->sProtectionInfoDialogQueue:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/drm/DrmManagerClient;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v19

    .line 1366
    .local v19, result:Landroid/app/Dialog;
    if-eqz v19, :cond_2

    .line 1367
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog(): use the existing one"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1371
    :cond_2
    const v29, 0x2070008

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    .line 1373
    .local v23, scrollView:Landroid/view/View;
    const v29, 0x2100013

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1375
    .local v13, fileNameView:Landroid/widget/TextView;
    if-nez v13, :cond_3

    .line 1376
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : the TextView: fileNameView is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    const/16 v19, 0x0

    goto :goto_0

    .line 1380
    :cond_3
    const-string v29, "/"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v24

    .line 1381
    .local v24, start:I
    const-string v29, "."

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 1382
    .local v8, end:I
    add-int/lit8 v29, v24, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1383
    .local v12, fileNameStr:Ljava/lang/String;
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1385
    const v29, 0x2100014

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1387
    .local v16, protectionInfoStatusView:Landroid/widget/TextView;
    if-nez v16, :cond_4

    .line 1388
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : the TextView: protectionInfoStatusView is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const/16 v19, 0x0

    goto :goto_0

    .line 1392
    :cond_4
    const/16 v29, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v22

    .line 1393
    .local v22, rightsStatus:I
    if-nez v22, :cond_6

    .line 1394
    const v29, 0x20500cf

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1399
    :cond_5
    :goto_1
    const v29, 0x2100015

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1401
    .local v5, beginView:Landroid/widget/TextView;
    if-nez v5, :cond_7

    .line 1402
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : the TextView: beginView is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1395
    .end local v5           #beginView:Landroid/widget/TextView;
    :cond_6
    const/16 v29, 0x1

    move/from16 v0, v22

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 1396
    const v29, 0x20500d0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1405
    .restart local v5       #beginView:Landroid/widget/TextView;
    :cond_7
    const v29, 0x2100017

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1407
    .local v11, endView:Landroid/widget/TextView;
    if-nez v11, :cond_8

    .line 1408
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : the TextView: endView is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1411
    :cond_8
    const v29, 0x2100019

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 1413
    .local v27, useLeftView:Landroid/widget/TextView;
    if-nez v27, :cond_9

    .line 1414
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : the TextView: useLeftView is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1417
    :cond_9
    const v29, 0x2100016

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1419
    .local v4, beginValueView:Landroid/widget/TextView;
    if-nez v4, :cond_a

    .line 1420
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : the TextView: beginValueView is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1423
    :cond_a
    const v29, 0x2100018

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1425
    .local v10, endValueView:Landroid/widget/TextView;
    if-nez v10, :cond_b

    .line 1426
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : the TextView: endValueView is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1429
    :cond_b
    const v29, 0x210001a

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 1431
    .local v26, useLeftValueView:Landroid/widget/TextView;
    if-nez v26, :cond_c

    .line 1432
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : the TextView: useLeftValueView is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1436
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1437
    .local v15, mime:Ljava/lang/String;
    if-nez v15, :cond_d

    .line 1438
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : failed to get the original mime type"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1443
    :cond_d
    new-instance v7, Landroid/drm/DrmManagerClient$CustomAlertDialog;

    sget-object v29, Landroid/drm/DrmManagerClient;->sProtectionInfoDialogQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-direct {v7, v0, v1}, Landroid/drm/DrmManagerClient$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1444
    .local v7, dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 1446
    .local v18, res:Landroid/content/res/Resources;
    invoke-static {v15}, Landroid/drm/DrmUtils;->getAction(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v28

    .line 1447
    .local v28, values:Landroid/content/ContentValues;
    if-eqz v28, :cond_e

    invoke-virtual/range {v28 .. v28}, Landroid/content/ContentValues;->size()I

    move-result v29

    if-nez v29, :cond_11

    .line 1448
    :cond_e
    const v29, 0x20500d2

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1449
    const-string v29, ""

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1450
    const-string v29, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1452
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v6

    .line 1453
    .local v6, cv:Landroid/content/ContentValues;
    const/16 v20, 0x0

    .line 1454
    .local v20, rightsIssuer:Ljava/lang/String;
    if-eqz v6, :cond_f

    const-string v29, "drm_rights_issuer"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 1455
    const-string v29, "drm_rights_issuer"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1459
    :cond_f
    move-object/from16 v21, v20

    .line 1460
    .local v21, rightsIssuerFinal:Ljava/lang/String;
    if-eqz v21, :cond_10

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_10

    .line 1461
    const/16 v29, -0x1

    const v30, 0x20500d6

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Landroid/drm/DrmManagerClient$1;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/drm/DrmManagerClient$1;-><init>(Landroid/drm/DrmManagerClient;Ljava/lang/String;Landroid/content/Context;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v7, v0, v1, v2}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1530
    .end local v6           #cv:Landroid/content/ContentValues;
    .end local v20           #rightsIssuer:Ljava/lang/String;
    .end local v21           #rightsIssuerFinal:Ljava/lang/String;
    :cond_10
    :goto_2
    const/16 v29, -0x3

    const v30, 0x104000a

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Landroid/drm/DrmManagerClient$2;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient$2;-><init>(Landroid/drm/DrmManagerClient;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v7, v0, v1, v2}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1538
    const v29, 0x2050062

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setTitle(I)V

    .line 1539
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setView(Landroid/view/View;)V

    .line 1540
    invoke-virtual {v7}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->show()V

    move-object/from16 v19, v7

    .line 1542
    goto/16 :goto_0

    .line 1474
    :cond_11
    const-string/jumbo v29, "license_start_time"

    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 1475
    const-string/jumbo v29, "license_start_time"

    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v25

    .line 1476
    .local v25, startL:Ljava/lang/Long;
    if-nez v25, :cond_12

    .line 1477
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : startL is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1480
    :cond_12
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    const-wide/16 v31, -0x1

    cmp-long v29, v29, v31

    if-nez v29, :cond_13

    .line 1481
    const v29, 0x20500d1

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1489
    .end local v25           #startL:Ljava/lang/Long;
    :goto_3
    const-string/jumbo v29, "license_expiry_time"

    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_17

    .line 1490
    const-string/jumbo v29, "license_expiry_time"

    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 1491
    .local v9, endL:Ljava/lang/Long;
    if-nez v9, :cond_15

    .line 1492
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : endL is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1483
    .end local v9           #endL:Ljava/lang/Long;
    .restart local v25       #startL:Ljava/lang/Long;
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1486
    .end local v25           #startL:Ljava/lang/Long;
    :cond_14
    const v29, 0x20500d1

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 1495
    .restart local v9       #endL:Ljava/lang/Long;
    :cond_15
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    const-wide/16 v31, -0x1

    cmp-long v29, v29, v31

    if-nez v29, :cond_16

    .line 1496
    const v29, 0x20500d1

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1504
    .end local v9           #endL:Ljava/lang/Long;
    :goto_4
    const-string/jumbo v29, "remaining_repeat_count"

    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1c

    const-string/jumbo v29, "max_repeat_count"

    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1c

    .line 1506
    const-string/jumbo v29, "remaining_repeat_count"

    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    .line 1507
    .local v17, remainCount:Ljava/lang/Long;
    if-nez v17, :cond_18

    .line 1508
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : remainCount is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1498
    .end local v17           #remainCount:Ljava/lang/Long;
    .restart local v9       #endL:Ljava/lang/Long;
    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/drm/DrmManagerClient;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1501
    .end local v9           #endL:Ljava/lang/Long;
    :cond_17
    const v29, 0x20500d1

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 1512
    .restart local v17       #remainCount:Ljava/lang/Long;
    :cond_18
    const-string/jumbo v29, "max_repeat_count"

    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 1513
    .local v14, maxCount:Ljava/lang/Long;
    if-nez v14, :cond_19

    .line 1514
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : maxCount is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1518
    :cond_19
    const-string v29, "DrmManagerClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "showProtectionInfoDialog() : remainCount="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", maxCount="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    const-wide/16 v31, -0x1

    cmp-long v29, v29, v31

    if-eqz v29, :cond_1a

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    const-wide/16 v31, -0x1

    cmp-long v29, v29, v31

    if-nez v29, :cond_1b

    .line 1520
    :cond_1a
    const v29, 0x20500d1

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 1522
    :cond_1b
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v14}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1525
    .end local v14           #maxCount:Ljava/lang/Long;
    .end local v17           #remainCount:Ljava/lang/Long;
    :cond_1c
    const v29, 0x20500d1

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2
.end method

.method public watchStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    .locals 24
    .parameter "mContext"
    .parameter "ringtonePath"
    .parameter "typeName"
    .parameter "cr"
    .parameter "values"

    .prologue
    .line 2314
    const-string v19, "DrmManagerClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "watchStatus  mUri= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient;->mUri:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ringtonePath "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    const-string v19, "DrmManagerClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "watchingDrmRingtoneStatus audio_CALL:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_8

    .line 2319
    :cond_0
    const-string v19, "DrmManagerClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Drm file deleted or without valid right, get the default ringtone uri for:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/drm/DrmManagerClient;->getDefaultRingtoneUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2322
    .local v9, defaultringtoneuir:Landroid/net/Uri;
    const-string/jumbo v19, "ringtone"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 2323
    const-string v19, "drm_audio_set_as_ringtone"

    const-string v20, ""

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2324
    const-string v19, "DrmManagerClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "watchingDrmRingtoneStatus audio_CALL:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    :cond_1
    const-string/jumbo v19, "video_call"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 2328
    const-string v19, "drm_video_set_as_ringtone"

    const-string v20, ""

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2329
    const-string v19, "DrmManagerClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "watchingDrmRingtoneStatus VIDEO_CALL:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    :cond_2
    const-string v19, "DrmManagerClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "watchingDrmRingtoneStatus  defaultringtoneuir= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    if-nez v9, :cond_6

    .line 2333
    const-string v19, ""

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2338
    :goto_0
    new-instance v17, Landroid/content/ContentValues;

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2339
    .local v17, mValues:Landroid/content/ContentValues;
    const-string/jumbo v19, "ringtone"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string/jumbo v19, "video_call"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 2340
    :cond_3
    const-string/jumbo v19, "is_ringtone"

    const-string v20, "1"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2344
    :cond_4
    const-string v19, "DrmManagerClient"

    const-string v20, "clear drm ringtone"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 2347
    const-string v19, "DrmManagerClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "ringtonePath : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "is exsited and show toast"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    const v19, 0x305000c

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object p2, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 2349
    .local v18, toastMsg:Ljava/lang/String;
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 2351
    const-string/jumbo v19, "is_ringtone"

    const-string v20, "0"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    const-string/jumbo v19, "is_alarm"

    const-string v20, "0"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    const-string/jumbo v19, "is_notification"

    const-string v20, "0"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2354
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient;->mUri:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2461
    .end local v9           #defaultringtoneuir:Landroid/net/Uri;
    .end local v17           #mValues:Landroid/content/ContentValues;
    .end local v18           #toastMsg:Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    .line 2335
    .restart local v9       #defaultringtoneuir:Landroid/net/Uri;
    :cond_6
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2336
    const-string v19, "DrmManagerClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "watchingDrmRingtoneStatus  = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2357
    .restart local v17       #mValues:Landroid/content/ContentValues;
    :cond_7
    const-string v19, "DrmManagerClient"

    const-string v20, "drm ringtone file is deleted."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    sget-object v19, Landroid/drm/DrmManagerClient;->mDrmClient:Landroid/drm/DrmManagerClient;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/drm/DrmManagerClient;->refreshMediaStore(Landroid/content/Context;Ljava/lang/String;)V

    .line 2359
    const v19, 0x305000b

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object p2, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 2360
    .restart local v18       #toastMsg:Ljava/lang/String;
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2363
    .end local v9           #defaultringtoneuir:Landroid/net/Uri;
    .end local v17           #mValues:Landroid/content/ContentValues;
    .end local v18           #toastMsg:Ljava/lang/String;
    :cond_8
    if-eqz p2, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_5

    .line 2366
    sget-object v19, Landroid/drm/DrmManagerClient;->mDrmClient:Landroid/drm/DrmManagerClient;

    if-nez v19, :cond_9

    .line 2367
    invoke-static/range {p1 .. p1}, Landroid/drm/DrmManagerClient;->getInstance(Landroid/content/Context;)Landroid/drm/DrmManagerClient;

    .line 2368
    :cond_9
    sget-object v19, Landroid/drm/DrmManagerClient;->mDrmClient:Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient;->mUri:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/drm/DrmManagerClient;->getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;

    move-result-object v7

    .line 2370
    .local v7, cv:Landroid/content/ContentValues;
    if-eqz v7, :cond_5

    .line 2372
    const-string/jumbo v19, "license_expiry_time"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_e

    .line 2375
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->getTimeConstraint(Ljava/lang/String;)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/drm/DrmManagerClient;->drmConstraintsTime:J

    .line 2378
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v8, v0, [B

    .line 2379
    .local v8, data:[B
    const/16 v19, 0x0

    const/16 v20, 0x0

    aput-byte v20, v8, v19

    .line 2380
    new-instance v12, Landroid/drm/DrmInfo;

    const/16 v19, 0x7d9

    const-string v20, "application/vnd.oma.drm.content"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v8, v1}, Landroid/drm/DrmInfo;-><init>(I[BLjava/lang/String;)V

    .line 2388
    .local v12, drmInfo:Landroid/drm/DrmInfo;
    sget-object v19, Landroid/drm/DrmManagerClient;->mDrmClient:Landroid/drm/DrmManagerClient;

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/drm/DrmManagerClient;->processExtraDrmInfoSync(Landroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v13

    .line 2390
    .local v13, drmStatus:Landroid/drm/DrmInfoStatus;
    if-eqz v13, :cond_5

    iget v0, v13, Landroid/drm/DrmInfoStatus;->statusCode:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 2392
    :try_start_0
    iget-object v0, v13, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v6

    .line 2393
    .local v6, currentTime:[B
    if-eqz v6, :cond_a

    .line 2394
    new-instance v19, Ljava/lang/String;

    const-string v20, "US-ASCII"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/drm/DrmManagerClient;->drmTrustSecureTime:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2404
    .end local v6           #currentTime:[B
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/drm/DrmManagerClient;->drmTrustSecureTime:J

    move-wide/from16 v19, v0

    const-wide/16 v21, -0x1

    cmp-long v19, v19, v21

    if-nez v19, :cond_b

    .line 2405
    const-string v19, "DrmManagerClient"

    const-string v20, "can not get trust drm time"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    :cond_b
    const-string v19, "DrmManagerClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "drmConstraintsTime := "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/drm/DrmManagerClient;->drmConstraintsTime:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " date: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/drm/DrmManagerClient;->mDrmClient:Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/drm/DrmManagerClient;->drmConstraintsTime:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/drm/DrmManagerClient;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    const-string v19, "DrmManagerClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "drmTrustSecureTime := "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/drm/DrmManagerClient;->drmTrustSecureTime:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " date: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/drm/DrmManagerClient;->mDrmClient:Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/drm/DrmManagerClient;->drmTrustSecureTime:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/drm/DrmManagerClient;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/drm/DrmManagerClient;->drmConstraintsTime:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/drm/DrmManagerClient;->drmTrustSecureTime:J

    move-wide/from16 v21, v0

    sub-long v19, v19, v21

    const-wide/16 v21, 0x3e8

    mul-long v10, v19, v21

    .line 2412
    .local v10, delta:J
    const-wide/16 v19, 0x0

    cmp-long v19, v10, v19

    if-gez v19, :cond_c

    .line 2414
    const-string v19, "DrmManagerClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "delta < 0, recheck drm ringtone, mUri = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient;->mUri:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient;->mUri:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/drm/DrmManagerClient;->watchingDrmRingtoneStatus(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2396
    .end local v10           #delta:J
    :catch_0
    move-exception v15

    .line 2397
    .local v15, ex:Ljava/lang/NumberFormatException;
    const-string v19, "DrmManagerClient"

    const-string v20, "The drm secure time is invalid-need-synchronization!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    const-wide/16 v19, -0x1

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/drm/DrmManagerClient;->drmTrustSecureTime:J

    goto/16 :goto_2

    .line 2399
    .end local v15           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v14

    .line 2400
    .local v14, e:Ljava/lang/Exception;
    const-string v19, "DrmManagerClient"

    const-string v20, "Got an other Exception."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    const-wide/16 v19, -0x1

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/drm/DrmManagerClient;->drmTrustSecureTime:J

    goto/16 :goto_2

    .line 2422
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v10       #delta:J
    :cond_c
    const-string/jumbo v19, "ringtone"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 2423
    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v19, "jrdcom.intent.action.SET_RINGTONE_CHECKER"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2424
    .local v16, it:Landroid/content/Intent;
    const-string v19, "DrmManagerClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "watchtrustingDrmRingtoneStatus ACTION_SET_RINGTONE_CHECKER:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2426
    .local v5, bl:Landroid/os/Bundle;
    const-string v19, "delta"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2427
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2428
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2431
    .end local v5           #bl:Landroid/os/Bundle;
    .end local v16           #it:Landroid/content/Intent;
    :cond_d
    const-string/jumbo v19, "video_call"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 2432
    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v19, "jrdcom.intent.action.SET_VIDEO_RINGTONE_CHECKER"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2433
    .restart local v16       #it:Landroid/content/Intent;
    const-string v19, "DrmManagerClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "watchingDrmRingtoneStatus ACTION_SET_VIDEO_RINGTONE_CHECKER:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2435
    .restart local v5       #bl:Landroid/os/Bundle;
    const-string v19, "delta"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2436
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2437
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2444
    .end local v5           #bl:Landroid/os/Bundle;
    .end local v8           #data:[B
    .end local v10           #delta:J
    .end local v12           #drmInfo:Landroid/drm/DrmInfo;
    .end local v13           #drmStatus:Landroid/drm/DrmInfoStatus;
    .end local v16           #it:Landroid/content/Intent;
    :cond_e
    sget-object v19, Landroid/drm/DrmManagerClient;->mDrmClient:Landroid/drm/DrmManagerClient;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->isValidCDSDType(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 2447
    const-string v19, "DrmManagerClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "filepath=: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " has interval constraint, consume drm right!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->consumeRights(Ljava/lang/String;)V

    .line 2454
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->hasTimeConstraint(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 2455
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient;->mUri:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/drm/DrmManagerClient;->watchingDrmRingtoneStatus(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public watchingDrmRingtoneStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 2259
    const-string v0, "DrmManagerClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter watchingDrmRingtoneStatus uri= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    .line 2261
    iput-object p2, p0, Landroid/drm/DrmManagerClient;->mUri:Ljava/lang/String;

    .line 2262
    new-instance v0, Landroid/drm/DrmManagerClient$6;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient$6;-><init>(Landroid/drm/DrmManagerClient;)V

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$6;->start()V

    .line 2300
    return-void
.end method

.method public watchingDrmWallpaperStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "filepath"

    .prologue
    .line 1811
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    .line 1812
    iput-object p2, p0, Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;

    .line 1814
    new-instance v0, Landroid/drm/DrmManagerClient$5;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient$5;-><init>(Landroid/drm/DrmManagerClient;)V

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$5;->start()V

    .line 1919
    return-void
.end method
