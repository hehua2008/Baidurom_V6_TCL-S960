.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$ListenerDelegate;,
        Landroid/hardware/SystemSensorManager$SensorThread;
    }
.end annotation


# static fields
.field private static MagUsed_OriUsed:I = 0x0

.field private static final SENSOR_DISABLE:I = -0x1

.field private static SensorFirstUsed:Z

.field private static callerPid:I

.field private static first_time_stamp:J

.field private static sFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static sHandleToSensor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static final sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/SystemSensorManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field static sPool:Landroid/hardware/SensorManager$SensorEventPool;

.field private static sQueue:I

.field private static sSensorModuleInitialized:Z

.field private static sSensorThread:Landroid/hardware/SystemSensorManager$SensorThread;


# instance fields
.field final mAppContextImpl:Landroid/content/Context;

.field final mMainLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    sput-boolean v2, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    .line 72
    sput-boolean v2, Landroid/hardware/SystemSensorManager;->SensorFirstUsed:Z

    .line 73
    sput v2, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    .line 74
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/hardware/SystemSensorManager;->first_time_stamp:J

    .line 75
    sput v2, Landroid/hardware/SystemSensorManager;->callerPid:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6
    .parameter "context"
    .parameter "mainLooper"

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 373
    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mAppContextImpl:Landroid/content/Context;

    .line 374
    iput-object p2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 376
    sget-object v4, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 377
    :try_start_0
    sget-boolean v3, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    if-nez v3, :cond_2

    .line 378
    const/4 v3, 0x1

    sput-boolean v3, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 380
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V

    .line 383
    invoke-static {}, Landroid/hardware/SystemSensorManager;->sensors_module_init()I

    .line 384
    sget-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 385
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .line 387
    .local v1, i:I
    :cond_0
    new-instance v2, Landroid/hardware/Sensor;

    invoke-direct {v2}, Landroid/hardware/Sensor;-><init>()V

    .line 388
    .local v2, sensor:Landroid/hardware/Sensor;
    invoke-static {v2, v1}, Landroid/hardware/SystemSensorManager;->sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I

    move-result v1

    .line 390
    if-ltz v1, :cond_1

    .line 393
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v3, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 396
    :cond_1
    if-gtz v1, :cond_0

    .line 398
    new-instance v3, Landroid/hardware/SensorManager$SensorEventPool;

    sget-object v5, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v5}, Landroid/hardware/SensorManager$SensorEventPool;-><init>(I)V

    sput-object v3, Landroid/hardware/SystemSensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    .line 399
    new-instance v3, Landroid/hardware/SystemSensorManager$SensorThread;

    invoke-direct {v3}, Landroid/hardware/SystemSensorManager$SensorThread;-><init>()V

    sput-object v3, Landroid/hardware/SystemSensorManager;->sSensorThread:Landroid/hardware/SystemSensorManager$SensorThread;

    .line 401
    .end local v0           #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .end local v1           #i:I
    .end local v2           #sensor:Landroid/hardware/Sensor;
    :cond_2
    monitor-exit v4

    .line 402
    return-void

    .line 401
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 6
    .parameter "mainLooper"

    .prologue
    .line 404
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 405
    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 406
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/hardware/SystemSensorManager;->mAppContextImpl:Landroid/content/Context;

    .line 408
    sget-object v4, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 409
    :try_start_0
    sget-boolean v3, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    if-nez v3, :cond_2

    .line 410
    const/4 v3, 0x1

    sput-boolean v3, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 412
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V

    .line 415
    invoke-static {}, Landroid/hardware/SystemSensorManager;->sensors_module_init()I

    .line 416
    sget-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 417
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .line 419
    .local v1, i:I
    :cond_0
    new-instance v2, Landroid/hardware/Sensor;

    invoke-direct {v2}, Landroid/hardware/Sensor;-><init>()V

    .line 420
    .local v2, sensor:Landroid/hardware/Sensor;
    invoke-static {v2, v1}, Landroid/hardware/SystemSensorManager;->sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I

    move-result v1

    .line 422
    if-ltz v1, :cond_1

    .line 425
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    sget-object v3, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 428
    :cond_1
    if-gtz v1, :cond_0

    .line 430
    new-instance v3, Landroid/hardware/SensorManager$SensorEventPool;

    sget-object v5, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v5}, Landroid/hardware/SensorManager$SensorEventPool;-><init>(I)V

    sput-object v3, Landroid/hardware/SystemSensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    .line 431
    new-instance v3, Landroid/hardware/SystemSensorManager$SensorThread;

    invoke-direct {v3}, Landroid/hardware/SystemSensorManager$SensorThread;-><init>()V

    sput-object v3, Landroid/hardware/SystemSensorManager;->sSensorThread:Landroid/hardware/SystemSensorManager$SensorThread;

    .line 433
    .end local v0           #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .end local v1           #i:I
    .end local v2           #sensor:Landroid/hardware/Sensor;
    :cond_2
    monitor-exit v4

    .line 434
    return-void

    .line 433
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 50
    sget v0, Landroid/hardware/SystemSensorManager;->sQueue:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    sput p0, Landroid/hardware/SystemSensorManager;->sQueue:I

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Landroid/hardware/SystemSensorManager;->SensorFirstUsed:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    sput-boolean p0, Landroid/hardware/SystemSensorManager;->SensorFirstUsed:Z

    return p0
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 50
    sget-wide v0, Landroid/hardware/SystemSensorManager;->first_time_stamp:J

    return-wide v0
.end method

.method static synthetic access$400(Landroid/hardware/SystemSensorManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->needToast()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 50
    sget v0, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    return v0
.end method

.method private disableSensorLocked(Landroid/hardware/Sensor;)Z
    .locals 8
    .parameter "sensor"

    .prologue
    const/4 v5, 0x1

    .line 470
    const/4 v4, 0x0

    .line 471
    .local v4, result:Z
    sget-object v6, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 472
    .local v1, i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 490
    .end local v1           #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :goto_0
    return v5

    .line 477
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 479
    .local v0, handle:I
    sget v6, Landroid/hardware/SystemSensorManager;->sQueue:I

    const/4 v7, -0x1

    invoke-static {v6, v3, v0, v7}, Landroid/hardware/SystemSensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v4

    .line 481
    if-ne v4, v5, :cond_3

    .line 482
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 483
    sget v5, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    and-int/lit8 v5, v5, 0x2

    sput v5, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    .line 487
    :cond_2
    :goto_1
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disableSensorLocked MagUsed_OriUsed ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v5, v4

    .line 490
    goto :goto_0

    .line 484
    :cond_4
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 485
    sget v5, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    and-int/lit8 v5, v5, 0x1

    sput v5, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    goto :goto_1
.end method

.method private enableSensorLocked(Landroid/hardware/Sensor;I)Z
    .locals 8
    .parameter "sensor"
    .parameter "delay"

    .prologue
    const/4 v7, 0x1

    .line 443
    const/4 v4, 0x0

    .line 444
    .local v4, result:Z
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 445
    .local v1, i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 446
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 448
    .local v0, handle:I
    sget v5, Landroid/hardware/SystemSensorManager;->sQueue:I

    invoke-static {v5, v3, v0, p2}, Landroid/hardware/SystemSensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v4

    .line 453
    .end local v0           #handle:I
    .end local v1           #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    if-ne v4, v7, :cond_3

    .line 454
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 455
    sput-boolean v7, Landroid/hardware/SystemSensorManager;->SensorFirstUsed:Z

    .line 456
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sput-wide v5, Landroid/hardware/SystemSensorManager;->first_time_stamp:J

    .line 457
    sget v5, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    or-int/lit8 v5, v5, 0x1

    sput v5, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    .line 463
    :cond_2
    :goto_0
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableSensorLocked MagUsed_OriUsed ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_3
    return v4

    .line 458
    :cond_4
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 459
    sput-boolean v7, Landroid/hardware/SystemSensorManager;->SensorFirstUsed:Z

    .line 460
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sput-wide v5, Landroid/hardware/SystemSensorManager;->first_time_stamp:J

    .line 461
    sget v5, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    or-int/lit8 v5, v5, 0x2

    sput v5, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    goto :goto_0
.end method

.method private getCurProcessName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "callerPid"

    .prologue
    .line 80
    move v3, p2

    .line 81
    .local v3, pid:I
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 82
    .local v2, mActivityManager:Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 83
    .local v0, appProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v3, :cond_0

    .line 85
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 88
    .end local v0           #appProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static native nativeClassInit()V
.end method

.method private needToast()Z
    .locals 5

    .prologue
    .line 93
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    sput v2, Landroid/hardware/SystemSensorManager;->callerPid:I

    .line 94
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mAppContextImpl:Landroid/content/Context;

    sget v3, Landroid/hardware/SystemSensorManager;->callerPid:I

    invoke-direct {p0, v2, v3}, Landroid/hardware/SystemSensorManager;->getCurProcessName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, callerName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 96
    .local v1, needtoast:Z
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caller name ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v2, "compass"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "zhinanzhen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    :cond_0
    const/4 v1, 0x1

    .line 104
    :cond_1
    return v1
.end method

.method static native sensors_create_queue()I
.end method

.method static native sensors_data_poll(I[F[I[J)I
.end method

.method static native sensors_destroy_queue(I)V
.end method

.method static native sensors_enable_sensor(ILjava/lang/String;II)Z
.end method

.method private static native sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I
.end method

.method private static native sensors_module_init()I
.end method


# virtual methods
.method protected getFullSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    sget-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .locals 7
    .parameter "listener"
    .parameter "sensor"
    .parameter "delay"
    .parameter "handler"

    .prologue
    .line 497
    const/4 v4, 0x1

    .line 498
    .local v4, result:Z
    sget-object v6, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 500
    const/4 v2, 0x0

    .line 501
    .local v2, l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :try_start_0
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 502
    .local v0, i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 503
    move-object v2, v0

    move-object v3, v2

    .line 509
    .end local v0           #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .local v3, l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :goto_0
    if-nez v3, :cond_4

    .line 510
    :try_start_1
    new-instance v2, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    invoke-direct {v2, p0, p1, p2, p4}, Landroid/hardware/SystemSensorManager$ListenerDelegate;-><init>(Landroid/hardware/SystemSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 511
    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :try_start_2
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 514
    sget-object v5, Landroid/hardware/SystemSensorManager;->sSensorThread:Landroid/hardware/SystemSensorManager$SensorThread;

    invoke-virtual {v5}, Landroid/hardware/SystemSensorManager$SensorThread;->startLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 515
    invoke-direct {p0, p2, p3}, Landroid/hardware/SystemSensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 517
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 518
    const/4 v4, 0x0

    .line 537
    :cond_1
    :goto_1
    monitor-exit v6

    .line 539
    return v4

    .line 522
    :cond_2
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 523
    const/4 v4, 0x0

    goto :goto_1

    .line 527
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 529
    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_4
    :try_start_3
    invoke-virtual {v3, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 530
    invoke-virtual {v3, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    .line 531
    invoke-direct {p0, p2, p3}, Landroid/hardware/SystemSensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 533
    invoke-virtual {v3, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 534
    const/4 v4, 0x0

    move-object v2, v3

    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto :goto_1

    .line 537
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :goto_2
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto :goto_2

    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_5
    move-object v2, v3

    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto :goto_1

    :cond_6
    move-object v3, v2

    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto :goto_0
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 7
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 545
    sget-object v6, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 546
    :try_start_0
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 547
    .local v4, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 548
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 549
    .local v2, l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_2

    .line 550
    if-nez p2, :cond_0

    .line 551
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 553
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 554
    .local v3, s:Landroid/hardware/Sensor;
    invoke-direct {p0, v3}, Landroid/hardware/SystemSensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    goto :goto_1

    .line 565
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v3           #s:Landroid/hardware/Sensor;
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 556
    .restart local v0       #i:I
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v4       #size:I
    :cond_0
    :try_start_1
    invoke-virtual {v2, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I

    move-result v5

    if-nez v5, :cond_1

    .line 559
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 560
    invoke-direct {p0, p2}, Landroid/hardware/SystemSensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    .line 565
    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    return-void

    .line 547
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
