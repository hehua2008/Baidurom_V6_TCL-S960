.class public Lcom/android/internal/telephony/UiccCardApplication;
.super Ljava/lang/Object;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/UiccCardApplication$2;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CHANGE_FACILITY_FDN_DONE:I = 0x2

.field private static final EVENT_CHANGE_FACILITY_LOCK_DONE:I = 0x4

.field private static final EVENT_CHANGE_NETWORK_LOCK_DONE:I = 0x66

.field private static final EVENT_QUERY_FACILITY_FDN_DONE:I = 0x1

.field private static final EVENT_QUERY_FACILITY_LOCK_DONE:I = 0x3

.field private static final EVENT_QUERY_NETWORK_LOCK_DONE:I = 0x65

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x67

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_UiccCardApplication"

.field static final UICCCARDAPPLICATION_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;


# instance fields
.field private mAid:Ljava/lang/String;

.field private mAppLabel:Ljava/lang/String;

.field private mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

.field private mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDesiredFdnEnabled:Z

.field private mDesiredPinLocked:Z

.field private mDestroyed:Z

.field private mHandler:Landroid/os/Handler;

.field private mIccFdnEnabled:Z

.field private mIccFh:Lcom/android/internal/telephony/IccFileHandler;

.field private mIccLockEnabled:Z

.field private mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field protected mIccType:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field private mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

.field private mPin1Replaced:Z

.field private mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

.field private mPin2State:Lcom/android/internal/telephony/IccCardStatus$PinState;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field private mReadyRegistrants:Landroid/os/RegistrantList;

.field private mSimId:I

.field private mUiccCard:Lcom/android/internal/telephony/UiccCard;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gsm.ril.uicctype"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gsm.ril.uicctype.2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gsm.ril.uicctype.3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gsm.ril.uicctype.4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/UiccCardApplication;->UICCCARDAPPLICATION_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/UiccCard;Lcom/android/internal/telephony/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .parameter "uiccCard"
    .parameter "as"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccType:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    .line 90
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 91
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 350
    new-instance v0, Lcom/android/internal/telephony/UiccCardApplication$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication$1;-><init>(Lcom/android/internal/telephony/UiccCardApplication;)V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating UiccApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getMySimId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mSimId:I

    .line 101
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .line 102
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .line 103
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .line 104
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    .line 105
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    .line 106
    iget v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1_replaced:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1Replaced:Z

    .line 107
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 108
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 110
    iput-object p3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mContext:Landroid/content/Context;

    .line 111
    iput-object p4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 113
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->createIccFileHandler(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 114
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->createIccRecords(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->queryFdn()V

    .line 117
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->queryPin1State()V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-interface {p4, v0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 121
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/UiccCardApplication;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCardApplication;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCardApplication;->onChangeFdnDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCardApplication;->onQueryFacilityLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCardApplication;->onChangeFacilityLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;)Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    return-object p1
.end method

.method private createIccFileHandler(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/IccFileHandler;
    .locals 3
    .parameter "type"

    .prologue
    .line 204
    sget-object v0, Lcom/android/internal/telephony/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 216
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 206
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 208
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/RuimFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 210
    :pswitch_2
    new-instance v0, Lcom/android/internal/telephony/UsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/UsimFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 212
    :pswitch_3
    new-instance v0, Lcom/android/internal/telephony/CsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/CsimFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 214
    :pswitch_4
    new-instance v0, Lcom/android/internal/telephony/ims/IsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/ims/IsimFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private createIccRecords(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/IccRecords;
    .locals 2
    .parameter "type"
    .parameter "c"
    .parameter "ci"

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createIccRecords, AppType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 191
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_1

    .line 192
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 199
    :goto_0
    return-object v0

    .line 193
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_3

    .line 194
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/cdma/RuimRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 195
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_4

    .line 196
    new-instance v0, Lcom/android/internal/telephony/ims/IsimUiccRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/ims/IsimUiccRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 199
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 772
    const-string v0, "RIL_UiccCardApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 776
    const-string v0, "RIL_UiccCardApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    return-void
.end method

.method private notifyNetworkLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 3
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 523
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    .line 529
    if-nez p1, :cond_2

    .line 530
    const-string v0, "Notifying registrants: NETWORK_LOCKED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 533
    :cond_2
    const-string v0, "Notifying 1 registrant: NETWORK_LOCED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 534
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 3
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 495
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-ne v0, v1, :cond_4

    .line 503
    :cond_3
    const-string v0, "Sanity check failed! APPSTATE is locked while PIN1 is not!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_4
    if-nez p1, :cond_5

    .line 508
    const-string v0, "Notifying registrants: LOCKED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 511
    :cond_5
    const-string v0, "Notifying 1 registrant: LOCKED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 512
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private notifyReadyRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 3
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 468
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-ne v0, v1, :cond_3

    .line 475
    :cond_2
    const-string v0, "Sanity check failed! APPSTATE is ready while PIN1 is not verified!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :cond_3
    if-nez p1, :cond_4

    .line 480
    const-string v0, "Notifying registrants: READY"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 483
    :cond_4
    const-string v0, "Notifying 1 registrant: READY"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 484
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private onChangeFacilityLock(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 337
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 339
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDesiredPinLocked:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccLockEnabled:Z

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_CHANGE_FACILITY_LOCK_DONE: mIccLockEnabled= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccLockEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 345
    :goto_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 346
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 347
    monitor-exit v1

    .line 348
    return-void

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error change facility lock with exception "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onChangeFdnDone(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 265
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 266
    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 267
    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDesiredFdnEnabled:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CHANGE_FACILITY_FDN_DONE: mIccFdnEnabled="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 273
    :goto_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 274
    .local v0, response:Landroid/os/Message;
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 275
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 276
    monitor-exit v2

    .line 277
    return-void

    .line 271
    .end local v0           #response:Landroid/os/Message;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error change facility fdn with exception "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onQueryFacilityLock(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 291
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 292
    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in querying facility lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 294
    monitor-exit v4

    .line 333
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 298
    .local v1, ints:[I
    array-length v2, v1

    if-eqz v2, :cond_4

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query facility lock : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 301
    const/4 v2, 0x0

    aget v2, v1, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccLockEnabled:Z

    .line 303
    iget-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccLockEnabled:Z

    if-eqz v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 313
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$IccCardStatus$PinState:[I

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 332
    :cond_2
    :goto_2
    monitor-exit v4

    goto :goto_0

    .end local v1           #ints:[I
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #ints:[I
    :cond_3
    move v2, v3

    .line 301
    goto :goto_1

    .line 315
    :pswitch_0
    :try_start_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccLockEnabled:Z

    if-eqz v2, :cond_2

    .line 316
    const-string v2, "QUERY_FACILITY_LOCK:enabled GET_SIM_STATUS.Pin1:disabled. Fixme"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 324
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccLockEnabled:Z

    if-nez v2, :cond_2

    .line 325
    const-string v2, "QUERY_FACILITY_LOCK:disabled GET_SIM_STATUS.Pin1:enabled. Fixme"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 330
    :cond_4
    const-string v2, "Bogus facility lock response"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "ar"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 237
    const/4 v1, 0x0

    .line 239
    .local v1, changed:Z
    iget-object v7, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 240
    :try_start_0
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in querying facility lock:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 242
    monitor-exit v7

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object v3, v0

    .line 246
    .local v3, ints:[I
    array-length v4, v3

    if-eqz v4, :cond_5

    .line 247
    const/4 v4, 0x0

    aget v4, v3, v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    if-nez v4, :cond_2

    move v1, v5

    .line 248
    :goto_1
    const/4 v4, 0x0

    aget v4, v3, v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query facility lock : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 253
    :goto_3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    if-eqz v1, :cond_0

    .line 257
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PHB_STATE_FDN_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v2, intent:Landroid/content/Intent;
    const-string/jumbo v4, "simId"

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccCardApplication;->getMySimId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    move v1, v6

    .line 247
    goto :goto_1

    :cond_3
    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    goto :goto_1

    :cond_4
    move v4, v6

    .line 248
    goto :goto_2

    .line 251
    :cond_5
    const-string v4, "Bogus facility lock response"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 253
    .end local v3           #ints:[I
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private queryFdn()V
    .locals 7

    .prologue
    .line 225
    const/4 v3, 0x7

    .line 228
    .local v3, serviceClassX:I
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    const-string v2, ""

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 231
    return-void
.end method

.method private queryPin1State()V
    .locals 7

    .prologue
    .line 281
    const/4 v3, 0x7

    .line 284
    .local v3, serviceClassX:I
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    const-string v2, ""

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 287
    return-void
.end method


# virtual methods
.method public QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "category"
    .parameter "lockop"
    .parameter "password"
    .parameter "data_imsi"
    .parameter "gid1"
    .parameter "gid2"
    .parameter "onComplete"

    .prologue
    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueryIccNetworkLock(): category =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 793
    packed-switch p1, :pswitch_data_0

    .line 802
    const-string v0, "RIL_UiccCardApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueryIccNetworkLock unknown category = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :goto_0
    return-void

    .line 799
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, p7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryNetworkLock(ILandroid/os/Message;)V

    goto :goto_0

    .line 793
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 755
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 756
    :try_start_0
    const-string v0, "changeIccFdnPassword"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v2, p3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 759
    monitor-exit v1

    .line 760
    return-void

    .line 759
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 735
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 736
    :try_start_0
    const-string v0, "changeIccLockPassword"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v2, p3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 739
    monitor-exit v1

    .line 740
    return-void

    .line 739
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dispose()V
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " being Disposed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 183
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 186
    monitor-exit v1

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 558
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccCardType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 764
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/UiccCardApplication;->UICCCARDAPPLICATION_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccCardApplication;->getMySimId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccType:Ljava/lang/String;

    .line 767
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIccCardType(): mIccType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccType:Ljava/lang/String;

    return-object v0
.end method

.method public getIccFdnEnabled()Z
    .locals 2

    .prologue
    .line 662
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 663
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    monitor-exit v1

    return v0

    .line 664
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 2

    .prologue
    .line 573
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    monitor-exit v1

    return-object v0

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccLockEnabled()Z
    .locals 1

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccLockEnabled:Z

    return v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 2

    .prologue
    .line 579
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    monitor-exit v1

    return-object v0

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMySimId()I
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mSimId:I

    return v0
.end method

.method public getPersoSubState()Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    .locals 2

    .prologue
    .line 552
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 553
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    monitor-exit v1

    return-object v0

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPin1State()Lcom/android/internal/telephony/IccCardStatus$PinState;
    .locals 2

    .prologue
    .line 564
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 565
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1Replaced:Z

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getUniversalPinState()Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v0

    monitor-exit v1

    .line 568
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    monitor-exit v1

    goto :goto_0

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getState()Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    .locals 2

    .prologue
    .line 540
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    monitor-exit v1

    return-object v0

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    .locals 2

    .prologue
    .line 546
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    monitor-exit v1

    return-object v0

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 432
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 433
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 434
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 435
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 436
    monitor-exit v2

    .line 437
    return-void

    .line 436
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 449
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 450
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 451
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 452
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyNetworkLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 453
    monitor-exit v2

    .line 454
    return-void

    .line 453
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 415
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 416
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 417
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 418
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyReadyRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 419
    monitor-exit v2

    .line 420
    return-void

    .line 419
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 707
    iget-object v7, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 709
    const/16 v4, 0xf

    .line 714
    .local v4, serviceClassX:I
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDesiredFdnEnabled:Z

    .line 716
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 719
    monitor-exit v7

    .line 720
    return-void

    .line 719
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 680
    iget-object v7, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 682
    const/4 v4, 0x7

    .line 686
    .local v4, serviceClassX:I
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDesiredPinLocked:Z

    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 691
    monitor-exit v7

    .line 692
    return-void

    .line 691
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "category"
    .parameter "lockop"
    .parameter "password"
    .parameter "data_imsi"
    .parameter "gid1"
    .parameter "gid2"
    .parameter "onComplete"

    .prologue
    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetIccNetworkEnabled(): category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lockop = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " password = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data_imsi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gid1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gid2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 818
    packed-switch p2, :pswitch_data_0

    .line 827
    const-string v0, "RIL_UiccCardApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetIccNetworkEnabled unknown operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :goto_0
    return-void

    .line 824
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2, p7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 818
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 629
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 630
    :try_start_0
    const-string/jumbo v0, "supplyNetworkDepersonalization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 632
    monitor-exit v1

    .line 633
    return-void

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 605
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 606
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 607
    monitor-exit v1

    .line 608
    return-void

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 617
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 619
    monitor-exit v1

    .line 620
    return-void

    .line 619
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    .line 611
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 613
    monitor-exit v1

    .line 614
    return-void

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    .line 623
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 625
    monitor-exit v1

    .line 626
    return-void

    .line 625
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 440
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 442
    monitor-exit v1

    .line 443
    return-void

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 457
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 459
    monitor-exit v1

    .line 460
    return-void

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForReady(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 423
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 425
    monitor-exit v1

    .line 426
    return-void

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method update(Lcom/android/internal/telephony/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .parameter "as"
    .parameter "c"
    .parameter "ci"

    .prologue
    .line 124
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 125
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    if-eqz v3, :cond_0

    .line 126
    const-string v3, "Application updated after destroyed! Fix me!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V

    .line 127
    monitor-exit v4

    .line 175
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " update. New "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 131
    iput-object p2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mContext:Landroid/content/Context;

    .line 132
    iput-object p3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 133
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .line 134
    .local v1, oldAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .line 135
    .local v0, oldAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .line 136
    .local v2, oldPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .line 137
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .line 138
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .line 139
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    .line 140
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    .line 141
    iget v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1_replaced:I

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1Replaced:Z

    .line 142
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 143
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 145
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-eq v3, v1, :cond_3

    .line 146
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 147
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 148
    :cond_2
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCardApplication;->createIccFileHandler(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 149
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v3, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->createIccRecords(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 157
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPersoSubState: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " oldPersoSubState: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 158
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    if-eq v3, v2, :cond_4

    .line 160
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCardApplication;->notifyNetworkLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 163
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-eq v3, v0, :cond_6

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " changed state: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 167
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    sget-object v5, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-ne v3, v5, :cond_5

    .line 168
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->queryFdn()V

    .line 169
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->queryPin1State()V

    .line 171
    :cond_5
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCardApplication;->notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 172
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCardApplication;->notifyReadyRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 174
    :cond_6
    monitor-exit v4

    goto/16 :goto_0

    .end local v0           #oldAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    .end local v1           #oldAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    .end local v2           #oldPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 141
    .restart local v0       #oldAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    .restart local v1       #oldAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    .restart local v2       #oldPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1
.end method
