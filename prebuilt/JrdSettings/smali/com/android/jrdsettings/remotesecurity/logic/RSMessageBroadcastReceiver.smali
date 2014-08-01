.class public Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RSMessageBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;
    }
.end annotation


# static fields
.field private static final MESSAGEDELAYEDTIME:I = 0x2710

.field private static final MSGSENDTEXTMESSAGE:I = 0x10001

.field private static final MTP_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "RSMessageBroadcastReceiver"

.field private static mFormating:Z

.field private static sSimState:I

.field private static sStorageManager:Landroid/os/storage/StorageManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHanlder:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mRSPhoneStateListener_SIM_1:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;

.field private mRSPhoneStateListener_SIM_2:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;

.field private mSdVolume:Landroid/os/storage/StorageVolume;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    const/4 v0, -0x1

    sput v0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->sSimState:I

    .line 96
    sput-boolean v2, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mFormating:Z

    .line 100
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mtp_transfer_file_path"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->MTP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mSdVolume:Landroid/os/storage/StorageVolume;

    .line 183
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$1;-><init>(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mHanlder:Landroid/os/Handler;

    .line 639
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mHanlder:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;Landroid/content/Context;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->isNewSIM(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->doSendSIMInfo(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;)Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mRSPhoneStateListener_SIM_1:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;)Lcom/mediatek/telephony/TelephonyManagerEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;)Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mRSPhoneStateListener_SIM_2:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;

    return-object v0
.end method

.method private doErasingPhoneData(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 530
    const-string v0, "RSMessageBroadcastReceiver"

    const-string v1, "doErasingPhoneData"

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 532
    return-void
.end method

.method private doErasingSDData(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 538
    const-string v6, "RSMessageBroadcastReceiver"

    const-string v7, "doErasingSDData"

    invoke-static {v6, v7}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const/4 v2, 0x0

    .line 540
    .local v2, mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v3

    .line 541
    .local v3, storageManager:Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/storage/StorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v4

    .line 542
    .local v4, storagePath:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 544
    .local v5, volumes:[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_0

    .line 545
    const-string v6, "RSMessageBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "storagePath ==== "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v6, "RSMessageBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "volumes[i].getPath()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v0

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    aget-object v6, v5, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 548
    aget-object v2, v5, v0

    .line 549
    const-string v6, "RSMessageBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mStorageVolume.gePath ==== "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .local v1, intent:Landroid/content/Intent;
    sget-object v6, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 558
    const-string v6, "storage_volume"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 559
    const-string v6, "RSMessageBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mStorageVolume ==== "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v6, "RSMessageBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mStorageVolume.gePath.startService ==== "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 563
    return-void

    .line 544
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private doLocatingPhone(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 473
    const-string v1, "RSMessageBroadcastReceiver"

    const-string v2, "doLocatingPhone"

    invoke-static {v1, v2}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/jrdsettings/remotesecurity/service/LocationService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 475
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 476
    return-void
.end method

.method private doLockPhone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "lock_pwd"

    .prologue
    const/4 v6, 0x1

    .line 482
    const-string v3, "RSMessageBroadcastReceiver"

    const-string v4, "doLockPhone"

    invoke-static {v3, v4}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v3, "RSMessageBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lock_pwd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;

    const/4 v3, 0x0

    const-string v4, "phone/commandstatus"

    invoke-direct {v0, p1, v3, v4}, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 487
    .local v0, commandStatusRequest:Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;->setmCmdId(I)V

    .line 488
    invoke-virtual {v0, v6}, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;->setmStatus(I)V

    .line 489
    invoke-virtual {v0}, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->sendHttpRequest()V

    .line 490
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 491
    invoke-direct {p0, p2}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->setLockPassword(Ljava/lang/String;)V

    .line 492
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;

    invoke-direct {v1, p1}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;-><init>(Landroid/content/Context;)V

    .line 493
    .local v1, rsdbHelper:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 494
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "rs_lock_password_state"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    invoke-virtual {v1, v2}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->addOrUpdate(Landroid/content/ContentValues;)V

    .line 497
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->lockNow(Landroid/content/Context;)V

    .line 498
    return-void
.end method

.method private doMakePhoneScream(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 445
    const-string v2, "RSMessageBroadcastReceiver"

    const-string v3, "doMakePhoneScream"

    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;

    const/4 v2, 0x0

    const-string v3, "phone/commandstatus"

    invoke-direct {v0, p1, v2, v3}, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 448
    .local v0, commandStatusRequest:Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;
    invoke-virtual {v0, v4}, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;->setmCmdId(I)V

    .line 449
    invoke-virtual {v0, v4}, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;->setmStatus(I)V

    .line 450
    invoke-virtual {v0}, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->sendHttpRequest()V

    .line 451
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 452
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 453
    return-void
.end method

.method private doPopUpMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "emergency_num"
    .parameter "message"

    .prologue
    .line 460
    const-string v1, "RSMessageBroadcastReceiver"

    const-string v2, "doPopUpMessage"

    invoke-static {v1, v2}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v1, "RSMessageBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "emergency_num="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/jrdsettings/remotesecurity/PopActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 463
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 464
    const-string v1, "emergency_num"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-string v1, "message"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 467
    return-void
.end method

.method private doSendSIMInfo(Landroid/content/Context;I)V
    .locals 11
    .parameter "context"
    .parameter "simId"

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 581
    const-string v4, "RSMessageBroadcastReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doSendSIMInfo send begin simId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v10, v4, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 584
    .local v5, mPI:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 585
    .local v0, smsManager:Landroid/telephony/SmsManager;
    new-instance v6, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;

    invoke-direct {v6, p1}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;-><init>(Landroid/content/Context;)V

    .line 586
    .local v6, db:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    const-string v4, "sec_number"

    invoke-virtual {v6, v4}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, sec_number:Ljava/lang/String;
    const-string v4, "phone_name"

    invoke-virtual {v6, v4}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 588
    .local v7, phone_name:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Your <"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "> SIM card is changed"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 589
    .local v3, message:Ljava/lang/String;
    const-string v4, "RSMessageBroadcastReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doSendSIMInfo send sec_number="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v4, "RSMessageBroadcastReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doSendSIMInfo send message ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    .line 591
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 601
    const-string v2, "RSMessageBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doSendSIMInfo send end simId="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method private doTakePhoto(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 569
    const-string v1, "RSMessageBroadcastReceiver"

    const-string v2, "doTakePhoto begin"

    invoke-static {v1, v2}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 572
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 573
    const-string v1, "RSMessageBroadcastReceiver"

    const-string v2, "doTakePhoto end"

    invoke-static {v1, v2}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method private getMtpPath()Ljava/lang/String;
    .locals 8

    .prologue
    .line 106
    const/4 v6, 0x0

    .line 107
    .local v6, cur:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 109
    .local v7, path:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/provider/MediaStore;->getMtpTransferFileUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->MTP_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 111
    if-eqz v6, :cond_1

    .line 112
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 113
    :cond_0
    const-string v0, "RSMessageBroadcastReceiver"

    const-string v1, "no record or more than one record"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v7, "ERROR"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 122
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_2
    return-object v7

    .line 116
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 117
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 122
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getMtpStatus()Z
    .locals 3

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->getMtpPath()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, mtpPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mSdVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const/4 v1, 0x1

    .line 136
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getStorageManager()Landroid/os/storage/StorageManager;
    .locals 3

    .prologue
    .line 85
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->sStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 87
    :try_start_0
    new-instance v1, Landroid/os/storage/StorageManager;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/storage/StorageManager;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->sStorageManager:Landroid/os/storage/StorageManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .local v0, e:Landroid/os/RemoteException;
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->sStorageManager:Landroid/os/storage/StorageManager;

    return-object v1

    .line 88
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 89
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private isExSdcardInserted()Z
    .locals 8

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, hassdcard:Z
    :try_start_0
    invoke-static {}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v5

    .line 144
    .local v5, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 145
    .local v6, volumes:[Landroid/os/storage/StorageVolume;
    array-length v2, v6

    .line 146
    .local v2, length:I
    if-lez v2, :cond_2

    .line 148
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 150
    aget-object v7, v6, v1

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, path:Ljava/lang/String;
    invoke-virtual {v5, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, status:Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 157
    aget-object v7, v6, v1

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 160
    aget-object v7, v6, v1

    iput-object v7, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mSdVolume:Landroid/os/storage/StorageVolume;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    const/4 v0, 0x1

    .line 176
    .end local v0           #hassdcard:Z
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #status:Ljava/lang/String;
    .end local v5           #storageManager:Landroid/os/storage/StorageManager;
    .end local v6           #volumes:[Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_1
    return v0

    .line 148
    .restart local v0       #hassdcard:Z
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v3       #path:Ljava/lang/String;
    .restart local v4       #status:Ljava/lang/String;
    .restart local v5       #storageManager:Landroid/os/storage/StorageManager;
    .restart local v6       #volumes:[Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #status:Ljava/lang/String;
    .end local v5           #storageManager:Landroid/os/storage/StorageManager;
    .end local v6           #volumes:[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v7

    .line 176
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isNewSIM(Landroid/content/Context;I)Z
    .locals 11
    .parameter "context"
    .parameter "simId"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 612
    const-string v8, "RSMessageBroadcastReceiver"

    const-string v9, "isNewSIM"

    invoke-static {v8, v9}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-static {p1, p2}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 614
    .local v5, subscriberId:Ljava/lang/String;
    const-string v8, "RSMessageBroadcastReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "subscriberId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-static {v5}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->isValidString(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 636
    :cond_0
    :goto_0
    return v6

    .line 618
    :cond_1
    new-instance v2, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;

    invoke-direct {v2, p1}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;-><init>(Landroid/content/Context;)V

    .line 619
    .local v2, rsdbHelper:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    const-string v8, "sim_serial_number"

    invoke-virtual {v2, v8}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 621
    .local v3, sim_serial_number:Ljava/lang/String;
    const-string v8, "RSMessageBroadcastReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "db sim_serial_number="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-static {v3}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->isValidString(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 623
    const-string v8, ";"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 625
    .local v4, sim_serial_numbers:[Ljava/lang/String;
    array-length v1, v4

    .line 626
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 627
    const-string v8, "RSMessageBroadcastReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sim_serial_numbers["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    aget-object v8, v4, v0

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    move v6, v7

    .line 630
    goto :goto_0

    .line 626
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #len:I
    .end local v4           #sim_serial_numbers:[Ljava/lang/String;
    :cond_3
    move v6, v7

    .line 634
    goto :goto_0
.end method

.method private lockNow(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 520
    const-string v1, "RSMessageBroadcastReceiver"

    const-string v2, "lock now"

    invoke-static {v1, v2}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 523
    .local v0, mPowerManager:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 524
    return-void
.end method

.method private setLockPassword(Ljava/lang/String;)V
    .locals 5
    .parameter "password"

    .prologue
    const/4 v4, 0x0

    .line 504
    const/high16 v1, 0x2

    .line 505
    .local v1, mRequestedQuality:I
    const-string v2, "RSMessageBroadcastReceiver"

    const-string v3, "setLockPassword"

    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, isFallback:Z
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 510
    const-string v2, "RSMessageBroadcastReceiver"

    const-string v3, "The old password should be cleared if it exists."

    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZLjava/lang/String;)V

    .line 513
    const-string v2, "RSMessageBroadcastReceiver"

    const-string v3, "The new password is saved."

    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 33
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 217
    const-string v29, "cmd"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 218
    .local v6, cmd:I
    const-string v29, "RSMessageBroadcastReceiver"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "intent.getAction()="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ";cmd="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, action:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 223
    const-string v29, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 224
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 235
    const/16 v23, 0x0

    .line 238
    .local v23, settingContext:Landroid/content/Context;
    :try_start_0
    const-string v29, "com.android.jrdsettings"

    const/16 v30, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 246
    :goto_0
    if-eqz v23, :cond_0

    .line 248
    new-instance v10, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;-><init>(Landroid/content/Context;)V

    .line 249
    .local v10, db:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    const-string v29, "rs_state"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getIntValue(Ljava/lang/String;)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    const/16 v25, 0x1

    .line 251
    .local v25, state:Z
    :goto_1
    new-instance v22, Landroid/content/ComponentName;

    const-class v29, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .local v22, receiver:Landroid/content/ComponentName;
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 253
    .local v21, pm:Landroid/content/pm/PackageManager;
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0c0011

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    .line 254
    .local v13, fineMeBackEnable:Z
    if-eqz v13, :cond_2

    if-eqz v25, :cond_2

    .line 256
    const/16 v29, 0x1

    const/16 v30, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 439
    .end local v10           #db:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    .end local v13           #fineMeBackEnable:Z
    .end local v21           #pm:Landroid/content/pm/PackageManager;
    .end local v22           #receiver:Landroid/content/ComponentName;
    .end local v23           #settingContext:Landroid/content/Context;
    .end local v25           #state:Z
    :cond_0
    :goto_2
    return-void

    .line 241
    .restart local v23       #settingContext:Landroid/content/Context;
    :catch_0
    move-exception v11

    .line 243
    .local v11, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v29, "RSMessageBroadcastReceiver"

    const-string v30, "setting context can not found"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    .end local v11           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10       #db:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    :cond_1
    const/16 v25, 0x0

    goto :goto_1

    .line 262
    .restart local v13       #fineMeBackEnable:Z
    .restart local v21       #pm:Landroid/content/pm/PackageManager;
    .restart local v22       #receiver:Landroid/content/ComponentName;
    .restart local v25       #state:Z
    :cond_2
    const/16 v29, 0x2

    const/16 v30, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_2

    .line 269
    .end local v10           #db:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    .end local v13           #fineMeBackEnable:Z
    .end local v21           #pm:Landroid/content/pm/PackageManager;
    .end local v22           #receiver:Landroid/content/ComponentName;
    .end local v23           #settingContext:Landroid/content/Context;
    .end local v25           #state:Z
    :cond_3
    const-string v29, "android.intent.action.VERIFY_PASSWORD"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 271
    new-instance v10, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;-><init>(Landroid/content/Context;)V

    .line 272
    .restart local v10       #db:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    const-string v29, "is_password_correct"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 274
    .local v15, isPasswordCorrect:Z
    const-string v29, "rs_lock_password_error_times"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getIntValue(Ljava/lang/String;)I

    move-result v29

    add-int/lit8 v26, v29, 0x1

    .line 276
    .local v26, times:I
    const-string v29, "rs_lock_password_state"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getIntValue(Ljava/lang/String;)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    const/16 v16, 0x1

    .line 280
    .local v16, isSer_password:Z
    :goto_3
    if-nez v15, :cond_7

    .line 283
    if-eqz v16, :cond_5

    .line 285
    invoke-direct/range {p0 .. p1}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->doTakePhoto(Landroid/content/Context;)V

    goto :goto_2

    .line 276
    .end local v16           #isSer_password:Z
    :cond_4
    const/16 v16, 0x0

    goto :goto_3

    .line 288
    .restart local v16       #isSer_password:Z
    :cond_5
    const/16 v29, 0x3

    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_6

    .line 289
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 290
    .local v28, values:Landroid/content/ContentValues;
    const-string v29, "rs_lock_password_error_times"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->addOrUpdate(Landroid/content/ContentValues;)V

    goto :goto_2

    .line 296
    .end local v28           #values:Landroid/content/ContentValues;
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->doTakePhoto(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 302
    :cond_7
    const/16 v29, 0x1

    move/from16 v0, v29

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    if-eqz v16, :cond_0

    .line 303
    :cond_8
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 304
    .restart local v28       #values:Landroid/content/ContentValues;
    const-string v29, "rs_lock_password_error_times"

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    const-string v29, "rs_lock_password_state"

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->addOrUpdate(Landroid/content/ContentValues;)V

    goto/16 :goto_2

    .line 315
    .end local v10           #db:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    .end local v15           #isPasswordCorrect:Z
    .end local v16           #isSer_password:Z
    .end local v26           #times:I
    .end local v28           #values:Landroid/content/ContentValues;
    :cond_9
    const-string v29, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 317
    const-string v29, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/telephony/TelephonyManager;

    .line 318
    .local v27, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v25

    .line 320
    .local v25, state:I
    const-string v29, "simId"

    const/16 v30, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 322
    .local v24, simId:I
    const/16 v20, 0x0

    .line 323
    .local v20, needSendMessage:Z
    sget v29, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->sSimState:I

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_a

    const/16 v29, 0x5

    move/from16 v0, v25

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 325
    const/16 v20, 0x1

    .line 328
    :cond_a
    if-eqz v20, :cond_b

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mHanlder:Landroid/os/Handler;

    move-object/from16 v29, v0

    const v30, 0x10001

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->removeMessages(I)V

    .line 331
    new-instance v18, Landroid/os/Message;

    invoke-direct/range {v18 .. v18}, Landroid/os/Message;-><init>()V

    .line 332
    .local v18, msg:Landroid/os/Message;
    const v29, 0x10001

    move/from16 v0, v29

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->what:I

    .line 333
    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mHanlder:Landroid/os/Handler;

    move-object/from16 v29, v0

    const-wide/16 v30, 0x2710

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 337
    .end local v18           #msg:Landroid/os/Message;
    :cond_b
    sput v25, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->sSimState:I

    goto/16 :goto_2

    .line 342
    .end local v20           #needSendMessage:Z
    .end local v24           #simId:I
    .end local v25           #state:I
    .end local v27           #tm:Landroid/telephony/TelephonyManager;
    :cond_c
    const-string v29, "android.intent.action.MEDIA_MOUNTED"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_d

    const-string v29, "android.intent.action.MEDIA_SCANNER_STARTED"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_d

    const-string v29, "android.intent.action.MEDIA_SCANNER_FINISHED"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 348
    :cond_d
    sget-boolean v29, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mFormating:Z

    if-eqz v29, :cond_0

    .line 350
    const/16 v29, 0x0

    sput-boolean v29, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mFormating:Z

    .line 351
    invoke-direct/range {p0 .. p1}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->doErasingPhoneData(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 357
    :cond_e
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_2

    .line 360
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->doMakePhoneScream(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 364
    :pswitch_1
    new-instance v7, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;

    const/16 v29, 0x0

    const-string v30, "phone/commandstatus"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v7, v0, v1, v2}, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 366
    .local v7, commandStatusRequest:Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;
    const/16 v29, 0x2

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;->setmCmdId(I)V

    .line 367
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;->setmStatus(I)V

    .line 369
    invoke-virtual {v7}, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->sendHttpRequest()V

    goto/16 :goto_2

    .line 373
    .end local v7           #commandStatusRequest:Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;
    :pswitch_2
    const-string v29, "lock_pwd"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->doLockPhone(Landroid/content/Context;Ljava/lang/String;)V

    .line 375
    const-string v29, "emergency_num"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 377
    .local v12, emergencyNumber:Ljava/lang/String;
    const-string v29, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 379
    .local v17, message:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->isValidString(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_f

    invoke-static/range {v17 .. v17}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->isValidString(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 381
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v12, v2}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->doPopUpMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_10
    new-instance v8, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;

    const/16 v29, 0x0

    const-string v30, "phone/commandstatus"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v8, v0, v1, v2}, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 385
    .local v8, commandStatusRequest1:Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;
    const/16 v29, 0x4

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;->setmCmdId(I)V

    .line 386
    const/16 v29, 0x2

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;->setmStatus(I)V

    .line 387
    invoke-virtual {v8}, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->sendHttpRequest()V

    goto/16 :goto_2

    .line 391
    .end local v8           #commandStatusRequest1:Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;
    .end local v12           #emergencyNumber:Ljava/lang/String;
    .end local v17           #message:Ljava/lang/String;
    :pswitch_3
    const-string v29, "RSMessageBroadcastReceiver"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "key_format_sd ======== "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "format_sd"

    const/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v29, "RSMessageBroadcastReceiver"

    const-string v30, "CommonUtilities.FORMAT_SD ==== 1"

    invoke-static/range {v29 .. v30}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v29, "persist.sys.saveInStorage"

    const-string v30, "0"

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->isExSdcardInserted()Z

    move-result v5

    .line 408
    .local v5, bSdExist:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->getMtpStatus()Z

    move-result v19

    .line 409
    .local v19, mtpStatus:Z
    if-eqz v5, :cond_11

    if-nez v19, :cond_11

    .line 411
    const/16 v29, 0x1

    sput-boolean v29, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mFormating:Z

    .line 413
    new-instance v14, Landroid/content/Intent;

    const-string v29, "com.android.internal.os.storage.FORMAT_ONLY"

    move-object/from16 v0, v29

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v14, formatintent:Landroid/content/Intent;
    sget-object v29, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 415
    const-string v29, "storage_volume"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mSdVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 424
    .end local v14           #formatintent:Landroid/content/Intent;
    :goto_4
    new-instance v9, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;

    const/16 v29, 0x0

    const-string v30, "phone/commandstatus"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v9, v0, v1, v2}, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 426
    .local v9, commandStatusRequest2:Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;
    const/16 v29, 0x5

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;->setmCmdId(I)V

    .line 427
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;->setmStatus(I)V

    .line 428
    invoke-virtual {v9}, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->sendHttpRequest()V

    goto/16 :goto_2

    .line 420
    .end local v9           #commandStatusRequest2:Lcom/android/jrdsettings/remotesecurity/logic/request/CommandStatusRequest;
    :cond_11
    invoke-direct/range {p0 .. p1}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->doErasingPhoneData(Landroid/content/Context;)V

    goto :goto_4

    .line 432
    .end local v5           #bSdExist:Z
    .end local v19           #mtpStatus:Z
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->doLocatingPhone(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
